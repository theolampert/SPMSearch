# SPMSearch

Search SPM packages from the command line using the [Swift Package Index](https://swiftpackageindex.com/).

#### Installing:

##### With Homebrew:
```
brew install theolampert/formulae/spmsearch
```

##### From release tab:

```
curl -L https://github.com/theolampert/SPMSearch/releases/download/0.2.0/spmsearch > spmsearch
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
USAGE: spm-search <query> [--verbose]

ARGUMENTS:
  <query>                 The package search query. 

OPTIONS:
  -v, --verbose           Show package summaries. 
  -h, --help              Show help information.
```

#### Example Output:
```
spmsearch vapor

+------------------------+-------------------------------------------------+
| Name                   | URL                                             |
+------------------------+-------------------------------------------------+
| vapor                  | https://github.com/vapor/vapor                  |
| Sockets                | https://github.com/vapor-community/sockets      |
| fluent                 | https://github.com/vapor/fluent                 |
| http-kit               | https://github.com/vapor/http                   |
| redis                  | https://github.com/vapor/redis                  |
| mysql-kit              | https://github.com/vapor/mysql-kit              |
| console-kit            | https://github.com/vapor/console-kit            |
| HTMLKit                | https://github.com/vapor-community/HTMLKit      |
| jwt                    | https://github.com/vapor/jwt                    |
| SteamPress             | https://github.com/brokenhandsio/SteamPress     |
| FluentQuery            | https://github.com/MihaelIsaev/FluentQuery      |
| postgres-nio           | https://github.com/vapor/postgres-nio           |
| leaf                   | https://github.com/vapor/leaf                   |
| sql-kit                | https://github.com/vapor/sql-kit                |
| fluent-sqlite-driver   | https://github.com/vapor/fluent-sqlite-driver   |
| fluent-postgres-driver | https://github.com/vapor/fluent-postgres-driver |
| open-crypto            | https://github.com/vapor/open-crypto            |
| AdminPanel             | https://github.com/nodes-vapor/admin-panel      |
| websocket-kit          | https://github.com/vapor/websocket-kit          |
| postgres-kit           | https://github.com/vapor/postgres-kit           |
+------------------------+-------------------------------------------------+
```
