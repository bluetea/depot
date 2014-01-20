class Product < ActiveRecord::Base
	validates :title, uniqueness:{message: "标题必须为唯一的"},presence: {message: "标题不能为空！"}
	validates :description, presence: {message: "描述不能为空"}
	validates :image_url, presence: {message: "必须要加入图片"}, format: {with: /\.(gif|jpg|png|jpeg|JPG|GIF)\Z/, message:"图片格式不正确"}
	validates :price, numericality: {greater_than_or_equal_to: 0.01, message: "必须大于0.01"}
end
