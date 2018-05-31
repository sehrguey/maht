class W0wordsController < ApplicationController
  before_action :set_w0word, only: [:show, :edit, :update, :destroy]

  # GET /w0words
  # GET /w0words.json
  def index
     
     @w0words = W0word.all
  if params[:search]
    @w0words = W0word.search(params[:search]).order("created_at DESC")
  else
    @w0words = W0word.all.order("created_at DESC")
  end
  end

  # GET /w0words/1
  # GET /w0words/1.json
  def show
  end

 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_w0word
      @w0word = W0word.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def w0word_params
      params.require(:w0word).permit(:expression, :interpretation, :usage_neutral, :usage_intense, :category, :category_definition, :synonym)
    end
end
