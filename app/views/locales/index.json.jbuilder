json.array!(@locales) do |locale|
  json.extract! locale, :id, :code, :name, :icon_class, :right_to_left, :position
  json.url locale_url(locale, format: :json)
end
