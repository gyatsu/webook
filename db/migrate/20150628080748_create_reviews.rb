class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.references :memo, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :reviews, [:memo_id, :user_id], unique: true
  end
end

#add_indexの設定がポイント
#一人のユーザーは一つのレビューしかできない
#reviewテーブルではmemo_idとuser_idの組み合わせは一対のみ
