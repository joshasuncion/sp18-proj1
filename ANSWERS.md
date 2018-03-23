# Q0: Why is this error being thrown?

This error is thrown because the Pokemon model doesn't exist.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The home controller is sampling from a list of Pokemon with the common factor of being trainerless, and the corresponding view displays the random Pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The line of code creates a "Throw a Pokeball!" button, and when it's pressed, capture_path(id: @pokemon) runs capture in the Pokemons controller, passing in the id of the pokemon as the parameters, and setting the trainer of that pokemon to be the current trainer.

# Question 3: What would you name your own Pokemon?

I would name it Rubysaur or Rubymander.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

For redirect_to I used trainer_path(trainer) where trainer is set equal to current_trainer, since trainer_path needs a trainer id. In order to get the path to redirect to the current trainer's profile page, I passed in trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

Putting the line flash[:error] = @pokemon.errors.full_messages.to_sentence works because @pokemon.errors.full_messages.to_sentence takes any validation errors that come from the pokemon form, and flash[:error] applies the error to the page layout so that the error will be flashed when application.html.erb renders the page.

https://github.com/joshasuncion/proj1

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
