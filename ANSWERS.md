# Q0: Why is this error being thrown?
There hasn't been a pokemon controller created yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
All the random Pokemon are appearing because they are all initiated in the seed and they are all trainerless.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line makes a patch request when the medium button_to class with a label named "Throw a Pokeball" is selected and directs to capture_path/:id
# Question 3: What would you name your own Pokemon?
I would name my pokemon after my sister.
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the trainer_path into redirect_to. trainer_path needed the trainer id of the trainer who owns the pokemon that is damaged.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Pokemon objects all have the error message and when there is an error with saving because of the validation,
the error message will show.

# Give us feedback on the project and decal below!
I liked the project because it incorporated a lot of the things we learned so far. The lectures can get confusing with just slides and I really liked the in class demo with yelp because it cleared things up.
# Extra credit: Link your Heroku deployed app
