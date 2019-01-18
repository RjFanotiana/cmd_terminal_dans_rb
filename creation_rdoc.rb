=begin
################################code utile########################### 
system("mkdir", "lib")#creation doc
a=File.open("name","w")#cretation file
a=File.open("name","a")#open file
a=puts("mots a ecrir")#ajout de ligne dans le file
a=File.close
system("clear")#ecrir sur le terminal
Dir.chdir("/lib")#entrer dans le fichier
system("touch", "app.rb")#
=end
#########################APP.rb##################################
#ressource
def create 

a = ARGV


Dir.mkdir("#{a}")
Dir.mkdir("#{a}/lib")
File.new("#{a}/README.md", "w+")
File.new("#{a}/Gemfile", "w+")
#########################APP.rb##################################
File.new("#{a}/lib/#{a}rb", "w+")
gemfile = File.open("#{a}/Gemfile","a")#creation gemfimil

#######################ECRITUR_GEMFILE#########################
gemfile.puts("source \"https://rubygems.org\"")
gemfile.puts("ruby '2.5.1'")
gemfile.puts("gem 'rspec'")
gemfile.puts("gem 'pry'")
gemfile.puts("gem 'rubocop', '~> 0.57.2'")
gemfile.close

Dir.chdir("#{a}")

##########################instalation_gem########################

system("bundle install")
system("rspec --init")
File.new("#{a}/spec/#{a}_specrb, "w+")

end

create

