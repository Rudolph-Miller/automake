include_recipe "autoconf"

automake = node[:automake]
version = automake[:version]

remote_file "/tmp/automake-#{ version }.tar.gz" do
  source "http://ftp.gnu.org/gnu/automake/automake-#{ version }.tar.gz"
  notifies :run, "bash[install-automake]", :immediately
end

bash "install-automake" do
  user "root"
  cwd "/tmp"
  code <<-EOS
    tar zxvf automake-#{ version }.tar.gz
    cd automake-#{ version }
    ./configure
    make
    make install
  EOS
end
