class AdminController < ApplicationController
  before_action :basic

private
  def basic
    authenticate_or_request_with_http_basic do |user, pass|
      user == "techgym" && pass == "password"
    end
  end
end
