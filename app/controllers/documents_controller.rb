class DocumentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @document = Document.new
  end

  def create
    @user = User.find(params[:user_id])
    @document = current_user.partiipation.document.build(documents_params)
    @document.user = @user

    if @document.save
      redirect_to document_path(@document)
    else
    render :new
    end
  end

  def edit
    @rdocument = Document.find(params[:id])
  end

  def update
  end

  def delete
  end

private

  def documents_params
    params.require(:document).permit(:name, :url)
  end
end
