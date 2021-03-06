# for rspec-puppet documentation - see http://rspec-puppet.com/tutorial/
require_relative '../spec_helper'

describe 'aws_cli' do
  it { should contain_package('python2.7') }
  it { should contain_package('python-pip') }

  it do
    should contain_exec('pip install awscli').with(
      'command' =>  'pip install awscli',
      'path'    =>  [ '/usr/sbin', '/usr/bin', '/sbin', '/bin' ],
      'unless'  =>  'which aws',
      'user'    =>  'root',
      'timeout' =>  '0',
    )
  end
end
