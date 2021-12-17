require_relative "oop.rb"

class SyncClass
  def self.add_data(url)
    if url.include?("api1")
      a = Internet.get_response(url)
      instance = SearchEngine.get_instance
      instance.store_data(a["data"][0]["name of item"], a["data"][0]["Description of item:"], a["data"][0]["price"])
      instance.store_data(a["data"][1]["name of item"], a["data"][1]["Description of item:"], a["data"][1]["price"])
      instance.store_data(a["data"][2]["name of item"], a["data"][2]["Description of item:"], a["data"][2]["price"])
      instance.store_data(a["data"][3]["name of item"], a["data"][3]["Description of item:"], a["data"][3]["price"])
      instance.store_data(a["data"][4]["name of item"], a["data"][4]["Description of item:"], a["data"][4]["price"])
      instance.display_data
    elsif url.include?("api2")
      a = Internet.get_response(url)
      instance = SearchEngine.get_instance
      instance.store_data(a["data"][1][0], a["data"][1][1], a["data"][1][2])
      instance.store_data(a["data"][2][0], a["data"][2][1], a["data"][2][2])
      instance.store_data(a["data"][3][0], a["data"][3][1], a["data"][3][2])
      instance.store_data(a["data"][4][0], a["data"][4][1], a["data"][4][2])
      instance.store_data(a["data"][5][0], a["data"][5][1], a["data"][5][2])
      instance.display_data
    elsif url.include?("api3")
      a = Internet.get_response(url)
      instance = SearchEngine.get_instance
      instance.store_data(a["data"][0][0]["Name"], a["data"][0][1]["DescriPtioN"], a["data"][0][2]["Price"])
      instance.store_data(a["data"][1][0]["Name"], a["data"][1][1]["DescriPtioN"], a["data"][1][2]["Price"])
      instance.store_data(a["data"][2][0]["Name"], a["data"][2][1]["DescriPtioN"], a["data"][2][2]["Price"])
      instance.store_data(a["data"][3][0]["Name"], a["data"][3][1]["DescriPtioN"], a["data"][3][2]["Price"])
      instance.store_data(a["data"][4][0]["Name"], a["data"][4][1]["DescriPtioN"], a["data"][4][2]["Price"])
      instance.display_data
    end
  end
end
