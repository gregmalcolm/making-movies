class MoviesActorsController < ApplicationController
  before_action :set_movies_actor, only: [:show, :edit, :update, :destroy]

  # GET /movies_actors
  # GET /movies_actors.json
  def index
    @movies_actors = MoviesActor.all
  end

  # GET /movies_actors/1
  # GET /movies_actors/1.json
  def show
  end

  # GET /movies_actors/new
  def new
    @movies_actor = MoviesActor.new
  end

  # GET /movies_actors/1/edit
  def edit
  end

  # POST /movies_actors
  # POST /movies_actors.json
  def create
    @movies_actor = MoviesActor.new(movies_actor_params)

    respond_to do |format|
      if @movies_actor.save
        format.html { redirect_to @movies_actor, notice: 'Movies actor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @movies_actor }
      else
        format.html { render action: 'new' }
        format.json { render json: @movies_actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies_actors/1
  # PATCH/PUT /movies_actors/1.json
  def update
    respond_to do |format|
      if @movies_actor.update(movies_actor_params)
        format.html { redirect_to @movies_actor, notice: 'Movies actor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @movies_actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies_actors/1
  # DELETE /movies_actors/1.json
  def destroy
    @movies_actor.destroy
    respond_to do |format|
      format.html { redirect_to movies_actors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movies_actor
      @movies_actor = MoviesActor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movies_actor_params
      params.require(:movies_actor).permit(:belongs_to, :belongs_to)
    end
end
