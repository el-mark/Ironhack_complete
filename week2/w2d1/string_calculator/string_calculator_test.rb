require 'rspec'
require './string_calculator'

RSpec.describe "add method" do

	before :each do
		@calc = StringCalculator.new
	end

	it "should return 0 for an empty string" do 
		expect(@calc.add("")).to eq(0)
	end

	it "returns 2 when i input only that number" do 
		expect(@calc.add(2)).to eq(2)
	end

	it "returns a fixnum when a string is passed" do 
		expect(@calc.add("jhon")).to be_a_kind_of(Fixnum)
	end

	it "should return 3 when passing 2 and 1" do 
		expect(@calc.add("2,1")) .to eq(3)
	end



end

