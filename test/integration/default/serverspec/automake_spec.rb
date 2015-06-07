require 'serverspec'

set :backend, :exec

describe command("/usr/local/bin/automake --version") do
  its (:stdout) { should match /automake/ }

  its (:stdout) { should match /1.11/ }
end
