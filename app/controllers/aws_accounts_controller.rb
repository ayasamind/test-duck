class AwsAccountsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
  end

  def get_accounts
    @aws_accounts = AwsAccount.order("id");
  end

  def show
    @aws_account = AwsAccount.find(params[:id])
  end

  def create
    @aws_account = AwsAccount.new(aws_account_params)
    if @aws_account.save
      @message = t("messages.notice.added", model: t("activerecord.models.aws_account"))
      @status = 'success'
    else
      @error_message = @aws_account.errors.full_messages
      @message = t("errors.template.header.one", model: t("activerecord.models.aws_account"))
      @status = 'error'
    end
  end

  def edit
    @aws_account = AwsAccount.find(params[:id])
  end

  def update
    @aws_account = AwsAccount.find(params[:id])
    if @aws_account.update_attributes(aws_account_params)
      @message = t("messages.notice.updated", model: t("activerecord.models.aws_account"))
      @status = 'success'
    else
      @error_message = @aws_account.errors.full_messages
      @message = t("errors.template.header.one", model: t("activerecord.models.aws_account"))
      @status = 'error'
    end
  end

  def destroy
    AwsAccount.find(params[:id]).destroy
    @message = t("messages.notice.deleted", model: t("activerecord.models.aws_account"))
    @status = 'success'
  end

  def send_params
    @category_options = AwsAccount.categories_i18n
    @status_options = AwsAccount.statuses_i18n
  end

  private
  def aws_account_params
    params.require(:aws_account).permit(
      :id,
      :account_id,
      :email,
      :account_name,
      :display_name,
      :category,
      :payer_account_id,
      :user_id,
      :purpose,
      :status,
      :created_at,
      :updated_at,
      :deleted_at,
      )
  end
end
