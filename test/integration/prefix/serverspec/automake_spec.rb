require 'serverspec'

set :backend, :exec

describe command("/opt/local/bin/automake --version") do
  its (:stdout) { should match /automake/ }
end
