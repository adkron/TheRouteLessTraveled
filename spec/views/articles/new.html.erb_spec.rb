require 'rails_helper'

RSpec.describe "articles/new", :type => :view do
  before(:each) do
    assign(:article, Article.new(
      :body => "MyText",
      :author => "MyString",
      :recommended => 1
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "textarea#article_body[name=?]", "article[body]"

      assert_select "input#article_author[name=?]", "article[author]"

      assert_select "input#article_recommended[name=?]", "article[recommended]"
    end
  end
end
