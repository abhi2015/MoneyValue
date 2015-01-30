require 'spec_helper'

describe Money do

  let(:money1) {Money.new(10,910)}
  let(:money2) {Money.new_rupee(10)}
  let(:money3) {Money.new_paise(900)}

  it "takes the value as a combination of rupees and paise" do
    expect(money1.view_money).to eq("19 rupees and 10 paise")
  end

  it "takes the value in rupees" do
    expect(money2.view_money).to eq("10 rupees and 0 paise")
  end

  it "takes the value in paise" do
    expect(money3.view_money).to eq("9 rupees and 0 paise")
  end

  it "adds value to the existing amount" do
    expect((money1.add_money(money2)).view_money).to eq("29 rupees and 10 paise")
  end

end
