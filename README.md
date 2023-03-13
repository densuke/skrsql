# このリポジトリは?

flairLink様が出版されている「[スッキリわかるSQL入門第3版](https://af.moshimo.com/af/c/click?a_id=1175594&p_id=56&pc_id=56&pl_id=637&s_v=b5Rz2P0601xu&url=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F17018590%2F)」購入者が利用できるダウンロードリソースを用いて、ローカルの環境でSQLの練習をおこなうツールのひとつです。
dokoQL([http://dokoql.com/](http://dokoql.com/))が使えればGUIでそれなりに操作しやすいかもしれませんが、スタンドアロンで試したいという需要もあると思って作成しました。

# 動作環境

動作環境としては以下を想定しています。

- 書籍 [スッキリわかるSQL入門第3版](https://af.moshimo.com/af/c/click?a_id=1175594&p_id=56&pc_id=56&pl_id=637&s_v=b5Rz2P0601xu&url=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F17018590%2F) ※必須条件、お持ちでない方は使えません

- Ubuntu Linux22.04LTS(サーバー版)
     - postgresql-10パッケージによるサーバー

----

購入される方は、以下からどうぞ。

<div class="booklink-box" style="text-align:left;padding-bottom:20px;font-size:small;zoom: 1;overflow: hidden;"><div class="booklink-image" style="float:left;margin:0 15px 10px 0;"><a href="//af.moshimo.com/af/c/click?a_id=1175594&p_id=56&pc_id=56&pl_id=637&s_v=b5Rz2P0601xu&url=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F17018590%2F" target="_blank" ><img src="https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/3396/9784295013396_1_2.jpg?_ex=200x200" style="border: none;" /></a><img src="//i.moshimo.com/af/i/impression?a_id=1175594&p_id=56&pc_id=56&pl_id=637" width="1" height="1" style="border:none;"></div><div class="booklink-info" style="line-height:120%;zoom: 1;overflow: hidden;"><div class="booklink-name" style="margin-bottom:10px;line-height:120%"><a href="//af.moshimo.com/af/c/click?a_id=1175594&p_id=56&pc_id=56&pl_id=637&s_v=b5Rz2P0601xu&url=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F17018590%2F" target="_blank" >スッキリわかるSQL入門 第3版 ドリル256問付き！</a><img src="//i.moshimo.com/af/i/impression?a_id=1175594&p_id=56&pc_id=56&pl_id=637" width="1" height="1" style="border:none;"><div class="booklink-powered-date" style="font-size:8pt;margin-top:5px;font-family:verdana;line-height:120%">posted with <a href="https://yomereba.com" rel="nofollow" target="_blank">ヨメレバ</a></div></div><div class="booklink-detail" style="margin-bottom:5px;">中山 清喬/飯田 理恵子 インプレス 2022年03月29日頃    </div><div class="booklink-link2" style="margin-top:10px;"><div class="shoplinkrakuten" style="display:inline;margin-right:5px"><a href="//af.moshimo.com/af/c/click?a_id=1175594&p_id=56&pc_id=56&pl_id=637&s_v=b5Rz2P0601xu&url=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F17018590%2F" target="_blank" >楽天ブックスで探す</a><img src="//i.moshimo.com/af/i/impression?a_id=1175594&p_id=56&pc_id=56&pl_id=637" width="1" height="1" style="border:none;"></div><div class="shoplinkamazon" style="display:inline;margin-right:5px"><a href="//af.moshimo.com/af/c/click?a_id=920708&p_id=170&pc_id=185&pl_id=4062&s_v=b5Rz2P0601xu&url=https%3A%2F%2Fwww.amazon.co.jp%2Fexec%2Fobidos%2FASIN%2F4295013390" target="_blank" >Amazonで探す</a></div><div class="shoplinkkindle" style="display:inline;margin-right:5px"><a href="//af.moshimo.com/af/c/click?a_id=920708&p_id=170&pc_id=185&pl_id=4062&s_v=b5Rz2P0601xu&url=https%3A%2F%2Fwww.amazon.co.jp%2Fgp%2Fsearch%3Fkeywords%3D%25E3%2582%25B9%25E3%2583%2583%25E3%2582%25AD%25E3%2583%25AA%25E3%2582%258F%25E3%2581%258B%25E3%2582%258BSQL%25E5%2585%25A5%25E9%2596%2580%2520%25E7%25AC%25AC3%25E7%2589%2588%2520%25E3%2583%2589%25E3%2583%25AA%25E3%2583%25AB256%25E5%2595%258F%25E4%25BB%2598%25E3%2581%258D%25EF%25BC%2581%26__mk_ja_JP%3D%2583J%2583%255E%2583J%2583i%26url%3Dnode%253D2275256051" target="_blank" >Kindleで探す</a></div>                              	  	  	  	  	</div></div><div class="booklink-footer" style="clear: left"></div></div>

- [Kobo電子書籍版](https://a.r10.to/hUDvaF)
----


PostgreSQLに関しては、利用者が以下の条件を満たしていることを前提としています。

- 使用ユーザーがデータベース作成権限を保有すること(`createuser -d`など)
- 使用ユーザーが(少なくともデータベース名Canについて)パスワード入力無しで`createdb`/`dropdb`できること[^1]

[^1]: ファイル `~/.pgpass` を作成し、 `locahost:5432:Can:ユーザー名:パスワード` と入れて、パーミッションを0600にすればたいていOK

# インストール・アンインストール

インストールの際に、環境チェックを行ってからインストールを行います。
まず、

    $ make

としてみてください、動作チェックを行い、必要なソースをダウンロードしてきます。

エラーが出なければ、

    $ make install

としてインストールしてください。
権限上の問題で失敗する場合は、`sudo`を併用してください。
開発環境上では`sudo`不要で動いてます。

アンインストール、クリーニングについては、

    $ make uninstall
    $ make clean

を用意しています。

# 基本的な使い方

テキストに含まれているリストなどの番号を使って行います。
テキストにて「リスト4-10」(List 4-10)とあれば、

  $ list 4 10

と入れてみてください、DBの下準備が行われた上で`psql`コマンドが実行されて入力可能になります。
ただし現時点ではmacOS上での都合か、`psql`上で**日本語がうまく入力できないことがある**ため、**行編集機能を無効化**しています[^2]。

[^2]: まっとうな対応方法がわかったら修正を加える予定です。

# ライセンス、再配布規定について

このコードについてはGPL3といたします。ただしインストール時にダウンロードしている`code-ssql2.zip`については、以下の点にご注意ください。

- ファイルの内容自体はCreative Commons BY-SA 4.0に準拠しています(そう記載されています)
- ただしファイルの利用は書籍「[スッキリわかるSQL入門第2版](https://hb.afl.rakuten.co.jp/hgc/02164ccd.7dcbe6c6.03dc0c55.8ee179dc/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fbook%2F15702412%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fbook%2Fi%2F19388880%2F&link_type=text&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJ0ZXh0Iiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MSwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjF9)」を持っている方のみとされています。
