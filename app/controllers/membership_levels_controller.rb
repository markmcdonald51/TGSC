class MembershipLevelsController < ApplicationController
  before_action :set_membership_level, only: [:show, :edit, :update, :destroy]

  # GET /membership_levels
  # GET /membership_levels.json
  def index
    @membership_levels = MembershipLevel.all
  end

  # GET /membership_levels/1
  # GET /membership_levels/1.json
  def show
  end

  # GET /membership_levels/new
  def new
    @membership_level = MembershipLevel.new
  end

  # GET /membership_levels/1/edit
  def edit
  end

  # POST /membership_levels
  # POST /membership_levels.json
  def create
    @membership_level = MembershipLevel.new(membership_level_params)

    respond_to do |format|
      if @membership_level.save
        format.html { redirect_to @membership_level, notice: 'Membership level was successfully created.' }
        format.json { render :show, status: :created, location: @membership_level }
      else
        format.html { render :new }
        format.json { render json: @membership_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /membership_levels/1
  # PATCH/PUT /membership_levels/1.json
  def update
    respond_to do |format|
      if @membership_level.update(membership_level_params)
        format.html { redirect_to @membership_level, notice: 'Membership level was successfully updated.' }
        format.json { render :show, status: :ok, location: @membership_level }
      else
        format.html { render :edit }
        format.json { render json: @membership_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /membership_levels/1
  # DELETE /membership_levels/1.json
  def destroy
    @membership_level.destroy
    respond_to do |format|
      format.html { redirect_to membership_levels_url, notice: 'Membership level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membership_level
      @membership_level = MembershipLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def membership_level_params
      params.require(:membership_level).permit(:name, :position, :description, :duration, :usd_cost)
    end
end
