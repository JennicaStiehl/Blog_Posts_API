class BlogPostsController < ApplicationController

  def index
    BlogPost.all
  end

end
