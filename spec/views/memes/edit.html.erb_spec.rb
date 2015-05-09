require 'rails_helper'

RSpec.describe "memes/edit", :type => :view do
  before(:each) do
    @meme = assign(:meme, Meme.create!(
      :uri => "MyString",
      :recommended => 1
    ))
  end

  it "renders the edit meme form" do
    render

    assert_select "form[action=?][method=?]", meme_path(@meme), "post" do

      assert_select "input#meme_uri[name=?]", "meme[uri]"

      assert_select "input#meme_recommended[name=?]", "meme[recommended]"
    end
  end
end
