class EmailController < ApplicationController

  def index

    @email = Email.all

  end


  def show

    @email = Email.find(params[:id])

    respond_to do |format|
      format.html { }
      format.js {}
    end

  end



  def new


  end


  def create

    @email =  Email.create(object: Faker::Book.title, body: Faker::Beer.name)

    if @email.save
      flash[:notice] = "Email envoyé !"
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js {}
      end
    else
      flash[:danger] = "OOPSY, il y a eu une erreur"
      redirect_to :index
    end

  end



  def destroy

    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end


  end


end
