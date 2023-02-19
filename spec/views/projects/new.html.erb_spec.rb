require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      title: "MyString",
      slug: "MyString",
      account_id: 1,
      user_id: 1
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[title]"

      assert_select "input[name=?]", "project[slug]"

      assert_select "input[name=?]", "project[account_id]"

      assert_select "input[name=?]", "project[user_id]"
    end
  end
end
