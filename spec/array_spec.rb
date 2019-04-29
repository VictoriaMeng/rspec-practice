RSpec.describe Array do 

  it 'initializes as empty array' do
    expect(subject.length).to eq(0)
    subject.push(0)
    expect(subject.length).to eq(1)
  end

end
