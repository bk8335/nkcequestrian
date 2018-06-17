class PostsController < ApplicationController

	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate, only: [:admin, :new, :create, :edit, :update, :destroy]

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

	def admin
		redirect_to blog_url if authenticate
	end

protected
	def authenticate
    authenticate_or_request_with_http_basic do |username, password|
   		admin_username = Rails.application.secrets.admin_username
   		admin_password = Rails.application.secrets.admin_password
   		session[:admin] = true if (username == admin_username && password == admin_password)
  	end
  end

private

	def post_params
		params.require(:post).permit(:title, :content, :image)
	end

	def find_post
		@post = Post.find(params[:id])
	end

end
