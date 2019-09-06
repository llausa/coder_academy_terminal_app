# How to Set Up the App
  Santiago's Humble To-Do App installation instructions

  1. Clone or download the Repo from the following link: https://github.com/llausa/coder_academy_terminal_app.git

  2. Open up your Terminal and head over to the root directory of the project (/shtda)

  3. Cd into the /src directory by typing

        cd src

  and run

        bundle install

  if you don't have bundle already type the following into your Terminal

        gem install bundler

  and then run the below again

        bundle install


  4. move back to the root directory of the project by typing

        cd ..

  once here, head over to Sendgrind (below) and make an account

       https://sendgrid.com/

  and then head over to the following area

      https://app.sendgrid.com/guide

  and select the

        'Integrate using our Web API or SMTP relay' option

  then choose the

       Web API option

  choose Ruby from all the different options
  and ONLY follow the first 3 steps

![sendgrid setup](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/sendgrid_setup.png)

  just copy paste the env variable commands shown there with your newly created API key. The commands will change depending on your API key!

  DONT DO ANYTHING AFTER STEP 3!! IT'S ALREADY SET UP!!

  5. Then head back to your project folder, go into the src directory and open up the follwing file:

       configuration.rb

  change the strings outlined to a default name and email (aka your name and email)
  you can also use the terminal AFTER to pass email and name to the file
  with command line arguments

  6. Once you've followed the steps above you should be ready to go!
  Head back to the roo directory of the project and run:

        ruby shtda.rb

  7. Just follow the prompts and Enjoy!

# Features

  You can do the following in the app:
  - see your current to-do list
  - add to-do items to your current to-do list
  - mark to-do items as complete (erasing them from your to-do list)
  - send an email digest of your to-do list to the email address in configuration.rb
  - see what each command does through the help section of the app
  - exit the app
  - PS there's an easter egg (Chuck Norris would be proud)

# Dependencies

  Dependencies for this app are all stored in the GEMFILE inside the /src directory.

  You can just cd into that directory and run the comman 'bundle install'. See above for more instructions.

  As the project is written in Ruby, we assume you have ruby installed on your machine.

# How to use the APP

  The App works best when you have it open and running in a Terminal Tab.
  The target market for this app is Software Developers so all that they need to do to keep track of to-do items is open an additional tab in their Terminal apps, run the app and leave it running until the end of their workday.

  When they are about to close down their machines they can review their to-do list, mark any items as complete and send themselves an email digest if they are so inclined.

  All you need to run the app is go through this set up document, be in the project's directoy and run

      ruby shtda.rb

  The app will stay running in your machine until you shut it down. At shutdown, the app will query you if you are sure, because once you close the app, your to-do list is outputted and you can't work on it again unless you re-type those items onto the new instance of the app that is running.

  Thank you!