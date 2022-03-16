class UsersController < ActionController::Base #必ず継承
  def index
    @users = User.all #Userモデルのすべてのレコードを取得し、@usersに格納
  end

  def show
    #params["id"]...ルーティングで設定した変数を受け取れる
    #User.find(1)...id1を取得する
    #ルーティングから受け取った変数を受け取り、
    #そのidに対応するデータを取得し、
    #@userというインスタンス変数に代入する
    #なぜ@をつけるかというと、Viewに渡したいから
    #インスタンス変数でないと、Viewまで渡せない！
    @user = User.find(params["id"])
  end
end