require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  let(:project) {
    Project.create!(
      title: "MyString",
      slug: "MyString",
      account_id: 1,
      user_id: 1
    )
  }

  before(:each) do
    assign(:project, project)
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(project), "post" do

      assert_select "input[name=?]", "project[title]"

      assert_select "input[name=?]", "project[slug]"

      assert_select "input[name=?]", "project[account_id]"

      assert_select "input[name=?]", "project[user_id]"
    end
  end
end
