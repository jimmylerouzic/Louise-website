class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact, :index]

  def home
  end

  def about
  end

  def contact
  end
end
