#spec/caesar_spec.rb
require './lib/caesar'

describe '#shift' do
  it 'shifts characters with a positive shift factor' do
    expect(shift('a', 5)).to eql('f')
  end

  it 'shifts characters with a negative shift factor' do
    expect(shift('a', -3)).to eql('x')
  end
end

describe '#caesar_cipher' do
  it 'shifts strings with a positive shift factor' do
    expect(caesar_cipher('hello world', 2)).to eql('jgnnq yqtnf')
  end

  it 'shifts strings with a negative shift factor' do
    expect(caesar_cipher('hello world', -2)).to eql('fcjjm umpjb')
  end

  it 'preserves case after shifting' do
    expect(caesar_cipher('HelLo WorLD', 4)).to eql('LipPs AsvPH')
  end

  it 'returns an empty string with an empty input' do
    expect(caesar_cipher('', 3)).to eql('')
  end

  it 'returns the original string if shift factor is 0' do
    expect(caesar_cipher('hello world', 0)).to eql('hello world')
  end
end