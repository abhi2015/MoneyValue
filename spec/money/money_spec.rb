require 'spec_helper'

describe Money do

  let(:money1) {Money.new(10,910)}
  let(:money2) {Money.new_rupee(10)}
  let(:money3) {Money.new_paise(900)}
  let(:money4) {Money.new(0,-910)}
  let(:money5) {Money.new(0.00,-910)}
  let(:money_array) {[Money.new(70,20), Money.new(30,40), Money.new(50,60)]}
  let(:money_sorted_aray) {[Money.new(30,40), Money.new(50,60), Money.new(70,20)]}

  it "takes the value as a combination of rupees and paise" do
    expect(money1.to_s).to eq("19 rupees and 10 paise")
  end

  it "takes the value in rupees" do
    expect(money2.to_s).to eq("10 rupees and 0 paise")
  end

  it "takes the value in paise" do
    expect(money3.to_s).to eq("9 rupees and 0 paise")
  end

  it "adds value to the existing amount" do
    expect((money1 + money2).to_s).to eq("29 rupees and 10 paise")
  end

  it "subtracts value from the total balance" do
    expect((money2 - money1).to_s).to eq("-9 rupees and 90 paise")
  end

  it "subtracts value from the total balance" do
    expect(money2 - money1).to eq(money4)
  end

  it "does a null check" do
    expect(money2).to eq(nil)
  end

  it "checks reflexivity" do
    expect(money2).to eq(money2)
  end

  it "checks transitivity" do
    expect(money1).to eq(money2)
    expect(money2).to eq(money3)
    expect(money1).to eq(money3)
  end

  it "checks symmetricity for addition" do
    expect(money1 + money2).to eq(money2 + money1)
  end

  it "checks symmetricity" do
    expect(money1 - money2).to eq(money2 - money1)
  end

  it "checks type" do
    expect(money5).to eq(money4)
  end

  it "sorts an array of money objects" do
    expect(money_array.sort).to eq(money_sorted_aray)

  end

end
