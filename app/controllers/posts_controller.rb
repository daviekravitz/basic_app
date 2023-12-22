class PostsController < ApplicationController

	skip_before_action :verify_authenticity_token

	before_action :set_post, only: [ :update, :destroy ]

	def create
		@posts = Post.create(content: params[:content], user_id: params[:user_id])
		render json: params
	end

	def show
		@posts = Post.all
		render json: @posts
	end

	def update
		if @post.update(content: params[:content])
			@post.content = params[:content]
			render json: @post
		else
			render json: @post.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@post.destroy
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end
end
