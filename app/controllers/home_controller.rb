class HomeController < ApplicationController
  before_action :set_tse_api_service
  def index
    @dados = @tse_api_service.presidente
  end

  def set_tse_api_service
    @tse_api_service = TseApi.new
  end
end
