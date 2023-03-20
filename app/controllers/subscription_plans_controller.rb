class SubscriptionPlansController < ApplicationController
  before_action :set_client, only: %i[ new create cancel_subscription index ]

  def index
    @subscription_plans = @client.subscription_plans
    render json: @subscription_plans
  end

  def new
    @client = Client.find(params[:client_id])
    @plan_prices = Plan.all.collect {|plan| {"#{plan.id}"=> plan.price}}
    @client_subscriptions = @client.subscription_plans.new
  end

  def create
    @subscription = @client.subscription_plans.new(plan_id: params[:plan], start_date: Date.parse(params[:start_date]))
    respond_to do |format|
      byebug
      if @subscription.save
        format.html { redirect_to clients_path, notice: "Subscription was successfully created." }
      else
        format.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def cancel_subscription
    respond_to do |format|
      if @client.active_subscription.cancelled!
        format.html { redirect_to clients_path, notice: "Subscription was successfully created." }
      else
        format.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_client
    @client = Client.find(params[:client_id])
  end

  def subscription_plan_params
    params.require(:subscription_plan).permit(:plan, :start_date)
  end
end
