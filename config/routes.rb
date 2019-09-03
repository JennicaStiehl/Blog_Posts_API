Rails.application.routes.draw do
  #get '/', to: 'welcome#index'

  #resources :blog_posts, only: [:index]

  namespace :api do
    namespace :v1 do
      get '/blog_posts', to: 'blog_posts#index'
    end
  end

end
