def nyc_pigeon_organizer(data)
  new_list = {}

  unique_pigeon_arr = []
  data.each do |attribute, hash_of_features|
    hash_of_features.each do |feature, name_arr|
      name_arr.each do |pigeon_name|
        if !unique_pigeon_arr.include?(pigeon_name)
          unique_pigeon_arr << pigeon_name
        end
      end
    end
  end
  
  unique_pigeon_arr.each do |unique_pigeon_name|
    new_list[unique_pigeon_name] = Hash.new {|k, v| k[v] = []}
    
    data.each do |attribute, hash_of_features|
      
      arr_of_features = new_list[unique_pigeon_name][attribute]
      
      hash_of_features.each do |feature, name_arr|
        name_arr.each do |pigeon_name|
          if pigeon_name == unique_pigeon_name
            arr_of_features << feature
          end
        end
      end
    end
  end

  new_list
end
