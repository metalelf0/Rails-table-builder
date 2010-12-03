require 'spec_helper'

describe "/people/edit.html.erb" do
  include PeopleHelper

  before(:each) do
    assigns[:person] = @person = stub_model(Person,
      :new_record? => false,
      :name => "value for name",
      :surname => "value for surname"
    )
  end

  it "renders the edit person form" do
    render

    response.should have_tag("form[action=#{person_path(@person)}][method=post]") do
      with_tag('input#person_name[name=?]', "person[name]")
      with_tag('input#person_surname[name=?]', "person[surname]")
    end
  end
end
