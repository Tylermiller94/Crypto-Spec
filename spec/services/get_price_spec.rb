require "rails_helper"

describe Bitcoin, :vcr => true do
  it "returns a 200 success header when the API call is made" do
    response = Bitcoin.get_price
    expect(response.code).to(eq(200))
  end

  it "returns bitcoin when API call is made" do
    response = JSON.parse(Bitcoin.get_price)
    expct(response["ticker"]["price"]).to_not(eq(nil))
  end
end
