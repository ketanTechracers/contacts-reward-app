class PurchasesController < ApplicationController
  REWARD_RATE=0.03

  def create
    @contact = Contact.find(params[:contact_id])
    purchase = params[:purchase]['purchase_amout'].to_f
    reward_points = purchase * REWARD_RATE
    @purchase = @contact.purchases.create(purchase_amout: purchase, reward_points: reward_points)
    redirect_to contact_path(@contact)
  end
end
