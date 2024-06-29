describe file('/etc/chefctl-config.rb') do
  it { should exist }
  it { should be_file }
end

describe directory('/var/log/chef') do
  it { should exist }
end

describe directory('/var/chef/repos') do
  it { should exist }
end

describe package('git') do
  it { should be_installed }
end

describe directory('/var/chef/repos/chef-cookbooks') do
  it { should exist }
end

describe directory('/var/chef/repos/boxcutter-chef-cookbooks') do
  it { should exist }
end

describe file('/usr/local/sbin/chefctl.rb') do
  it { should exist }
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/local/sbin/chefctl') do
  it { should be_symlink }
  it { should be_linked_to '/usr/local/sbin/chefctl.rb' }
end
