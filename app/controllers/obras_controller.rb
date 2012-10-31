class ObrasController < ApplicationController
  # GET /obras
  # GET /obras.json
  def index
    @obras = Obra.all
    @clientes = Cliente

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @obras }
    end
  end

  # GET /obras/1
  # GET /obras/1.json
  def show
    @obra = Obra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @obra }
    end
  end

  # GET /obras/new
  # GET /obras/new.json
  def new
    @clientes = Cliente.all
    @obra = Obra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @obra }
    end
  end

  # GET /obras/1/edit
  def edit
    @clientes = Cliente.all
    @obra = Obra.find(params[:id])
  end

  # POST /obras
  # POST /obras.json
  def create
    @obra = Obra.new(params[:obra])

    respond_to do |format|
      if @obra.save
        format.html { redirect_to @obra, notice: 'Obra was successfully created.' }
        format.json { render json: @obra, status: :created, location: @obra }
      else
        format.html { render action: "new" }
        format.json { render json: @obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /obras/1
  # PUT /obras/1.json
  def update
    @obra = Obra.find(params[:id])

    respond_to do |format|
      if @obra.update_attributes(params[:obra])
        format.html { redirect_to @obra, notice: 'Obra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obras/1
  # DELETE /obras/1.json
  def destroy
    @obra = Obra.find(params[:id])
    @obra.destroy

    respond_to do |format|
      format.html { redirect_to obras_url }
      format.json { head :no_content }
    end
  end
end
