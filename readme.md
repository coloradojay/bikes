##Ruby on Rails CRUD Lab Part I!

	Situation: You are creating a bike startup in Santa Monica! You want a web application that allows you to: 
	
	- Show all bike selections
	- Allow people to show bikes individually
	- Have a form for people to add new bikes into the shop's inventory


###You have received funding to do your project! Choose a group of 4! This is your bike startup team :-)

<br />

##Project setup:


	- mongod
	- rails new bikeshop --skip-active-record
	- cd bikeshop
	- subl .
	- Set up gem 'mongoid', '~>4.0.0'
	- bundle install
	- rails g mongoid:config

Create the model:

	Model: Bike
	
	Fields: 
		- name:string 
		- type:string
		- speed:float

In seeds.rb

	bikes = Bike.create(
		[
			{
				name: "Super dope bike",
				type: "Yazuki",
				speed: 10
			},
			{
				name: "Kinda dope bike",
				type: "Yamaha",
				speed: 8
			}
		]
	)




##Hints: 

- Create a bikes controller that ties with the bike model

- Create the 4 actions (which are controller methods) index, show, new, create (piggyback this off the 'new' view)

- Route --> Controller(actions) --> View


##Extra Credit:

- Change the page names on route changes
- Do CSS-styling to prettify the page 
- Extra credit for using Pure-CSS
- Route your app to start at localhost:3000 rather than localhost:3000/bikes
- Create a partial to replace redundant form



 