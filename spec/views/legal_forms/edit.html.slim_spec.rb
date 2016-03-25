require 'rails_helper'

RSpec.describe "legal_forms/edit", type: :view do
  before(:each) do
    @legal_form = assign(:legal_form, LegalForm.create!(
      :event => "MyString",
      :group => "MyString",
      :presenter => "MyString",
      :twitter => "MyString",
      :title => "MyString",
      :description => "MyText",
      :slides => false,
      :fileformat => 1,
      :livedemo => false,
      :audio => false,
      :sharedlaptop => false,
      :OS => 1,
      :videooutput => 1,
      :creativecommons => false,
      :email => "MyString"
    ))
  end

  it "renders the edit legal_form form" do
    render

    assert_select "form[action=?][method=?]", legal_form_path(@legal_form), "post" do

      assert_select "input#legal_form_event[name=?]", "legal_form[event]"

      assert_select "input#legal_form_group[name=?]", "legal_form[group]"

      assert_select "input#legal_form_presenter[name=?]", "legal_form[presenter]"

      assert_select "input#legal_form_twitter[name=?]", "legal_form[twitter]"

      assert_select "input#legal_form_title[name=?]", "legal_form[title]"

      assert_select "textarea#legal_form_description[name=?]", "legal_form[description]"

      assert_select "input#legal_form_slides[name=?]", "legal_form[slides]"

      assert_select "input#legal_form_fileformat[name=?]", "legal_form[fileformat]"

      assert_select "input#legal_form_livedemo[name=?]", "legal_form[livedemo]"

      assert_select "input#legal_form_audio[name=?]", "legal_form[audio]"

      assert_select "input#legal_form_sharedlaptop[name=?]", "legal_form[sharedlaptop]"

      assert_select "input#legal_form_OS[name=?]", "legal_form[OS]"

      assert_select "input#legal_form_videooutput[name=?]", "legal_form[videooutput]"

      assert_select "input#legal_form_creativecommons[name=?]", "legal_form[creativecommons]"

      assert_select "input#legal_form_email[name=?]", "legal_form[email]"
    end
  end
end
