require 'spec_helper'

describe 'apt-transport-https installation' do
    context package('apt-transport-https') do
        it { should be_installed }
    end
end
