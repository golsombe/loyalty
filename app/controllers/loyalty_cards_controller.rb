class LoyaltyCardsController < ApplicationController
before_filter :login_required
active_scaffold :LoyaltyCards do |config|
	config.columns = [:name, :acct, :barcode_type, :barcode_graphic]
	config.create.columns = [:name, :acct, :barcode_type]
	config.update.columns = [:name, :acct, :barcode_type]
	config.columns[:barcode_type].form_ui = :select
end
    
 def conditions_for_collection
	 "user_id = " + :user_id.to_s
end	 
  end
