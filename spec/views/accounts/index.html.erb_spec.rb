require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        name: "Name",
        owner_id: "Owner"
      ),
      Account.create!(
        name: "Name",
        owner_id: "Owner"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Owner".to_s), count: 2
  end
end
