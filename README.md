# このリポジトリは?

flairLink様が出版されている「[スッキリわかるSQL入門](https://hb.afl.rakuten.co.jp/hgc/02164ccd.7dcbe6c6.03dc0c55.8ee179dc/?pc=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F12270619%2F%3Fscid%3Daf_ich_link_urltxt%26m%3Dhttp%3A%2F%2Fm.rakuten.co.jp%2Fev%2Fbook%2F)」購入者が利用できるダウンロードリソースを用いて、ローカルの環境でSQLの練習をおこなうツールのひとつです。
dokoQL([http://dokoql.com/](http://dokoql.com/))が使えればGUIでそれなりに操作しやすいかもしれませんが、スタンドアロンで試したいという需要もあると思って作成しました。

# 動作環境

動作環境としては以下を想定しています。

- 書籍 [スッキリわかるSQL入門](https://hb.afl.rakuten.co.jp/hgc/02164ccd.7dcbe6c6.03dc0c55.8ee179dc/?pc=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F12270619%2F%3Fscid%3Daf_ich_link_urltxt%26m%3Dhttp%3A%2F%2Fm.rakuten.co.jp%2Fev%2Fbook%2F) ※必須条件、お持ちでない方は使えません
- macOS(作成時はSierra 10.12.4を使用)
- PostgreSQL 9.6系(enterpriseDBからインストールしたものを使ってます)

----

購入される方は、以下からどうぞ。

<div class="booklink-box" style="text-align:left;padding-bottom:20px;font-size:small;/zoom: 1;overflow: hidden;"><div class="booklink-image" style="float:left;margin:0 15px 10px 0;"><a href="http://www.amazon.co.jp/exec/obidos/asin/4844333933/fugadiary-22/" target="_blank" ><img src="https://images-fe.ssl-images-amazon.com/images/I/51acHenBVuL._SL160_.jpg" style="border: none;" /></a></div><div class="booklink-info" style="line-height:120%;/zoom: 1;overflow: hidden;"><div class="booklink-name" style="margin-bottom:10px;line-height:120%"><a href="http://www.amazon.co.jp/exec/obidos/asin/4844333933/fugadiary-22/" target="_blank" >スッキリわかる SQL 入門 ドリル215問付き! (スッキリシリーズ)</a><div class="booklink-powered-date" style="font-size:8pt;margin-top:5px;font-family:verdana;line-height:120%">posted with <a href="http://yomereba.com" rel="nofollow" target="_blank">ヨメレバ</a></div></div><div class="booklink-detail" style="margin-bottom:5px;">中山 清喬,飯田 理恵子 インプレス 2013-04-19    </div><div class="booklink-link2" style="margin-top:10px;"><div class="shoplinkamazon" style="display:inline;margin-right:5px"><a href="http://www.amazon.co.jp/exec/obidos/asin/4844333933/fugadiary-22/" target="_blank" >Amazon</a></div><div class="shoplinkkindle" style="display:inline;margin-right:5px"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B00IRRTFNG/fugadiary-22/" target="_blank" >Kindle</a></div><div class="shoplinkrakuten" style="display:inline;margin-right:5px"><a href="https://hb.afl.rakuten.co.jp/hgc/02164ccd.7dcbe6c6.03dc0c55.8ee179dc/?pc=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F12270619%2F%3Fscid%3Daf_ich_link_urltxt%26m%3Dhttp%3A%2F%2Fm.rakuten.co.jp%2Fev%2Fbook%2F" target="_blank" >楽天ブックス</a></div><div class="shoplinkrakukobo" style="display:inline;margin-right:5px"><a href="http://hb.afl.rakuten.co.jp/hgc/02164ccd.7dcbe6c6.03dc0c55.8ee179dc/?pc=http%3A%2F%2Fbooks.rakuten.co.jp%2Frk%2F1c616aaca6333575964a39e5e67498ae%2F%3Fscid%3Daf_ich_link_urltxt%26m%3Dhttp%3A%2F%2Fm.rakuten.co.jp%2Fev%2Fbook%2F" target="_blank" >楽天kobo</a></div><div class="shoplinkseven" style="display:inline;margin-right:5px"><a href="https://px.a8.net/svt/ejp?a8mat=2TC4EA+3NKTGY+2N1Y+5Z6WY&a8ejpredirect=http%3A%2F%2F7af-ent.omni7.jp%2Frelay%2Faffiliate%2FentranceProcess.do%3Furl%3Dhttp%253A%252F%252F7net.omni7.jp%252Fsearch%252F%253FsearchKeywordFlg%253D1%2526keyword%253D4-84-433393-7%252520%25257C%2525204-844-33393-7%252520%25257C%2525204-8443-3393-7%252520%25257C%2525204-84433-393-7%252520%25257C%2525204-844333-93-7%252520%25257C%2525204-8443339-3-7" target="_blank" >7net</a><img border="0" width="1" height="1" src="https://www17.a8.net/0.gif?a8mat=2TC4EA+3NKTGY+2N1Y+5Z6WY" alt=""></div>            	  	  	  	</div></div><div class="booklink-footer" style="clear: left"></div></div>

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

このコードについてはGPL3といたします。ただしインストール時にダウンロードしている`code-ssql.zip`については、以下の点にご注意ください。

- ファイルの内容自体はCreative Commons BY-SA 4.0に準拠しています(そう記載されています)
- ただしファイルの利用は書籍「[スッキリわかるSQL入門](https://hb.afl.rakuten.co.jp/hgc/02164ccd.7dcbe6c6.03dc0c55.8ee179dc/?pc=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F12270619%2F%3Fscid%3Daf_ich_link_urltxt%26m%3Dhttp%3A%2F%2Fm.rakuten.co.jp%2Fev%2Fbook%2F)」を持っている方のみとされています。
