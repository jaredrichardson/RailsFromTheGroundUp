class SkateboardsController < ApplicationController

  def print_params(params)
    puts "\n\n\n"
    puts "The params are #{params.to_s}\n"
    puts "The params for this request are: \n"
    params.each{ | key, value |
        puts "   "+ key.to_s + " => "+ value.to_s
    }
    puts "\n\n"
  end

  # GET /skateboards
  # GET /skateboards.json
  def index
    print_params(params)

    @skateboards = Skateboard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skateboards }
    end
  end

  # GET /count
  # GET /count.json
  def count
    print_params(params)
    @skateboards = Skateboard.all
    @count = Skateboard.count

    respond_to do |format|
      format.html # count.html.erb
      format.json { render json: @count }
    end
  end

  # GET /skateboards/1
  # GET /skateboards/1.json
  def show
    print_params(params)
    @skateboard = Skateboard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skateboard }
    end
  end

  # GET /skateboards/new
  # GET /skateboards/new.json
  def new
    print_params(params)
    @skateboard = Skateboard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skateboard }
    end
  end

  # GET /skateboards/1/edit
  def edit
    print_params(params)
    @skateboard = Skateboard.find(params[:id])
  end

  # POST /skateboards
  # POST /skateboards.json
  def create
    print_params(params)
    @skateboard = Skateboard.new(params[:skateboard])

    respond_to do |format|
      if @skateboard.save
        format.html { redirect_to @skateboard, notice: 'Skateboard was successfully created.' }
        format.json { render json: @skateboard, status: :created, location: @skateboard }
      else
        format.html { render action: "new" }
        format.json { render json: @skateboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skateboards/1
  # PUT /skateboards/1.json
  def update
    print_params(params)
    @skateboard = Skateboard.find(params[:id])

    respond_to do |format|
      if @skateboard.update_attributes(params[:skateboard])
        format.html { redirect_to @skateboard, notice: 'Skateboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skateboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skateboards/1
  # DELETE /skateboards/1.json
  def destroy
    print_params(params)
    @skateboard = Skateboard.find(params[:id])
    @skateboard.destroy

    respond_to do |format|
      format.html { redirect_to skateboards_url }
      format.json { head :no_content }
    end
  end
end
