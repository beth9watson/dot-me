class AprilFoolsController < ApplicationController
  def show
    @source = rand(4).even? ? "/images/Trololo.mp3" : "/images/rick.mp3"
    render layout: 'fools'
  end
end