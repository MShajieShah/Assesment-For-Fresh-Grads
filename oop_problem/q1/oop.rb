class Internet
    def self.get_response(url)

        if url.include?('api1')
            if url.include?('token=123')
                return get_data_from_api1
            else
                puts 'Add Security token in the end of url like this => https://test-api1/get_items?token=123'
            end
        end
        
        if url.include?('api2')
            if url.include?('token=456')
                return get_data_from_api2
            else
                puts 'Add Security token in the end of url like this => https://test-api2/items?token=456'
            end
        end
        
        if url.include?('api3')
            if url.include?('token=789')
                return get_data_from_api3
            elsen 
                puts 'Add Security token in the end of url like this => https://test-api3/all_items?token=789'
            end
        end
    end

    private

    def self.get_data_from_api1
        {"data"=>[
            {"name of item"=> 'a1', "Description of item:"=> 'abc' ,"price" => '123'},
            {"name of item"=> 'a2', "Description of item:"=> 'def' ,"price" => '465'},
            {"name of item"=> 'a3', "Description of item:"=> 'ghi' ,"price" => '789'},
            {"name of item"=> 'a4', "Description of item:"=> 'jkl' ,"price" => '321'},
            {"name of item"=> 'a5', "Description of item:"=> 'mno' ,"price" => '654'}
        ]}
    end

    def self.get_data_from_api2
        {"data" => [
            ["name" , "price" , "description"],
            ['a6', '123', 'abc-v2'],
            ['a7', '456', 'abc-v2'],
            ['a8', '789', 'abc-v2'],
            ['a9', '321', 'abc-v2'],
            ['a10','654', 'abc-v2']
        ]}
    end

    def self.get_data_from_api3
        {"data" => [
            [ {"Name"=> 'a11'} , {"DescriPtioN"=> 'abc-v3'} , {"Price" => '123'} ],
            [ {"Name"=> 'a12'} , {"DescriPtioN"=> 'def-v3'} , {"Price" => '465'} ],
            [ {"Name"=> 'a13'} , {"DescriPtioN"=> 'ghi-v3'} , {"Price" => '789'} ],
            [ {"Name"=> 'a14'} , {"DescriPtioN"=> 'jkl-v3'} , {"Price" => '321'} ],
            [ {"Name"=> 'a15'} , {"DescriPtioN"=> 'mno-v3'} , {"Price" => '654'} ]
        ]}
    end

end


class SearchEngine
    @@database = []
    @@instance  = nil
    
    def initialize()
        dummy_data_already_in_data_base
    end
    
    def self.get_instance
        if @@instance == nil
            @@instance = SearchEngine.new()
        end
        @@instance
    end

    def display_data
        puts @@database
    end
    
    def store_data(name , price ,description)
        hash = {"name"=> name , "price" => price , "description" => description}
        @@database << hash
    end    
    
    private
    
    def dummy_data_already_in_data_base
        @@database << {"name"=> "ITEM-1" , "price" => "100" , "description" => "abc"}
        @@database << {"name"=> "ITEM-1" , "price" => "100" , "description" => "abc"}
        @@database << {"name"=> "ITEM-2" , "price" => "101" , "description" => "def"}
        @@database << {"name"=> "ITEM-3" , "price" => "102" , "description" => "ghi"}
        @@database << {"name"=> "ITEM-4" , "price" => "103" , "description" => "jkl"}
        @@database << {"name"=> "ITEM-5" , "price" => "104" , "description" => "mno"}
    end
end


# start your code here or create a new file and import these two classes in that file.
