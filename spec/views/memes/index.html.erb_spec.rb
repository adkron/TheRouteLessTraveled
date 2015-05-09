require 'rails_helper'

RSpec.describe "memes/index", :type => :view do
  before(:each) do
    assign(:memes, [
      Meme.create!(
        :uri => "Uri",
        :recommended => 1
      ),
      Meme.create!(
        :uri => "Uri",
        :recommended => 1
      )
    ])
  end

  it "renders a list of memes" do
    render
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
