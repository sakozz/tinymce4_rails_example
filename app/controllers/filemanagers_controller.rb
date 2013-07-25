class FilemanagersController < ApplicationController
  # GET /filemanagers
  # GET /filemanagers.json
  def index
    @filemanagers = Filemanager.all
    @filemanager=Filemanager.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @filemanagers }
    end
  end

  # GET /filemanagers/1
  # GET /filemanagers/1.json
  def show
    @filemanager = Filemanager.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @filemanager }
    end
  end

  # GET /filemanagers/new
  # GET /filemanagers/new.json
  def new
    @filemanager = Filemanager.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @filemanager }
    end
  end

  # GET /filemanagers/1/edit
  def edit
    @filemanager = Filemanager.find(params[:id])
  end

  # POST /filemanagers
  # POST /filemanagers.json
  def create
    @filemanager = Filemanager.new(params[:filemanager])

    respond_to do |format|
      if @filemanager.save
        format.html { redirect_to filemanagers_path, notice: 'Filemanager was successfully created.' }
        format.json { render json: @filemanager, status: :created, location: @filemanager }
      else
        format.html { render action: "new" }
        format.json { render json: @filemanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /filemanagers/1
  # PUT /filemanagers/1.json
  def update
    @filemanager = Filemanager.find(params[:id])

    respond_to do |format|
      if @filemanager.update_attributes(params[:filemanager])
        format.html { redirect_to @filemanager, notice: 'Filemanager was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @filemanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filemanagers/1
  # DELETE /filemanagers/1.json
  def destroy
    @filemanager = Filemanager.find(params[:id])
    @filemanager.destroy

    respond_to do |format|
      format.html { redirect_to filemanagers_url }
      format.json { head :no_content }
    end
  end
end
