require "google/cloud/translate"
require "google/cloud/storage"

class StoriesController < ApplicationController
  before_action :authorized
  before_action :find_story, only: [:show, :edit, :update, :beginning, :savebeginning, :development, :savedevelopment, :twist, :savetwist, :conclusion, :saveconclusion, :japanesestory]

  def index
    @stories = Story.all
  end

  def show
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    translate_helper = TranslateHelper.new
    translation = translate_helper.translate_text(story_params[:beginning],'ja').text
    @story[:ki] = translation
    second_translate_helper = TranslateHelper.new
    second_translation = second_translate_helper.translate_text(story_params[:title],'ja').text
    @story[:daimei] = translation
      if @story.save
        redirect_to development_path(@story)
      else
        render :new
      end
  end

  def development
    render :development
  end

  def savedevelopment
    if @story.update(story_params)
      translate_helper = TranslateHelper.new
      translation = translate_helper.translate_text(story_params[:shou],'en').text
      @story[:development] = translation
      @story.save
      redirect_to twist_path(@story)
    else
      redirect_to :development
    end
  end

  def twist
    render :twist
  end

  def savetwist
    if @story.update(story_params)
      translate_helper = TranslateHelper.new
      translation = translate_helper.translate_text(story_params[:twist],'ja').text
      @story[:ten] = translation
      @story.save
      redirect_to conclusion_path(@story)
    else
      redirect_to :twist
    end
  end

  def conclusion
    render :conclusion
  end

  def saveconclusion
    if @story.update(story_params)
      translate_helper = TranslateHelper.new
      translation = translate_helper.translate_text(story_params[:ketsu],'en').text
      @story[:conclusion] = translation
      @story.save
      redirect_to story_path(@story)
    else
      redirect_to :twist_path
    end
  end

  def edit
  end

  def update
    if @story.update(story_params)
      redirect_to @story
    else
      render :edit
    end
  end

  def destroy
    Story.destroy(params[:id])
    redirect_to stories_path
  end

  private

  def find_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:title, :beginning, :development, :twist, :conclusion, :daimei, :ki, :shou, :ten, :ketsu)
  end

  def authorized
      redirect_to login_path unless session[:writer_id]
  end

end
