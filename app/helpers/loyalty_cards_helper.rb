module LoyaltyCardsHelper

def barcode_graphic_column (record)
    barcode record.acct, :height=> 25, :width=> 150, :encoding_format=> record.barcode_type.id
end

end
