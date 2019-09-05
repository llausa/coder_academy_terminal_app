# How to Use the App
  Santiago's Humble To-Do App installation instructions

  1. Clone or download the Repo from the following link: https://github.com/llausa/coder_academy_terminal_app.git

  2. Open up your Terminal and head over to the root directory of the project (/shtda)

  3. Cd into the /src directory by typing
      cd src
    and run
      bundle install
    if you don't have it already type the following into your Terminal
      gem install bundler
    and then run
      bundle install
    again

  4. move back to the root directory of the project by typing
      cd ..
    once here, head over to Sendgrind and make an account, then head over to
      https://app.sendgrid.com/guide
    and select the
      'Integrate using our Web API or SMTP relay' option
    then choose the
      Web API option
    choose Ruby from all the different options
    and ONLY follow the first 3 steps
      [!sendgrid steps]()
    including the ENV variable - just copy paste the env variable commands shown there
    the commands will change depending on your API key
    DONT DO ANYTHING AFTER STEP 3!! IT'S ALREADY SET UP!!

  5. then head back to your project folder,
    go into the src directory and open up the follwing file:
      configuration.rb
    change the strings outlined to a default name and email
    you can also use the terminal AFTER to pass email and name to the file
    with command line arguments

  6. Once you've followed the steps above you should be ready to go!
    Head back to the roo directory of the project and run:
      ruby shtda.rb
    Just follow the prompts

  7. Enjoy!
