require File.join(File.dirname(__FILE__), '..', '..', 'spec_helper')

describe "/shared/_table.html.erb" do

  before :each do 
    @people = [
      stub_model(Person,
        :name => "value for name",
        :surname => "value for surname"
      ),
      stub_model(Person,
        :name => "value for name",
        :surname => "value for surname"
      )
    ]

    @table = Table.new
  end

  it "should render an empty table" do
    render "/shared/_table.html.erb", :locals => {:table => @table}
    response.should have_tag "table" 
    response.should have_tag "table thead"
    response.should have_tag "table tbody"
  end

  it "should render a row for headers and a row for each table row" do
    @table.add_headers ["Name", "Surname", "Date of birth"]
    @people.each do |person|
      @table.add_row [person.name, person.surname, person.date_of_birth ]
    end
    render "/shared/_table.html.erb", :locals => {:table => @table}
    response.should have_tag "tr", :count => 3

  end
end

