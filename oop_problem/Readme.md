System plus new client xyz has a project going on in which they collect data from different data providers and store them in their database.They wanted to build a search engine in which users can search from one place instead of going to each data provider. Each of the providers provide the api and their end points to access data.Sohail your team lead has given you a task for this week to create a class wrapper for those apis. Class wrapper would be like a class in which their methods would be the apis end point and calling them will get us the response that we get when we hit an endpoint of the api.
Instead of hitting the api we have provided you a class called Internet which will act as a dependency injection so in code you don't  actual have to call a endpoint
## Internet.get_response(url)

You will call this method like this and this will handle the return of data instead of hitting an actual endpoint.

In case if you don't know how api works just type this url {https://catfact.ninja/fact} in the browser  you will see a json response in your browser window.This is an example of get request where baseurl is catfact.ninja and one of the endpoint is fact. Base url and end point has one to many relationship.

(So in our case instead of making a real call to the internet we will be making a call to our class Internet that will return the data for us. The Internet class that you are provided with is written in ruby. If you are doing the assessment in a language other than ruby then translate this class into the programming language your choice)


# Here are the three apis that sohail has given you for now to make a wrapper class around these three apis. As project is going on you will receive more apis so you have to design your classes in such a way that you have to do minimlist work to make any incoming api work correclty under system 

* https://test-api1/get_items   token for this api is 123
* https://test-api2/items	         token for this api is 456
* https://test-api3/all_items     token for this api is 789

Each api have a different token which will be added after the url like this  https://api/some_end_point?token=place_token_here


# And now the major question after getting the data from api where we have to store it. For that i have a written a dummy class SearchEngine which will return the instance of database where you can store the data in it.You can get an instance of SearchEngine by calling SearchEngine.get_instance.And in that instance you can call two methods display_data and store_data.

* instance = SearchEngine.get_instance
* instance.display_data
* instance.store_date(name , description ,price)

# Our end goal is to take data from those three apis and store them in SearchEngine. So when we call instance.display_data it will show all the data.

## This Problem is particularly designed to test your oop concepts
## Use object oriented concepts to model this problem. Use OOP concepts which you think would fits into this problem nicley and gives us elegnat solution.
## Your solution will be judged based on your decision choices you took for solving this problem.