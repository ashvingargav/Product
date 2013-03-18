class ProductController < ApplicationController
  def create
  end

  def new
    @product = Product1.new
  end

  def create
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#{params.inspect}"
    @product=Product1.new(params[:product])    
    puts "/n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1#{@product.inspect}"    
    respond_to do |format|
      @product.save
      format.html {redirect_to :all_product}
      format.json {rander :json => @product}
      format.xml {rander :xml => @product}
    end
  end

  def all
    @product=Product1.all
    puts"************************************Array : #{@product.inspect}"    
  end  
end
