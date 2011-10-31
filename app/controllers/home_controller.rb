class HomeController < ApplicationController
  def index
	@Posts = Post.all
	
	respond_to do |format|
		format.html #index.html.erb
		format.json {render :json => @Posts }
	end
  end

end
