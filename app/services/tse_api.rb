class TseApi
  include HTTParty
  base_uri 'https://resultados.tse.jus.br/oficial/ele2022/544/dados-simplificados/br'
  def initialize
    @options = {}
  end

  def presidente
    self.class.get('/br-c0001-e000544-r.json', @options)
  end

  def ele
    self.class.get('/ele', @options)
  end

end