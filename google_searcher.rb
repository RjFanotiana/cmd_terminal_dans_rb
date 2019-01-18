require 'watir'
=begin 
p '#'*50
p "bienvenue sur GOOGLESEARCH"
p "#"*50
p "entrer ce que vous voulez rechercher" 
=end
mot=ARGV"+" # recuperation de valeur apres alias 

abort("il faut entrer un mots a rechercher") if ARGV.empty?

browser = Watir::Browser.start ' https://www.google.com/search?q=#{mot}' :firefox
#search_bar = browser.text_field(class: 'gsfi')
#search_bar.set(mot)

#méthode de la barre d'entrée
#search_bar.send_keys(:enter)

#méthode du clic
#submit_button = browser.button(type:"submit")
#submit_button.click
p "recherche accompli,apuyer sur une touche pour la fermeture du browser"
gets
browser.close