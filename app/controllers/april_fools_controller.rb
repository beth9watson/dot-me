class AprilFoolsController < ApplicationController
  def show
    @source = rand(4).even? ? "/images/troll45.mp3" : "/images/rick45.mp3"
    render layout: 'fools'
  end
end