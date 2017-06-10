json.extract! licitacao, :id, :tipo, :data, :valor, :descricao, :created_at, :updated_at
json.url licitacao_url(licitacao, format: :json)
