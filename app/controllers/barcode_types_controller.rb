class BarcodeTypesController < ApplicationController
 active_scaffold :BarcodeTypes do |config|
	config.columns = [:name, :desc, :format]

end
end
