class W1wordsController < ApplicationController
  before_action :set_w1word, only: [:show, :edit, :update, :destroy]

  # GET /w1words
  # GET /w1words.json
  def index
     
     @w1words = W1word.all
  if params[:search]
    @w1words = W1word.search(params[:search]).order("created_at DESC")
  else
    @w1words = W1word.all.order("created_at DESC")
  end
  end

  # GET /w1words/1
  # GET /w1words/1.json
  def show
  end

 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_w1word
      @w1word = W1word.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def w1word_params
      params.require(:w1word).permit(:expression, :interpretation, :usage_neutral, :usage_intense, :category, :category_definition, :synonym)
    end
end
