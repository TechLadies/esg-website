require 'rails_helper'

RSpec.describe "legal_forms/index", type: :view do
  before(:each) do
    assign(:legal_forms, [
      LegalForm.create!(
        :event => "Event",
        :group => "Group",
        :presenter => "Presenter",
        :twitter => "Twitter",
        :title => "Title",
        :description => "MyText",
        :slides => false,
        :fileformat => 1,
        :livedemo => false,
        :audio => false,
        :sharedlaptop => false,
        :OS => 2,
        :videooutput => 3,
        :creativecommons => false,
        :email => "Email"
      ),
      LegalForm.create!(
        :event => "Event",
        :group => "Group",
        :presenter => "Presenter",
        :twitter => "Twitter",
        :title => "Title",
        :description => "MyText",
        :slides => false,
        :fileformat => 1,
        :livedemo => false,
        :audio => false,
        :sharedlaptop => false,
        :OS => 2,
        :videooutput => 3,
        :creativecommons => false,
        :email => "Email"
      )
    ])
  end

  it "renders a list of legal_forms" do
    render
    assert_select "tr>td", :text => "Event".to_s, :count => 2
    assert_select "tr>td", :text => "Group".to_s, :count => 2
    assert_select "tr>td", :text => "Presenter".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
