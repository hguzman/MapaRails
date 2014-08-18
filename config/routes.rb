Rails.application.routes.draw do
  scope "(:locale)", locale: /es|en/ do
    root 'welcome#index'
  end  
end
