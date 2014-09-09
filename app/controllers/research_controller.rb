class ResearchController < ApplicationController
	def create
	  @research_post = ResearchPost.new(params[:research_post])
	 
	  @research_post.save
	  redirect_to @research_post
	end

	def index
	  @research_post = ResearchPost.all
	end

	def show
	  @research_post = ResearchPost.find(params[:id])
	end

	private
	  def research_params
	    params.require(:article).permit(:title, :text)
	  end
end
