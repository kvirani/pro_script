class HomeController < ApplicationController

  layout 'auth'

  def index
    @on_search = true
  end

end
