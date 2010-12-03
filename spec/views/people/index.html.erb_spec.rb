require 'spec_helper'

describe "/people/index.html.erb" do
  include PeopleHelper

  before(:each) do
    people = [
      stub_model(Person,
        :name => "value for name",
        :surname => "value for surname"
      ),
      stub_model(Person,
        :name => "value for name",
        :surname => "value for surname"
      )
    ]
    assigns[:people] = people
    table = Table.new
    table.add_headers ["Name", "Surname", "Date of birth"]
    people.each do |person|
      table.add_row [person.name, person.surname, person.date_of_birth ]
    end
   assigns[:table] = table
  end

  it "renders a list of people" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for surname".to_s, 2)
  end
end
