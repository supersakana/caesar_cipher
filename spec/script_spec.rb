# spec/script_spec.rb

require './script'

describe '#caesar' do
  it 'returns shifted string' do
    expect(caesar('abc', 3)).to eql('def')
  end
end
