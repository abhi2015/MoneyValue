require 'spec_helper'

describe Money do

  let(:money1) {Money.new(10,900)}
  let(:money2) {Money.new_rupee(10)}
  let(:money3) {Money.new_paise(900)}

  it "takes the value as a combination of rupees and paise" do
    expect(money1.viewMoney).to eq(19.00)
  end

  it "takes the value in rupees" do
    expect(money2.viewMoney).to eq(10.00)
  end

  it "takes the value in paise" do
    expect(money3.viewMoney).to eq(9.00)
  end

  it "adds value to the existing amount" do
    expect(money1.addMoney(money2)).to eq(29.00)
  end

end
