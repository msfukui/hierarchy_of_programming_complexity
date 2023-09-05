# Hierarchy of programming complexity

きしださんの以下の「プログラムの難しさの階層」について、というブログ記事に書かれた課題を簡単な Ruby のコードに落としてみるリポジトリです。

https://nowokay.hatenablog.com/entry/20140428/1398654343

プログラミングの複雑さをどのように説明すれば良いかを考える例として、作成しています。

## テストコードについて

追加のライブラリなどを入れたくなかったため、以下を参考に CRuby の bundled gems の test-unit で書きました。

https://github.com/test-unit/test-unit/blob/master/doc/text/how-to.md

テストは以下のようにまとめて実行できます。

```
$ ruby tests/runner.rb
Loaded suite tests
Started
..................
Finished in 0.003864 seconds.
------------------------------------------------------------------------------------------------------------------------
18 tests, 18 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
------------------------------------------------------------------------------------------------------------------------
4658.39 tests/s, 4658.39 assertions/s
```
