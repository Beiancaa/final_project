class DocumentsController < ApplicationController
  
   def index
      @documents = Document.where(user_id: current_user)
   end
   
   def new
      @document = current_user.documents.build
   end
   
   def create
      @document = current_user.documents.build(document_params)
      
      if @document.save
         redirect_to documents_path, notice: "The document #{@document.name} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @document = document.find(params[:id])
      @document.destroy
      redirect_to documents_path, notice:  "The document #{@document.name} has been deleted."
   end
   
   private
      def document_params
      params.require(:document).permit(:name, :content, :attachment)
      end
   
end
