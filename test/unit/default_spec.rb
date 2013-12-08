require_relative 'spec_helper'

describe 'splunk::default' do
  subject { ChefSpec::ChefRunner.new.converge described_recipe }

  describe 'examples of preferred chefspec syntax' do
    it { should test_behavior }

    its(:method_accessor) { should be_something }

    specify { subject.user('username').gid.should be 999 }

    context 'when expecting an error' do
      before { Chef::ExpectException.expect(RuntimeError, 'You must set node[:value]') }
      # create your error conditions
      specify { expect { subject }.to raise_error RuntimeError }
    end
  end
end
