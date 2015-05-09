require 'rails_helper'

RSpec.describe "articles/edit", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :body => "MyText",
      :author => "MyString",
      :recommended => 1
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "textarea#article_body[name=?]", "article[body]"

      assert_select "input#article_author[name=?]", "article[author]"

      assert_select "input#article_recommended[name=?]", "article[recommended]"
    end
  end
end
