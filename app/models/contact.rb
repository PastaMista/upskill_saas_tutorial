#checkt die DB, die Contact Tabelle und übernimmt die Attribute (name, email, kommentar, timestamp) von db->shema.rb - müssen hier nicht extra nochmal eingetragen werden
#Model ist die Blueprint für eine Klasse
 # =>hier kommen spezifische Anforderungen an die Daten, wie Name nur 200 Zeichen
# contact form validation 
class Contact < ActiveRecord::Base                
   validates :name, presence: true
   validates :email, presence: true  
   validates :kommentar, presence: true
end                                             
