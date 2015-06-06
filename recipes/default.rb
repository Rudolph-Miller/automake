include_recipe "package-tar"
include_recipe "autoconf"

automake = node[:automake]
version = automake[:version]

tar_package "http://ftp.gnu.org/gnu/automake/automake-#{ version }.tar.gz" do
  prefix "/usr/local"
  creates "/usr/local/bin/automake"
end
