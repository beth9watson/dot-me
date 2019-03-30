class AprilFoolsController < ApplicationController
  def show
    @source = rand(4).even? ? "/images/troll45.mp3" : "/images/rick45.mp3"

    respond_to do |format|
      format.html do
        render "show.html.slim", layout: 'fools' and return
      end
      format.pdf do
        redirect_to "/sites/default/files/documents/2019A/bills/2019a_1240_01.pdf.html"
      end
      unless format
        redirect_to "/sites/default/files/documents/2019A/bills/2019a_1240_01.pdf.html"
      end
    end
  end
end