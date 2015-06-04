require 'serverspec'

set :backend, :exec

describe command("automake -v") do
  its (:stdout) { should match /automake/ }
end
