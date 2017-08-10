class CorporaController < ApplicationController

  def index
    @corpora = Corpus.all
	@corpus = Corpus.find(params[:id])
	@dict = File.join(Rails.root, 'public', @corpus.fname)
	@generator = MarkyMarkov::Dictionary.new(File.join(Rails.root, 'public', @corpus.fname))
	@number = 5
  end

  def generate
	@generator = MarkyMarkov::Dictionary.new(File.join(Rails.root, 'public', params[:fname]))
	@number = params[:number].to_i
	respond_to do |f|
		f.js
	end
  end
end