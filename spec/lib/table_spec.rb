require File.join(File.dirname(__FILE__), '..', 'spec_helper')
require File.join(::Rails.root.to_s, 'lib', 'table')

describe Table do
  
  before(:each) do
      @valid_headers = ["first field", "second field"]
      @valid_row = ["value for first field", "value for second field" ]
  end
  
  it "should create a table and add data to it" do
    Proc.new {
      table = Table.new
      table.add_headers @valid_headers
      table.add_row @valid_row
    }.should_not raise_error
  end

end
