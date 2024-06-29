describe directory('/etc/cinc') do
  it { should exist }
end

describe file('/etc/chef') do
  it { should be_symlink }
  it { should be_linked_to '/etc/cinc' }
end

describe package('cinc') do
  it { should be_installed }
end

describe file('/opt/chef') do
  it { should be_symlink }
  it { should be_linked_to '/opt/cinc' }
end

describe file('/etc/cinc/client-prod.rb') do
  it { should exist }
  it { should be_file }
end

describe file('/etc/cinc/client-prod.pem') do
  it { should exist }
  it { should be_file }
end

describe file('/etc/chef/client.rb') do
  it { should be_symlink }
  it { should be_linked_to '/etc/cinc/client-prod.rb' }
end

describe file('/etc/cinc/validation.pem') do
  it { should exist }
  it { should be_file }
end

describe file('/etc/chef/run-list.json') do
  it { should exist }
  it { should be_file }
end
