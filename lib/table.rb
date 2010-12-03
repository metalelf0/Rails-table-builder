class Table
  attr_accessor :headers, :rows

  def initialize 
    @headers = []
    @rows    = []
  end
  
  def add_headers headers
    @headers = headers
  end

  def add_row row
    @rows << row
  end
end
