class Admin::ContactsController < AdminController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to [:admin, @contact], notice: "#{Contact.model_name.human}の作成に成功しました。"
    else
      render :new
    end
  end

  def update
    if @contact.update(contact_params)
      redirect_to [:admin, @contact], notice: "#{Contact.model_name.human}の更新に成功しました。"
    else
      render :edit
    end
  end

  def destroy
    @contact.destroy
    redirect_to admin_contacts_path, notice: "#{Contact.model_name.human}の削除に成功しました。"
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:title, :name, :email, :content, :status)
    end
end
