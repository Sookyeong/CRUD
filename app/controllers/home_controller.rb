class HomeController < ApplicationController
  def index
    
    @posts = Post.all.reverse
  
  end
  
  def post_write
    
    new_post = Post.new
    new_post.post_title = params[:view_post_title]
    new_post.post_content = params[:view_post_content]
    
    new_post.save
    
    redirect_to "#"
    
  end
  
  def destroy
    
    @post = Post.find(params[:post_id])
    @post.destroy
    
    redirect_to "#"
  
  end
  
  def update
    
    @post = Post.find(params[:post_id])
    
  end
  
  def edit
    
    @post = Post.find(params[:post_id])
    
    @post.post_title = params[:view_post_title]
    @post.post_content = params[:view_post_content]
    
    @post.save
    
    redirect_to "#"
    
  end
  
end
