class PostsController < ApplicationController

	before_action :find_post, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all.order("created_at DESC")
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
	  if @post.save
	  	flash[:success] = "The post was created!"
	   	redirect_to @post
	  else 
	  	render ‘new’
	  end 
	end

	def edit
	end

	def update
		if @post.update(post_params)
			flash[:success] = 'The post was updated!'
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		flash[:success] = 'The post was deleted'
		redirect_to root_path
	end

private

	def post_params
		params.require(:post).permit(:title, :content)
	end

	def find_post
		@post = Post.find(params[:id])
	end

end