class MicrospostsController < ApplicationController
  # GET /microsposts
  # GET /microsposts.json
  def index
    @microsposts = Microspost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microsposts }
    end
  end

  # GET /microsposts/1
  # GET /microsposts/1.json
  def show
    @microspost = Microspost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microspost }
    end
  end

  # GET /microsposts/new
  # GET /microsposts/new.json
  def new
    @microspost = Microspost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microspost }
    end
  end

  # GET /microsposts/1/edit
  def edit
    @microspost = Microspost.find(params[:id])
  end

  # POST /microsposts
  # POST /microsposts.json
  def create
    @microspost = Microspost.new(params[:microspost])

    respond_to do |format|
      if @microspost.save
        format.html { redirect_to @microspost, notice: 'Microspost was successfully created.' }
        format.json { render json: @microspost, status: :created, location: @microspost }
      else
        format.html { render action: "new" }
        format.json { render json: @microspost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microsposts/1
  # PUT /microsposts/1.json
  def update
    @microspost = Microspost.find(params[:id])

    respond_to do |format|
      if @microspost.update_attributes(params[:microspost])
        format.html { redirect_to @microspost, notice: 'Microspost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microspost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microsposts/1
  # DELETE /microsposts/1.json
  def destroy
    @microspost = Microspost.find(params[:id])
    @microspost.destroy

    respond_to do |format|
      format.html { redirect_to microsposts_url }
      format.json { head :no_content }
    end
  end
end
