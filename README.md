## My Setup

Currently, my main system is [The Void Linux](https://voidlinux.org/) running on a Intel i7-8550U (4-core and 8-threads) CPU. I primarily use the [i3](https://i3wm.org/) window manager and [Polybar](https://github.com/polybar/polybar) to replace its standard bar. I am using [Picom](#) for transparency and [Alacritty](https://github.com/alacritty/alacritty) as my main terminal along with [Tmux](https://github.com/tmux) to manage my terminal sessions. And [Neovim](https://github.com/neovim/neovim) as my main text editor.

```sh
               __.;=====;.__                   basanta@void
            _.=+==++=++=+=+===;.                ------------
             -=+++=+===+=+=+++++=_              OS: Void Linux x86_64
        .     -=:``     `--==+=++==.            Host: HP Laptop 14s-cf0xxx
       _vi,    `            --+=++++:           Kernel: 6.1.20_1
      .uvnvi.       _._       -==+==+.          Uptime: 4 hours, 20 mins
     .vvnvnI`    .;==|==;.     :|=||=|.         Packages: 675 (xbps-query)
+QmQQmpvvnv; _yYsyQQWUUQQQm #QmQ#:QQQWUV$QQm.   Shell: bash 5.1.16
 -QQWQWpvvowZ?.wQQQE==<QWWQ/QWQW.QQWW(: jQWQE   Resolution: 1920x1080
  -$QQQQmmU'  jQQQ@+=<QWQQ)mQQQ.mQQQC+;jWQQ@'   WM: i3
   -$WQ8YnI:   QWQQwgQQWV`mWQQ.jQWQQgyyWW@!     Theme: Arc-Dark [GTK2/3]
     -1vvnvv.     `~+++`        ++|+++          Icons: Arc [GTK2/3]
      +vnvnnv,                 `-|===           Terminal: alacritty
       +vnvnvns.           .      :=-           Terminal Font: Hack Nerd Font
        -Invnvvnsi..___..=sv=.     `            CPU: Intel i7-8550U (8) @ 4.0
          +Invnvnvnnnnnnnnvvnn;.                GPU: Intel UHD Graphics 620
            ~|Invnvnvvnvvvnnv}+`                GPU: AMD ATI Radeon R7 M260/M
               -~|{*l}*|~                       Memory: 2.15GiB / 7.65GiB

```

### ignore files in git globally

    git config --global core.excludesfile ~/.gitignore_global
