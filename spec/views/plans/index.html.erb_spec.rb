require 'rails_helper'

RSpec.describe "plans/index", type: :view do
  before(:each) do
    assign(:plans, [
      Plan.create!(
        :title => "Title",
        :body => "MyText",
        :tools => "Tools",
        :tags => "Tags"
      ),
      Plan.create!(
        :title => "Title",
        :body => "MyText",
        :tools => "Tools",
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of plans" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tools".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
