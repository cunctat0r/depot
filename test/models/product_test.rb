require 'test_helper'

class ProductTest < ActiveSupport::TestCase  
  def new_product(image_url)
    Product.new(title: 'Coffee',
                description: 'YYY',
                price: 1,
                image_url: image_url)
  end

  test 'product attributes must not be empty' do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:price].any?
  end

  test 'product price must be positive' do
    product = Product.new(title: 'Coffee',
                          description: 'YYY',
                          image_url: 'zzz.jpg')
    product.price = -1
    assert product.invalid?
    assert_equal ['must be greater than or equal to 0.01'], product.errors[:price]

    product.price = 0
    assert product.invalid?    
    assert_equal ['must be greater than or equal to 0.01'], product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  test 'image_url' do
    ok = %w{ fred.gif fred.jpg fred.png FrEd.PNG http://a.b.c/x/y/z/fred.gif}
    bad = %w{ fred.doc fred.gif/more fred.gif.more}

    ok.each do |name|
      assert new_product(name).valid? "#{name} should be valid" 
    end

    bad.each do |name|
      assert new_product(name).invalid? "#{name} should be invalid" 
    end
  end

  test 'product should be invalid without unique title' do
    product = Product.new(title: products(:espresso).title,
                          description: 'YYY',
                          price: 1,
                          image_url: 'zzz.jpg')
    assert product.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], product.errors[:title]
  end

  test 'title should be at least 5 characters' do
    product = products(:espresso)
    product.title = 'a'*4
    assert product.invalid?

    product.title = 'a'*5
    assert product.valid?    
  end

end
