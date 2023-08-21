# Pure Bedrock

**Pure Bedrock** 是一个Minecraft Bedrock Script API wrapper。 它封装了一套函数式的 Script API (@minecraft/server)，与原版提供的面向象风格的API不同。并且，为追求更“纯粹”的函数式编程，这个库并不使用 JavaScript 或者 TypeScript 语言，而使用 PureScript .

## Installation

在开始之前，确保你已经安装好了 nodejs 环境，我们将使用包管理器 npm 来安装工具，使构建项目的过程更容易。首先配置好 PureScript 环境：
```shell
npm install -g purescript
npm install -g spago # purescript package manager
```

如果你不知道什么是 PureScript ，可以阅读官方的[这篇文章](https://github.com/purescript/documentation/blob/master/guides/Getting-Started.md)快速入门。

## Clone template

仓库 [Purs-Starter](https://github.com/CAIMEOX/minecraft-purescript-starter.git) 提供了一个快速开始的样板，包含了各种自动构建脚本，我们使用这个模板（你也可以 clone 本仓库作为本地依赖，如果你熟悉 PureScript 的模块管理）：
```shell
git clone https://github.com/CAIMEOX/minecraft-purescript-starter.git sapi
cd sapi
git submodule update --init
npm i
npm i gulp-cli --global 
```

## Management

除去一些依赖，项目的核心结构如下：
```
sapi
├── behavior_packs
│   ├── manifest.json
│   └── pack_icon.png
├── gulpfile.js
├── package.json
├── packages.dhall
├── pnpm-lock.yaml
├── scripts
│   └── Main.purs
└── spago.dhall
```

`scripts` 文件夹将存放我们的核心代码， `gulpfile` 负责项目管理，以下是几个常用的 `gulp` 命令：

- `gulp build` : 构建项目 
- `gulp deploy` : 构建并自动部署项目到游戏的行为包文件夹
- `gulp watch` : 监控 `scripts` 文件夹的修改，并自动执行 `gulp deploy`


## Usage

要使用 `@minecraft/server` 包，你需要在文件开头加上：

```purescript
import Minecraft.Server
import Minecraft.Utils -- Utils包提供了一些常用的函数
```

本项目的 `test` 文件夹提供了几个例子，可以帮助你快速了解这套 API 。大部分 API 和原版拥有一样的名字，但有些出现重名的函数，会在函数名后面加上 class 的名称，例如:

```purescript
isValid_Block :: Block -> Boolean
isValid_BlockComponent :: BlockComponent -> Boolean
```

### Subscribe
订阅事件是比较常用的功能，本库提供了一个类型类 `Event`，大部分事件都是这个类型类的实例，因此你可以直接使用 `subscribe` 方法订阅：

```purescript
sub_chat_send :: (ChatSendAfterEvent -> Effect Unit) ->  (ChatSendAfterEvent -> Effect Unit)
sub_chat_send = subscribe (world.afterEvents.chatSend)

sub_block_place :: (BlockPlaceAfterEvent -> Effect Unit) -> (BlockPlaceAfterEvent -> Effect Unit)
sub_block_place = subscribe (world.afterEvents.blockPlace)

```

一个杀死发言玩家的例子（可以省略类型签名）：
```purescript
module Main where

import Minecraft.Server
import Effect (Effect)
import Minecraft.Utils (runEff, subscribe)
import Prelude (Unit)

kill :: ChatSendAfterEvent -> Effect Unit
kill e = runEff (kill_Player e.sender)

sub :: (ChatSendAfterEvent -> Effect Unit) ->  (ChatSendAfterEvent -> Effect Unit)
sub = subscribe (world.afterEvents.chatSend)

main :: Effect Unit
main = runEff (sub kill)
```

### Types
本库将全部 `class` 和 `interface` 都处理成了 `type Record`，也就是说可以直接访问各属性，但是对于一些循环类型，则用了 `newtype` 关键字处理，利用 `newtype` 定义的类型包含下面三个：
- RawMessage
- Entity
- Vector

如果你要访问其属性，需要通过一个定义在 `Utils` 中的“棱镜”：
```purescript
dim :: Entity -> Dimension
dim e = e ^. _.dimension
-- 如果属性被 Nullable 修饰，你可以使用 (~.) 获得 Maybe a
scoreboard :: Entity -> Maybe scoreboardIdentity
scoreboard e = e ~. .scoreboardIdentity
```

### Variant

本库中有一部分函数拥有 `Variant` 类型，比如函数 `setType`：
```purescript
setType :: Block -> (BlockType |+| String) -> Effect Unit
```

如果你有一个类型为 `String` 的值，你可以使用 `asOneOf` 方法将它变换为 `(BlockType |+| String)` 类型的值：
```purescript
asOneOf :: String -> BlockType |+| String
fromOneOf :: BlockType |+| String -> Maybe String
```
反之你也可以使用 `fromOneOf` 函数取出某个类型的值，但是类型转换可能失败，所以可能为 `None` 。


### Enums

本库将各种枚举类型处理为了直接的字面值，例如：
```purescript
data Direction = Direction String
```
（这个特性可能未来会修改）

### Nullable

很多类型的属性可能都是 `Nullable a` ，这在 PureScript 中操作起来可能并不是非常方便，如果你要取得 `Maybe a`， 可以使用 `Data.Nullable` 中的函数 `toMaybe` ，反之也可以使用 `toNullable` 函数将 `Maybe a` 包装成 `Nullable a`

