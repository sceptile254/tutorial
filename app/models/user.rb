class User < ApplicationRecord #ApplicationRecordを継承している
    has_many :weight_histories
end
