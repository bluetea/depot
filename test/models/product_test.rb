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

  	product.price = -1
  	assert product.invalid?



  	product.price = 0
  	assert product.invalid?


  	product.price = 1
  	assert product.valid?
  end

  def new_product(image_url)
    Product.new(title: "test image book",
      description: "yyy",
      price: 1,
      image_url: image_url
      )
  end
  test "image_url" do
    ok = %w[aaa.jpg fread.gif FFF.jpg AAA.GIF aa/abb.jpg]
    bad = %w[aa.doc bb.html a/dl.ttt]
    ok.each do |img|
      assert new_product(img).valid?, "#{img} should be ok"
    end
    bad.each do |img|
      assert new_product(img).invalid?, "#{img} should be invalid"
    end
  end

  test "product is no valid without a unique title" do
    product = Product.new(title: products(:test_fix).title,
      description: "ruby",
      price: 44.34,
      image_url: "aa/bb.jpg"
      )
    assert product.invalid?
  end 




end
