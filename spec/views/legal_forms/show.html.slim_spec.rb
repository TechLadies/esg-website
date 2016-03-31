require 'rails_helper'

RSpec.describe "legal_forms/show", type: :view do
  before(:each) do
    @legal_form = assign(:legal_form, LegalForm.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Event/)
    expect(rendered).to match(/Group/)
    expect(rendered).to match(/Presenter/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Email/)
  end
end
