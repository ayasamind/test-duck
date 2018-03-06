class AwsAccountsController < ApplicationController
  def index
    @aws_accounts = AwsAccount.order("id");
  end

  def show

  end

  def new
    @aws_account = AwsAccount.new
  end

  def update

  end

  def delete

  end
end
