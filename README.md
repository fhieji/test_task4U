# README
GWアプリ

## 環境構築
※rbenvが入っていない場合はrbenvを入れる
rbenv install 2.5.3
rbenv rehash
ruby -vで2.5.3になっていることを確認
gem install bundler
bundle install(Railsのライブラリ群をインストール)
rails db:create(DBを作る)
rails db:migrate(DB定義ファイルに沿ってテーブルを作成)
rails s(windowsの場合は「rails -b 0.0.0.0」)(サーバを起動)
