def nyc_pigeon_organizer(data)
  new_list = {}
  data.each do |key, value|
    value.each do |inner_key, inner_value|
      inner_value.each do |pigeon_name| 
        new_list[pigeon_name] = {

        }
      end

    end
  end
  new_list
end
