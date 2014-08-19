Rails.application.routes.draw do
  
  scope "(:locale)", locale: /es|en/ do
    root 'welcome#index'
    devise_for :users
  end  
end
