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

    resources :genres, only: [:index,:edit,:create,:update]
  end

  scope module: :public do
    root to: 'homes#top'
    resources :users, only: [:index, :edit, :update, :destroy, :show] do
      #ネストさせる
      resource :relationships, only: [:create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followers' => 'relationships#followers', as: 'followers'
    end
    # 退会確認画面
    get '/users/:id/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'
    # 論理削除用のルーティング
    patch '/users/:id/withdrawal' => 'users#withdrawal', as: 'withdrawal'
    resources :poems, only: [:new, :index, :show, :edit, :create, :destroy, :update] do
      resources :poem_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end
    devise_scope :user do
      post 'users/guest_sign_in', to: 'sessions#guest_sign_in'
    end
  end
end
