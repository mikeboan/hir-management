class AppsController < ApplicationController
  def new
    @app = App.new
  end

  def create
    @app = App.new(app_params)

    if @app.save
      render :show
    else
      flash[:errors] = @app.errors.full_messages
      redirect_to apply_url
    end
  end

  private

  def app_params
    params
      .require(:app)
      .permit(
        :first_name,
        :last_name,
        :email,
        response_attributes: [ :id, :question_id, :body ]
      )
  end
end
