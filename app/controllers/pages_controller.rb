class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:homefeed]

  def homefeed
  end
end
