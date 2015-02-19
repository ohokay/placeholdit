require 'spec_helper'

class MyView
  include Placeholdit::ViewHelpers
end

describe Placeholdit::ViewHelpers do
  let(:view) { MyView.new }

  it "should accept integers as params" do
    expect(view.placeholdit_image_tag(500)).to eq "<img src='https://placehold.it/500' alt='A placeholder image' class='placeholder' height='500' width='500' />"
  end

  it "should accept a string" do
    expect(view.placeholdit_image_tag("500")).to eq "<img src='https://placehold.it/500' alt='A placeholder image' class='placeholder' height='500' width='500' />"
  end

  it "should accept a componded WxH" do
    expect(view.placeholdit_image_tag("500x500")).to eq "<img src='https://placehold.it/500x500' alt='A placeholder image' class='placeholder' height='500' width='500' />"
  end

  it "should accept custom text" do
    expect(view.placeholdit_image_tag("500x500", text: 'Buy me!')).to eq "<img src='https://placehold.it/500x500&text=Buy me!' alt='Buy me!' class='placeholder' height='500' width='500' />"
  end

  it "should accept custom colors" do
    expect(view.placeholdit_image_tag("500", text_color: 'fff', background_color: '000')).to eq "<img src='https://placehold.it/500/000/fff' alt='A placeholder image' class='placeholder' height='500' width='500' />"
  end

  it "should strip the pound from hex colors" do
    expect(view.placeholdit_image_tag("500", text_color: '#fff', background_color: '000')).to eq "<img src='https://placehold.it/500/000/fff' alt='A placeholder image' class='placeholder' height='500' width='500' />"
    expect(view.placeholdit_image_tag("500", text_color: '#fff', background_color: '#000000')).to eq "<img src='https://placehold.it/500/000000/fff' alt='A placeholder image' class='placeholder' height='500' width='500' />"
    expect(view.placeholdit_image_tag("500", text_color: 'fff', background_color: '#000000')).to eq "<img src='https://placehold.it/500/000000/fff' alt='A placeholder image' class='placeholder' height='500' width='500' />"
    expect(view.placeholdit_image_tag("500", text_color: 'ffffff', background_color: '#000000')).to eq "<img src='https://placehold.it/500/000000/ffffff' alt='A placeholder image' class='placeholder' height='500' width='500' />"
  end

  it "should accept title" do
    expect(view.placeholdit_image_tag("500", title: "Lorem ipsum")).to eq "<img src='https://placehold.it/500' alt='A placeholder image' class='placeholder' height='500' width='500' title='Lorem ipsum' />"
  end

  it "should alias to placeholdit" do
    expect(view.placeholdit("500", text_color: 'fff', background_color: '000')).to eq "<img src='https://placehold.it/500/000/fff' alt='A placeholder image' class='placeholder' height='500' width='500' />"
  end

  it "should accept style" do
    expect(view.placeholdit_image_tag("500", style: "float:right;")).to eq "<img src='https://placehold.it/500' alt='A placeholder image' class='placeholder' height='500' width='500' style='float:right;' />"
  end

end
