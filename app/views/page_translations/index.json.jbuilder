json.array!(@page_translations) do |page_translation|
  json.extract! page_translation, :id, :locale_id, :url_code, :title, :body, :page_id
  json.url page_translation_url(page_translation, format: :json)
end
