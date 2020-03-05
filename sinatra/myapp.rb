require 'sinatra'
require 'sinatra/reloader'

get '/' do
    erb :index
end

get '/hello/:name' do
    @name = params["name"].split("")

    erb :myname_character
end

get '/signup' do
    "I am trying to sign in"
end

get '/cars:name' do
    "This car is a #{params["name"]}"
end

get '/myname/yourname:name' do
    "#{params['name']}".upcase
end

get '/currenttime' do
    Time.now.strftime('%d %b %Y %H:%M:%S')
end

# get '/:age' do
#     age_sum =  "Hello you are :
#     <% if params[:age].to_i >= 18;%> 
#     <%='Over age'%>
#  <%else%> 
#     <%='Underage' %>
#  <%end%>"
#     erb age_sum
#   end

  get '/sum' do
    erb:sum
  end

  post "/sum" do
    @num1 = params[:num1]
    @num2 = params[:num2]
    @sum= @num1.to_f + @num2.to_f

    File.open("results.txt", "a+") do |file|
        file.puts(@sum)
    end

      erb :results
  end

  

  get '/all_results' do
      def all_results
        return [] unless File.exist?("results.txt")
        File.read("results.txt").split("/n")
      end

      @all_results = all_results
      erb :all_results
  end

  get '/signup/:age' do
      age = params["age"]
      @age = age.to_i

      erb :signup
  end

  get '/people_details' do
    @details = {
     "name" => ["Alice", "Michael", "Jane", "Clare", "Mary", "John"],
     "age" => [20, 23, 43, 32, 23, 44],
     "country" => ["Kenya", "Tanzania", "Ghana", "Uganda", "Ethiopia", "Egypt"]
}

      erb :people_details
  end

__END__