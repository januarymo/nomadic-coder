require 'pry'

class TutorLanguagesController < ApplicationController

  respond_to :js, :html, :json
  before_action :set_tutor_language, only: [:show, :edit, :update, :destroy, :upvote]


  def endorse
    @tutor_language = TutorLanguage.find(params[:id])
    @tutor_language.liked_by current_user
    @likes = @tutor_language.get_likes.size
  end



end
