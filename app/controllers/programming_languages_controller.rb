class ProgrammingLanguagesController < ApplicationController
  before_action :set_programming_language, only: %i[ show edit update destroy ]

  # GET /programming_languages or /programming_languages.json
  def index
    @programming_languages = ProgrammingLanguage.all
  end

  # GET /programming_languages/1 or /programming_languages/1.json
  def show
  end

  # GET /programming_languages/new
  def new
    @programming_language = ProgrammingLanguage.new
  end

  # GET /programming_languages/1/edit
  def edit
    @programming_language = ProgrammingLanguage.find(params[:id])
  end

  # POST /programming_languages or /programming_languages.json
  def create
    @programming_language = ProgrammingLanguage.new(programming_language_params)

    if @programming_language.save
      redirect_to @programming_language, notice: 'Programming language was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /programming_languages/1 or /programming_languages/1.json
  def update
    @programming_language = ProgrammingLanguage.find(params[:id])

    if @programming_language.update(programming_language_params)
      redirect_to @programming_language, notice: 'Programming language was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /programming_languages/1 or /programming_languages/1.json
  def destroy
    @programming_language = ProgrammingLanguage.find(params[:id])
    @programming_language.destroy

    redirect_to programming_languages_url, notice: 'Programming language was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programming_language
      @programming_language = ProgrammingLanguage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def programming_language_params
      params.require(:programming_language).permit(:title, :description, :link)
    end
end
