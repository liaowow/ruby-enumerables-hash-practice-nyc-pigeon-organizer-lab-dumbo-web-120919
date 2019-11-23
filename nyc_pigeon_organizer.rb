def nyc_pigeon_organizer(data)
  new_list = {}
  data.each do |key, value|
    value.each do |inner_key, inner_value|
      new_list[inner_value] = {
        :key => value[inner_key]
      }
    end
  end
  new_list
end
