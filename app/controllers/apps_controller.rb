class AppsController < ApplicationController
  def new
    @app = App.new
  end

  def create
    @app = App.new(app_params)

    if @app.save
      redirect_to app_url(@app)
    else
      flash[:errors] = @app.errors
      redirect_to apply_url
    end
  end

  def show
    @app = App.find(params[:id])
  end

  private

  def app_params
    params
      .require(:app)
      .permit(
        :first_name,
        :last_name,
        :email,
        responses_attributes: [ :question_id, :body ]
      )
  end
end
