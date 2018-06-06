# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        articles#index
#          article_comments GET    /articles/:article_id/comments(.:format)                                                 comments#index
#                           POST   /articles/:article_id/comments(.:format)                                                 comments#create
#       new_article_comment GET    /articles/:article_id/comments/new(.:format)                                             comments#new
#      edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format)                                        comments#edit
#           article_comment GET    /articles/:article_id/comments/:id(.:format)                                             comments#show
#                           PATCH  /articles/:article_id/comments/:id(.:format)                                             comments#update
#                           PUT    /articles/:article_id/comments/:id(.:format)                                             comments#update
#                           DELETE /articles/:article_id/comments/:id(.:format)                                             comments#destroy
#                  articles GET    /articles(.:format)                                                                      articles#index
#                           POST   /articles(.:format)                                                                      articles#create
#               new_article GET    /articles/new(.:format)                                                                  articles#new
#              edit_article GET    /articles/:id/edit(.:format)                                                             articles#edit
#                   article GET    /articles/:id(.:format)                                                                  articles#show
#                           PATCH  /articles/:id(.:format)                                                                  articles#update
#                           PUT    /articles/:id(.:format)                                                                  articles#update
#                           DELETE /articles/:id(.:format)                                                                  articles#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
  resources :articles do
    resources :comments
  end
end
