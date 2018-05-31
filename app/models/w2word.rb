class W2word < ApplicationRecord
     def self.search(search)
  where("category LIKE  ?", "%#{search.strip}%" ) 
end
end
