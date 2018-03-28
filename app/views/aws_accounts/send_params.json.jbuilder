json.categories do
  json.value @category_values
  json.option @category_options
end

json.statuses do
  json.value @status_values
  json.option @status_options
end
