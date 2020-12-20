# SPMSearch

Search SPM packages from the command line using the [Swift Package Index](https://swiftpackageindex.com/).

#### Installing:

##### With Hmoebrew:
```
brew install theolampert/formulae/spmsearch
```

##### From release tab:

```
curl -L https://github.com/theolampert/SPMSearch/releases/download/0.1.0/spmsearch > spmsearch
chmod +x spmsearch
./spmsearch
cp ./spmsearch /usr/local/bin
```

##### From source:
```
git clone https://github.com/theolampert/SPMSearch
cd SPMSearch && swift build -c release
cp .build/release/spmsearch /usr/local/bin
```

#### Usage:
```
USAGE: spmsearch <query> [--verbose <verbose>]

ARGUMENTS:
  <query>                 The package search query.

OPTIONS:
  -v, --verbose <verbose> Show package summaries. (default: false)
  -h, --help              Show help information.
```
