require 'spec_helper'
describe 'gnuscreen' do
  context 'with default values for all parameters' do
    it { should contain_class('gnuscreen') }
  end
end
