require 'spec_helper'

PACKAGES = %w[
    apt-transport-https
    bsd-mailx
    htop
    iotop
    ntp
    python-pip
    rsync
    sudo
    virtualenv
]

PACKAGES.each do |pkg|
    describe package(pkg) do
        it { should be_installed }
    end
end

describe file('/etc/apt/sources.list.d/ftp_debian_org_debian.list') do
    its(:content) { should match /backports/ }
end
