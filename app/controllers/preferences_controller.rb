class PreferencesController < ApplicationController

    def index
        @preferences = Preference.order(:name)
        render json: @preferences
    end

    def show
        @preference = Preference.find(params[:id])
        render json: @preference
    end

    def new
        @preference = Preference.new
        render json: @preference
    end

    def edit
        @preference = Preference.find(params[:id])
        render json: @preference
    end

    def create
        @preference = Preference.create(preference_params)
        render json: @preference
    end

    def update
        @preference = Preference.find(params[:id])
        @preference.update(preference_params)
        render json: @preference
    end

    def destroy
        @preference = Preference.find(params[:id])
        @preference.destroy
        render json: @preference
    end

    private

    def preference_params
        params.permit(:user_id, :user_id, :restriction)
    end
end
