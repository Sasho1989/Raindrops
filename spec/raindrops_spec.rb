RSpec.describe Raindrops do
  it "has a version number" do
    expect(Raindrops::VERSION).not_to be nil
  end

  it 'outputs Pling if number has 3 as a factor' do
    rnds = Raindrops::Convert_to_str.new(3)
    expect(rnds.convert).to eq('Pling')
  end

  it 'outputs Plang if number has 5 as a factor' do
    rnds = Raindrops::Convert_to_str.new(5)
    expect(rnds.convert).to eq('Plang')
  end

  it 'outputs Plong if number has 7 as a factor' do
    rnds = Raindrops::Convert_to_str.new(7)
    expect(rnds.convert).to eq('Plong')
  end

  it "returns back the num if it doesn't include 3, 5, 7 as factor" do
    rnds = Raindrops::Convert_to_str.new(17)
    expect(rnds.convert).to eq('17')
  end
end
