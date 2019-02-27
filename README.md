# このリポジトリは?

flairLink様が出版されている「[スッキリわかるSQL入門第2版](https://hb.afl.rakuten.co.jp/hgc/02164ccd.7dcbe6c6.03dc0c55.8ee179dc/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fbook%2F15702412%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fbook%2Fi%2F19388880%2F&link_type=text&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJ0ZXh0Iiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MSwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjF9)」購入者が利用できるダウンロードリソースを用いて、ローカルの環境でSQLの練習をおこなうツールのひとつです。
dokoQL([http://dokoql.com/](http://dokoql.com/))が使えればGUIでそれなりに操作しやすいかもしれませんが、スタンドアロンで試したいという需要もあると思って作成しました。

# 動作環境

動作環境としては以下を想定しています。

- 書籍 [スッキリわかるSQL入門第2版](https://hb.afl.rakuten.co.jp/hgc/02164ccd.7dcbe6c6.03dc0c55.8ee179dc/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fbook%2F15702412%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fbook%2Fi%2F19388880%2F&link_type=text&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJ0ZXh0Iiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MSwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjF9) ※必須条件、お持ちでない方は使えません

- macOS(作成時はSierra 10.12.4を使用)
    - PostgreSQL 9.6系(enterpriseDBからインストールしたものを使ってます)
- Ubuntu Linux 18.04LTS(サーバー版)
     - postgresql-10パッケージによるサーバー

----

購入される方は、以下からどうぞ。

<div class="booklink-box" style="text-align:left;padding-bottom:20px;font-size:small;zoom: 1;overflow: hidden;"><div class="booklink-image" style="float:left;margin:0 15px 10px 0;"><a href="https://hb.afl.rakuten.co.jp/hgc/04051144.7e5bd47c.04051145.81e33400/yomereba_main_201902271158061332?pc=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F15702412%2F%3Fscid%3Daf_ich_link_urltxt%26m%3Dhttp%3A%2F%2Fm.rakuten.co.jp%2Fev%2Fbook%2F" target="_blank" ><img src="https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5094/9784295005094.jpg?_ex=200x200" style="border: none;" /></a></div><div class="booklink-info" style="line-height:120%;zoom: 1;overflow: hidden;"><div class="booklink-name" style="margin-bottom:10px;line-height:120%"><a href="https://hb.afl.rakuten.co.jp/hgc/04051144.7e5bd47c.04051145.81e33400/yomereba_main_201902271158061332?pc=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F15702412%2F%3Fscid%3Daf_ich_link_urltxt%26m%3Dhttp%3A%2F%2Fm.rakuten.co.jp%2Fev%2Fbook%2F" target="_blank" >スッキリわかるSQL入門第2版</a><div class="booklink-powered-date" style="font-size:8pt;margin-top:5px;font-family:verdana;line-height:120%">posted with <a href="https://yomereba.com" rel="nofollow" target="_blank">ヨメレバ</a></div></div><div class="booklink-detail" style="margin-bottom:5px;">フレアリンク/中山清喬 インプレス 2018年11月29日    </div><div class="booklink-link2" style="margin-top:10px;"><div class="shoplinkrakuten" style="display:inline;margin-right:5px"><a href="https://hb.afl.rakuten.co.jp/hgc/04051144.7e5bd47c.04051145.81e33400/yomereba_main_201902271158061332?pc=http%3A%2F%2Fbooks.rakuten.co.jp%2Frb%2F15702412%2F%3Fscid%3Daf_ich_link_urltxt%26m%3Dhttp%3A%2F%2Fm.rakuten.co.jp%2Fev%2Fbook%2F" target="_blank" >楽天ブックス</a></div><div class="shoplinkrakukobo" style="display:inline;margin-right:5px"><a href="http://hb.afl.rakuten.co.jp/hgc/04051144.7e5bd47c.04051145.81e33400/yomereba_main_201902271158061332?pc=https%3A%2F%2Fbooks.rakuten.co.jp%2Frk%2F56c2ef43e012343dbabaedd3e8881dea%3Fscid%3Daf_ich_link_urltxt%26m%3Dhttp%3A%2F%2Fm.rakuten.co.jp%2Fev%2Fbook%2F" target="_blank" >楽天kobo</a></div><div class="shoplinkamazon" style="display:inline;margin-right:5px"><a href="//af.moshimo.com/af/c/click?a_id=920708&p_id=170&pc_id=185&pl_id=4062&s_v=b5Rz2P0601xu&url=https%3A%2F%2Fwww.amazon.co.jp%2Fexec%2Fobidos%2FASIN%2F4295005096" target="_blank" >Amazon</a></div><div class="shoplinkkindle" style="display:inline;margin-right:5px"><a href="//af.moshimo.com/af/c/click?a_id=920708&p_id=170&pc_id=185&pl_id=4062&s_v=b5Rz2P0601xu&url=https%3A%2F%2Fwww.amazon.co.jp%2Fgp%2Fsearch%3Fkeywords%3D%2583X%2583b%2583L%2583%258A%2582%25ED%2582%25A9%2582%25E9SQL%2593%25FC%2596%25E5%2591%25E62%2594%25C5%26__mk_ja_JP%3D%2583J%2583%255E%2583J%2583i%26url%3Dnode%253D2275256051" target="_blank" >Kindle</a></div><div class="shoplinkseven" style="display:inline;margin-right:5px"><a href="//af.moshimo.com/af/c/click?a_id=920707&p_id=932&pc_id=1188&pl_id=12456&s_v=b5Rz2P0601xu&url=http%3A%2F%2F7net.omni7.jp%2Fsearch%2F%3FsearchKeywordFlg%3D1%26keyword%3D9784295005094" target="_blank" >7net<img src="//i.moshimo.com/af/i/impression?a_id=920707&p_id=932&pc_id=1188&pl_id=12456" width="1" height="1" style="border:none;"></a></div></div></div><div class="booklink-footer" style="clear: left"></div></div>

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
