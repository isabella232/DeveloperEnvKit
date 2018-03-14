# XCode 工具集





```Shell
# 列出所有本机电脑上可以用来进行代码签名的证书
$ security find-identity -v -p codesigning

# 用下面列出的这个证书来为 Example.app 设置签名：
$ codesign -s 'iPhone Developer: Thomas Kollbach (7TPNXN7G6K)' Example.app

# 如果你想为某一个 app 程序包重新设置签名，那么这个工具就很有用了。为了重新设置签名，你必须带上 -f 参数，有了这个参数，codesign 会用你选择的签名替换掉已经存在的那一个
$ codesign -f -s 'iPhone Developer: Thomas Kollbach (7TPNXN7G6K)' Example.app

# codesign 还可以为你提供有关一个可执行文件签名状态的信息，这些信息在出现不明错误时会提供巨大的帮助。举例来说，$ codesign -vv -d Example.app 会列出一些有关 Example.app 的签名信息：

# 验证
$ codesign --verify Example.app

授权信息会被包含在应用的签名信息中。如果你在这方面遇到了问题，可以尝试查看签名信息中具体包含了什么授权信息：$ codesign -d --entitlements - Example.app 会列出一个和前面的很像的 XML 格式的属性列表。

# 幸运的是命令行工具 security 也可以解码这个 CMS 格式
$ security cms -D -i example.mobileprovision

```

