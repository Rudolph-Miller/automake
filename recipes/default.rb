include_recipe "build-essential"
include_recipe "package-tar"
include_recipe "autoconf"

automake = node[:automake]

tar_package "http://ftp.gnu.org/gnu/automake/automake-#{ automake[:version] }.tar.gz" do
  prefix automake[:prefix]
  creates "/usr/local/bin/automake"
end
