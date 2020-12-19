import Foundation
import ArgumentParser
import Rainbow
import SwiftyTextTable

struct PackageResult: Codable {
    let packageURL: String
    let packageName: String
    let repositoryName: String
    let summary: String?
    let packageId: String

    var githubURL: String {
      "https://github.com\(packageURL)"
    }
}

struct PackageList: Codable {
  let hasMoreResults: Bool
  let results: [PackageResult]
}

struct SPMSearch: ParsableCommand {
    @Argument(help: "The package search query.")
    var query: String

    @Option(name: .shortAndLong, help: "Show package summaries.")
    var verbose: Bool = false

    private func printPackageList(packageList: PackageList) -> Void {
      let name = TextTableColumn(header: "Name")
      let summary = TextTableColumn(header: "Summary")
      let url = TextTableColumn(header: "URL")
      var columns = [name, url]
      if verbose {
        columns.append(summary)
      }
      var table = TextTable(columns: columns)
      packageList.results.forEach { result in 
        var values = [result.packageName.green, result.githubURL.blue]
        if verbose {
          values.append(result.summary ?? "No summary found.")
        }
        table.addRow(values: values)
      }
      let tableString = table.render()
      print(tableString)
    }

    private func fetchPackageData() -> PackageList {
      var packageList: PackageList!

      let semaphore = DispatchSemaphore(value: 0)
      let url = URL(string: "https://swiftpackageindex.com/api/search?query=\(query)")!
      let task = URLSession.shared.dataTask(with: url) { (data, _, _) in
        packageList = try! JSONDecoder().decode(PackageList.self, from: data!)
          semaphore.signal()
      }

      task.resume()
      semaphore.wait()

      return packageList
    }

    mutating func run() throws {
      printPackageList(packageList: fetchPackageData())
    }
}

SPMSearch.main()

