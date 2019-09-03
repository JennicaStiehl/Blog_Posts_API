class Api::V1::BlogPostsController < ApplicationController

  def index
    render json: BlogPost.all
  end

end
