class ProductListsController < ApplicationController
  # GET /product_lists
  # GET /product_lists.xml
  def index
    @product_lists = ProductList.all
    @product_ids = Product.all
    @brand_ids = Brand.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_lists }
    end
  end

  # GET /product_lists/1
  # GET /product_lists/1.xml
  def show
    @product_list = ProductList.find(params[:id])
    @product_ids = Product.all
    @brand_ids = Brand.all
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_list }
    end
  end

  # GET /product_lists/new
  # GET /product_lists/new.xml
  def new
    @product_list = ProductList.new
    @product_ids = Product.all
    @brand_ids = Brand.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_list }
    end
  end

  # GET /product_lists/1/edit
  def edit
    @product_list = ProductList.find(params[:id])
    @product_ids = Product.all
    @brand_ids = Brand.all
  end

  # POST /product_lists
  # POST /product_lists.xml
  def create
    @product_list = ProductList.new(params[:product_list])

    respond_to do |format|
      if @product_list.save
        flash[:notice] = 'ProductList was successfully created.'
        format.html { redirect_to(@product_list) }
        format.xml  { render :xml => @product_list, :status => :created, :location => @product_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_lists/1
  # PUT /product_lists/1.xml
  def update
    @product_list = ProductList.find(params[:id])
    @product_ids = Product.all
    @brand_ids = Brand.all
    respond_to do |format|
      if @product_list.update_attributes(params[:product_list])
        flash[:notice] = 'ProductList was successfully updated.'
        format.html { redirect_to(@product_list) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_lists/1
  # DELETE /product_lists/1.xml
  def destroy
    @product_list = ProductList.find(params[:id])
    @product_list.destroy

    respond_to do |format|
      format.html { redirect_to(product_lists_url) }
      format.xml  { head :ok }
    end
  end
end
