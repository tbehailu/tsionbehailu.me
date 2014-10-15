class IeorBlogController < ApplicationController
	def create
	  @ieor_post = IeorPost.new(params[:ieor_post])
	 
	  @ieor_post.save
	  redirect_to @ieor_post
	end

	def index
	  @ieor_post = IeorPost.all
	end

	def show
	  @ieor_post = IeorPost.find(params[:id])
	end

	private
	  def ieor_blog_params
	    params.require(:ieor_post).permit(:title, :text)
	  end
end