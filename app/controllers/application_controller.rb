class ApplicationController < ActionController::Base
  include Clearance::Controller

  before_action :require_login

  def index
    current_user.articles
  end
end

class ArticlesController < ApplicationController
  before_action :require_login

  def index
    current_user.articles
  end
end