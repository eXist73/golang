**Installation:**
1) Download Vagrant - https://www.vagrantup.com
2) Download Virtual Box - https://www.virtualbox.org/wiki/Downloads
3) Download Go Web Code - https://github.com/eXist73/golang
4) Open Windows Command Console (cmd)
5) Navigate to source directory: {go_web_code_root}/dev_box
6) Run: **vagrant up** (Take 5/10 minutes)
7) Run: **vagrant ssh** (Gets you inside the virtual instance)
8) Type: **cd /var/www/html** (Get to the web root directory on the virtual instance)
9) Type: **go build public.go**
10) Type: ./public
11) Should be able to access and see: **192.168.50.10:9090** in browser

**Extra Commands**
1) vagrant suspend - Suspends the virtualized instance
2) vagrant resume - Resumes the virtualized instance