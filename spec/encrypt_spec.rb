require_relative '../encrypt'
# 3 basic commands of writing RSPEC test
# 1. describe -> describing which method we're testing
# 2. it -> just describes what the test is doing in plain english
# 3. expect ->

describe '#encrypt' do
  it 'should return an empty string when give an empty string' do
    expect(encrypt('')).to eq('')
  end

  it 'should return "A" when give "D"' do
    expect(encrypt('D')).to eq('A')
  end

  it 'should return "D" when give "HI"' do
    expect(encrypt('HI')).to eq('EF')
  end

  it 'should return an encrypted sentence when given a full sentence' do
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')
    expect(actual).to eq('QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD')
  end

  it 'should return an encrypted sentence when given a full sentence' do
    actual = encrypt('THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG!')
    expect(actual).to eq('QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD!')
  end
end
