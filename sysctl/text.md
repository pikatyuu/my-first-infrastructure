- カーネルパラメータとは  
  カーネルの個々の機能やドライバが解釈して、それぞれの振る舞いを設定できるようにするためのもの

- 主なカーネルパラメータ

  - kernel カーネル関係の設定

    - kernel.panic  
      カーネルが何らかの理由で致命的なエラーが発生し安全に復旧できなくなったとき(kernel panic)に
      再起動するまでの時間の設定

    - kernel.pid_max  
      PID(process id)の上限を設定できる

  - fs ファイル関係の設定

    - fs.file-max  
      ファイルデスクリプタの上限を変更できる

    - fs.file-nr  
      現在のファイルデスクリプタの状況  
      左から、  
      起動から今まででもっとも多かったときの開いたファイル数、  
      現在開いているファイルの数、  
      開くことのできる最大ファイル数

  - net ネット関係の設定
    - net.ipv4.ip_local_port_range  
      ローカルポートとして割りあてるポートの範囲を設定できる  
      net.\*は主にポートの設定だったのでまだよくわからない

    - net.ipv4.tcp_keepalive_time  
      コネクションのタイムアウトの設定ができる  
      つまり、keepaliveを解く時間  
      これを小さめに設定することで、捌ける数が増えるが小さくしすぎるとおそらく、すぐサーバーが混んでいますだとか出るようになって、クレームが多発する？

  - vm 仮想メモリの設定

    - vm.swappiness  
      メモリが不足したときのスワップ頻度を設定できる  
      ０にも設定できるが物理メモリがいっぱいになったらスワップが始まる  
      スワップ数が増える = メモリが不足  
      スワップ領域がなくなる = OOMキラーがプロセスをkillしてOSのための最低限のメモリを確保する

    - vm.panic_on_oom  
      OOMキラーが働くときにカーネルパニックを起こすようにする  
      これをすると、kernel.panicでの設定によりkillされる前にシステムをリブートすることが可能らしい

    - vm.overcommit_memory  
      プロセスが要求したメモリよりも余分にメモリを確保するようになる  
      余分に確保したメモリはなぜか使えないらしくOOMキラーが召喚される比率が上がりかねないので1西ておいた法がいいと思うけどどうなんだろう...?

    - vm.overcommit_ratio  
      vm.overcommit_memoryで1を設定した場合に余分に確保するメモリの大きさを設定できる  
      まあいらない気がするが...
