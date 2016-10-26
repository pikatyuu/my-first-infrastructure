- logrotation  
  絶え間なく記録されるlogをファイルを変えることで保存していき、古いlogファイルは消したりする機能
- docker log  
  コンテナ内での標準入力、出力を記録したもの。
- /var/log/  
  特定のアプリケーション用のログディレクトリ

  - /var/log/lastlog  
    バイナリファイル  
    lessコマンドで開くと閉じれなくなるので注意   
    意味は一切わからなかった  
    システムに登録されているユーザーの最終ログイン時刻を記録したもの。

  - ./boot.log  
    システム起動時にサービスのサービスの起動メッセージなどが記録される

  - ./chef/client.log  
    ログを見る限りchefの実行の情報が保存されているらしい

  - ./alternatives.log  
    rubyやjavaのバージョンの状態や変更などを記録したもの  
    ちなみにalternativeとは型にはまらないという意味

  - ./kern.log  
    カーネルのログ  
    起動時の動作の記録が入ってる

  - ./landscape/sysinfo.log  
    複数のUbuntuマシンを管理する際に記録されるログらしい

  - ./syslog  
  システムの動作状況やメッセージなどの記録を取るプログラム。  
  unix, linuxに標準で備わっている

  - ./cloud-init.log
    クラウドインスタンスの構成やカスタマイズの情報を保存したもの

  - ./cloud-init-output.log  
    クラウドインスタンスの構成やカスタマイズ時に出力されたメッセージのログ

  - ./fontconfig.log
    おそらくUbuntuをGUI形式で使うときのフォントの設定のログ

  - upstart  
    起動時のタスクとサービスの起動、終了時のタスクとさーびすのサービスの停止を非同期に行う  
    システム動作中にはタスクとサービスの管理も行う

  - ./dpkg.log(Debian package manager)  
    OS向けのパッケージ操作を行った時間と内容を保存する  
    ↓docker.ioのinstallのlog
        2016-10-24 06:34:49 status installed docker.io:amd64 1.6.2~dfsg1-1ubuntu4~14.04.1

  - ./auth.log  
    ログイン時のパスワードエラーのログ

  - ./dmesg(display message)  
    カーネリングバッファのログで主にカーネルが出力した情報が記録される

  - ./apt(Advanced Packageing Tool)  
    パーケージ管理関係のログ
    - ./apt/history.log  
      今までにインストールしたパッケージの情報が記録されている
    - ./apt/term.log  
      インストール時の出力したメッセージが記録されている
