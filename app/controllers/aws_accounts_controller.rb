class AwsAccountsController < ApplicationController
  def index

  end

  def get_accounts
    @aws_accounts = AwsAccount.order("id");
    render json: @aws_accounts
  end

  def show
    @aws_account = AwsAccount.find(params[:id])
    render json: @aws_account
  end

  def new
    @aws_account = AwsAccount.new
    if @aws_account.save
      render 'get_accounts'
    else
      render json: @aws_account
    end
  end

  def update

  end

  def destroy
    AwsAccount.find(params[:id]).destroy
    @aws_accounts = AwsAccount.order("id");
    render json: @aws_accounts
  end
end
