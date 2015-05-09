require 'rails_helper'

RSpec.describe "memes/new", :type => :view do
  before(:each) do
    assign(:meme, Meme.new(
      :uri => "MyString",
      :recommended => 1
    ))
  end

  it "renders new meme form" do
    render

    assert_select "form[action=?][method=?]", memes_path, "post" do

      assert_select "input#meme_uri[name=?]", "meme[uri]"

      assert_select "input#meme_recommended[name=?]", "meme[recommended]"
    end
  end
end
