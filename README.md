


## Laradock 環境構築

```
$ vagrant up
$ vagrant ssh
```

で、dockerとLaradockがインストールされた環境が起動する
vagrantで、中のサーバに 8081->80へ転送しているので、

http://localhost:8081/ で画面が表示されるはず

また provisionで /vagrantにアプリをCloneしたりするので カレントディレクトリに appというディレクトリが作成されてそこにアプリ群がダウンロードされる。



## Box
初期の構築にものすごく時間がかかるので、
vagrant up した直後の状態を packageしておくとよい

```bash
$ vagrant halt
$ vagrant package default --output laradock.box
$ vagrant box add masatomix/laradock ./laradock.box
```

このBoxが前提でつづきの処理を記述した Vagrantfile_add というファイルをおいたので、それを用いてもよい


```bash
$ cp -pfr Vagrantfile_add Vagrantfile   (ちなみにVagrantfile_initは初回のを待避しておいたもの)
$ vagrant up
$ vagrant ssh
```




https://qiita.com/yotsak83/items/a7d175206b387b5e5acc
https://qiita.com/dog-ears/items/d985cd43dd9e297218ac