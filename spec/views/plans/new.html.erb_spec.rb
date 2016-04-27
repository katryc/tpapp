require 'rails_helper'

RSpec.describe "plans/new", type: :view do
  before(:each) do
    assign(:plan, Plan.new(
      :title => "MyString",
      :body => "MyText",
      :tools => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders new plan form" do
    render

    assert_select "form[action=?][method=?]", plans_path, "post" do

      assert_select "input#plan_title[name=?]", "plan[title]"

      assert_select "textarea#plan_body[name=?]", "plan[body]"

      assert_select "input#plan_tools[name=?]", "plan[tools]"

      assert_select "input#plan_tags[name=?]", "plan[tags]"
    end
  end
end
