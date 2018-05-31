class W2wordsController < ApplicationController
  before_action :set_w2word, only: [:show, :edit, :update, :destroy]

  # GET /w2words
  # GET /w2words.json
  def index
     
     @w2words = W2word.all
  if params[:search]
    @w2words = W2word.search(params[:search]).order("created_at DESC")
  else
    @w2words = W2word.all.order("created_at DESC")
  end
  end

  # GET /w2words/1
  # GET /w2words/1.json
  def show
  end

 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_w2word
      @w2word = W2word.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def w2word_params
      params.require(:w2word).permit(:expression, :interpretation, :usage_neutral, :usage_intense, :category, :category_definition, :synonym)
    end
end
