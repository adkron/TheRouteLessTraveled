require 'rails_helper'

RSpec.describe "memes/show", :type => :view do
  before(:each) do
    @meme = assign(:meme, Meme.create!(
      :uri => "Uri",
      :recommended => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uri/)
    expect(rendered).to match(/1/)
  end
end
