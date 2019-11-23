def nyc_pigeon_organizer(data)
  new_list = {}
  pigeon_hash = {}
  inner_arr = []
  data.each do |key, value|
    value.each do |inner_key, inner_value|
      inner_value.each do |pigeon_name| 
          pigeon_hash[key] = inner_arr
          new_list[pigeon_name] = pigeon_hash
      end
    end
  end
  new_list
end
