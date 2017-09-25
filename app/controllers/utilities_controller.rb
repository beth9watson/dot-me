class UtilitiesController < ApplicationController
  def style_samples
    render 'style_samples', layout: 'landing'
  end
end