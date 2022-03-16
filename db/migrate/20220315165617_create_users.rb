class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, limit: 128, null:false #string型のnameカラム
      #limit: 128とnull:falseを追記
      t.integer :age #integer型のageカラム

      t.timestamps
    end
    add_index :users, :name #usersテーブルのnameカラムに対してindexを追加する

  end
end
