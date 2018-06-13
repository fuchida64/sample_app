Rails.application.routes.draw do
     get 'posts/new'
	 get '/top' => 'root#top'
	 post '/posts' => 'posts#create'
	 get '/posts' => 'posts#index'
	 get '/posts/:id' => 'posts#show', as: 'post'
	 get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
	 patch '/posts/:id' => 'posts#update', as: 'update_post'
	 delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'
end
Refile.secret_key = '8877b9eb41d2e71abd34f0487a7b87b7dc1303a65eb35b5c15a3d533c2987584f46da93d93f0fb6410b2ed77afe5fc76c1cc08421c7e15ccd99bc7db844e770a'