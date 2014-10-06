chef-rails
====

Rails環境をサクッと作成できるように作ってみました。

rbenv(ruby2.0), nginx(unicorn) の環境をローカルのVagrantに設定します。

Railsのテンプレートも用意していますので、そちらとセットでデプロイできるように記述しています。

> [Railsテンプレート - toshima66/chef_rails_template](https://github.com/toshima66/chef_rails_template)

-----

## Requirement
Mac + Vagrantで使用できるように設定してあります。
利用前に、下記コマンドでVagrantへ接続できる状態にする必要があります。

```bash
ssh vagrant
```


各バージョン情報
```bash
#OSX
$ sw_vers -productVersion
10.9.5

#vagrant
$ vagrant -v
Vagrant 1.6.5
$ vagrant box list
ubuntu14.04 (virtualbox, 0)

#ruby, chef
$ ruby -v
ruby 2.0.0p481 (2014-05-08 revision 45883) [universal.x86_64-darwin13]
$ knife -v
Chef: 11.16.0
$ berks -v
3.1.5
```

## Getting Started
おもむろに。
```
$ git clone git@github.com:toshima66/chef-rails.git
$ cd chef-rails
$ berks
$ knife solo cook vagrant
```

-----

## Licence
[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

