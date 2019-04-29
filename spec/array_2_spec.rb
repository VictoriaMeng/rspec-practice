RSpec.describe Array do
  subject(:sally) { [0, 1] }

  it 'has a length of 2' do 
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'is isolated in separate examples' do 
    expect(subject.length).to eq(2)
  end
end 
 
# In a second, separate example, write an assertion to confirm that ​sally​ is equal to the original array.