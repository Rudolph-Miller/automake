require 'serverspec'

set :backend, :exec

describe package("automake") do
    it { should be_installed }
end
