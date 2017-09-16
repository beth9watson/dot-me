class LandingController < ApplicationController
  def show
    render 'show', layout: 'landing'
  end
end