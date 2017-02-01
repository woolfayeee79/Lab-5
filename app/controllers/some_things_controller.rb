class SomeThingsController < ApplicationController
  before_action :set_some_thing, only: [:show, :edit, :update, :destroy]

  # GET /some_things
  # GET /some_things.json
  def index
    @some_things = SomeThing.all
  end

  # GET /some_things/1
  # GET /some_things/1.json
  def show
  end

  # GET /some_things/new
  def new
    @some_thing = SomeThing.new
  end

  # GET /some_things/1/edit
  def edit
  end

  # POST /some_things
  # POST /some_things.json
  def create
    @some_thing = SomeThing.new(some_thing_params)

    respond_to do |format|
      if @some_thing.save
        format.html { redirect_to @some_thing, notice: 'Some thing was successfully created.' }
        format.json { render :show, status: :created, location: @some_thing }
      else
        format.html { render :new }
        format.json { render json: @some_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /some_things/1
  # PATCH/PUT /some_things/1.json
  def update
    respond_to do |format|
      if @some_thing.update(some_thing_params)
        format.html { redirect_to @some_thing, notice: 'Some thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @some_thing }
      else
        format.html { render :edit }
        format.json { render json: @some_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /some_things/1
  # DELETE /some_things/1.json
  def destroy
    @some_thing.destroy
    respond_to do |format|
      format.html { redirect_to some_things_url, notice: 'Some thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_some_thing
      @some_thing = SomeThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def some_thing_params
      params.require(:some_thing).permit(:val)
    end
end
