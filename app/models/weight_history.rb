class WeightHistory < ApplicationRecord
  belongs_to :user

  # create or update or save
  # validation (ここで弾かれたらSQLは実行されない)
  # SQL実行

  # バリデーション前にset_memoを実行
  before_validation :set_memo

  # 以下バリデーション
  validates :user_id, presence: { message: "ユーザを入力してください" }
  validates :memo, length: { maximum: 255, too_long: "メモは最大%{count}文字以内で入力してください" }
  validate :weight_validate

  # weight_validateメソッドを以下に定義
  def weight_validate
    if weight < 1
      errors.add(:weight, "体重が正しくありません")
    end
  end

  # set_memoメソッドを以下に定義
  def set_memo
    if memo.nil?
      self.memo = "なし"
    end
  end
end
