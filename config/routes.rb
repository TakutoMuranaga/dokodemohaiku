Rails.application.routes.draw do
  # 顧客用
  # URL /Users/sign_in ...
  devise_for :users, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }

  namespace :admin do
  end

  scope module: :public do
    root to: 'homes#top'
    resources :users, only: [:index, :edit, :update, :destroy, :show]
    resources :poems, only: [:new, :index, :show, :edit, :create, :destroy, :update] do
      resources :poem_comments, only: [:create, :destroy]
    end 
    devise_scope :user do
      post 'users/guest_sign_in', to: 'sessions#guest_sign_in'
    end
  end
end
