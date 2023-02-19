require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    assign(:project, Project.create!(
      title: "Title",
      slug: "Slug",
      account_id: 2,
      user_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
