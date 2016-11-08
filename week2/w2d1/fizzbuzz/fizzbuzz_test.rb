require 'rspec'
require './fizzbuzz'

RSpec.describe "test FizzBuzz file and the answer method" do

	before :each do
		@fizzbuzz = FizzBuzz.new
	end

	it "should return 1 when number 1 is entered" do 
		expect(@fizzbuzz.answer(1)).to eq(1)
	end

	it "should return Fizz when number 3 is entered" do 
		expect(@fizzbuzz.answer(3)).to eq("Fizz")
	end

	it "should return Buzz when number 55 is entered" do 
		expect(@fizzbuzz.answer(55)).to eq("Buzz")
	end

	it "should return FizzBuzz when number 30 is entered" do 
		expect(@fizzbuzz.answer(30)).to eq("FizzBuzz")
	end

end
