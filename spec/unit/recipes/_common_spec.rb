require 'spec_helper'

describe 'taurus::_common' do
  let(:chef_run) do
    ChefSpec::ServerRunner.new(step_into: ['taurus']).converge('taurus::_common')
  end
  it { expect(chef_run).to include_recipe('ark::default') }
  it { expect(chef_run).to include_recipe('build-essential::default') }
  it { expect(chef_run).to include_recipe('python::default') }
  it { expect(chef_run).to include_recipe('python::package') }
  it { expect(chef_run).to include_recipe('python::pip') }
  it { expect(chef_run).to include_recipe('python::virtualenv') }

  it { expect(chef_run).to install_package('python-devel') }
  it { expect(chef_run).to install_package('python-pip') }
  it { expect(chef_run).to install_package('python-virtualenv') }
  it { expect(chef_run).to install_package('libxml2-devel') }
  it { expect(chef_run).to install_package('libxslt-devel') }
  it { expect(chef_run).to install_package('zlib') }

  it { expect(chef_run).to install_python_pip('lxml') }
  it { expect(chef_run).to install_python_pip('psutil') }
  it { expect(chef_run).to install_python_pip('pyzmq') }
  it { expect(chef_run).to install_python_pip('gevent') }
end
