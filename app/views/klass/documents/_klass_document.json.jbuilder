json.extract! klass_document, :id, :name, :klass_id, :data, :filename, :created_at, :updated_at
json.url klass_document_url(klass_document, format: :json)
