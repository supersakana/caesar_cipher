# spec/script_spec.rb

require './script'

describe '#caesar' do
  it 'returns shifted string' do
    expect(caesar('abc', 3)).to eql('def')
  end

  it 'only changes letters, not special characters' do
    expect(caesar('!#abc$%', 3)).to eql('!#def$%')
  end

  it 'can shift both capital and lowercase letters' do
    expect(caesar('AbC', 4)).to eql('EfG')
  end

  it 'can shift using negative integers' do
    expect(caesar('abc', -3)).to eql('xyz')
  end

  it 'is the same length as the original string' do
    expect(caesar('abc def', 4).length).to eql(7)
  end
end
