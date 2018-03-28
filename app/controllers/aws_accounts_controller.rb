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
    @category_values = AwsAccount.categories
    @category_options = AwsAccount.categories_i18n
    @status_values = AwsAccount.statuses
    @status_options = AwsAccount.statuses_i18n
  end

  private
  def aws_account_params
    params.require(:aws_account).permit(
      :account_id,
      :email,
      :account_name,
      :display_name,
      :category,
      :payer_account_id,
      :user_id,
      :purpose,
      :status,
      )
  end
end
