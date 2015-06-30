require File.expand_path('spec_helper', File.dirname(__FILE__))
require 'modifier'

describe Modifier do
  let(:saleamount_factor) { 1 }
  let(:cancellation_factor) { 0.4 }
  let(:input) { 'input.txt' }
  let(:output) { 'output.txt' }

  before :each do
    @modifier = Modifier.new(saleamount_factor, cancellation_factor)
  end

  it 'displays error when file not found' do
    expect(@modifier.modify(input, output)).to raise_error('No such file or directory')
  end
end
