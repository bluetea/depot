require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  test "product attributes must be not be empty" do
  	product = Product.new

  	assert product.invalid?
  	assert product.errors[:title].any?
  	assert product.errors[:description].any?
  	assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end


  test "poduct price must be positive" do
  	product = Product.new(title: "my book title",
  		description: "my book description",
  		image_url: "aaa.jpg"
  		)

  	# product.price = -1
  	# assert product.invalid?
  	# assert_equal '必须大于0.01', product.errors[:price]

  	# product.price = 0
  	# assert product.invalid?
  	# assert_equal '必须大于0.01', product.errors[:price]

  	product.price = 1
  	assert product.valid?
  end



end
