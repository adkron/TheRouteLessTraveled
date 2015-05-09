require 'rails_helper'

RSpec.describe "articles/index", :type => :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :body => "MyText",
        :author => "Author",
        :recommended => 1
      ),
      Article.create!(
        :body => "MyText",
        :author => "Author",
        :recommended => 1
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
