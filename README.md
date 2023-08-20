# Pure Bedrock

**Pure Bedrock** 是一个Minecraft Bedrock Script API wrapper。 它封装了一套函数式的 Script API (@minecraft/server)，与原版提供的面向象风格的API不同。并且，为追求更“纯粹”的函数式编程，这个库并不使用 JavaScript 或者 TypeScript 语言，而使用 PureScript .

## Installation

在开始之前，先配置好 PureScript 环境：
```shell
npm install -g purescript
npm install -g spago # purescript package manager
```

如果你不知道什么是 PureScript ，可以阅读官方的[这篇文章](https://github.com/purescript/documentation/blob/master/guides/Getting-Started.md)快速入门。

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

### Nullable

很多类型的属性可能都是 `Nullable a` ，这在 PureScript 中操作起来可能并不是非常方便，如果你要取得 `Maybe a`， 可以使用 `Data.Nullable` 中的函数 `toMaybe` ，反之也可以使用 `toNullable` 函数将 `Maybe a` 包装成 `Nullable a`

## TO DO

- [ ] 换掉函数参数和返回值中的 Nullable
- [ ] 为大部分存在的同名函数实现一个 Type Class
