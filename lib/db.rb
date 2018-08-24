# grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
class Db
  DATA = [{"ProductCode" => 001, "Name" => "Very Cheap Chair", "Price" => 9.25},
          {"ProductCode" => 002, "Name" => "Little table", "Price" => 45.00},
          {"ProductCode" => 003, "Name" => "Funky Light", "Price" => 19.95}]

  def return_token(response)
    # return response.body[10...-2]
  end

end
