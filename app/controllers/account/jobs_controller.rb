class Account::JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = current_user.participated_jobs
  end
end
