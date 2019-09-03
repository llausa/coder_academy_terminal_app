## coder-academy-terminal-app

# Santiago's Humble To-Do App (In the Terminal)

#### Problem
  Promising yourself that you'll use the latest and greatest to-do app is well and good *BUT* let's be honest...
  How often do we actually stick with it? Especially if we have to click away from the apps we usually have on, to open a new website/app, then login *AND* only then get to use the calendar.

  What about checking what needs to be done/attended?
  *GAH*!!! Open a new browser, login, and now check to see what needs to be done...
  That's really painful...

  Keeping track of what needs to be done is hard for anyone who has a normal job. Keeping track of to-do items is usually done in a calendar or on paper (environment rip).

  Losing your to-do piece of paper or forgetting your notebook calendar can ruin a day or set you back a lot.

  Why not digitise this and have it on you at all times instead?

#### Solution
  Santiago's Humble To-Do App (SHTDA) is designed to help its Users maintain control over their schedules right from their own computer Terminal.

  This app is targeted at Software Developers who already have their Terminals open most of the day and wish to record to-do items they are planning to complete.

  SHCA helps you take control of your schedule right from the terminal, without any of the useless fluff.

  This terminal app helps you deliver the stuff you promised you would deliver.

  This was by far one of the most effective time management strategies I utilised as a Project Manager. But I hated life when my calendar notebook was left at home. And using A4 paper to keep track of which clients I had to call back/emails I needed to send while working at a Tech Startup seemed backward.

  The main idea behind this app is to digitise everything around the trusty to-do list you may see being used around the world - especially for people who have their Terminal app open most of the time!

  With Santiago's Humble To-Do App, Users can keep track of to-do items and check everything that is outstanding right through the Users' Terminal App!
  If Users complete any of the to-do items (yay!), they can just mark them as complete too.

  And for the sake of posterity, Users can ask the app to send them an email digest of outstanding items straight to their email inbox. Yaaaaaaasss!

  Or they can let the automatic mailer send the digest (6pm mon-fri only) automatically.

#### UI/UX
  Santiago's Humble To-Do App is a productivity terminal application.
  The User has a couple of options right from the get-go. They can either run the <main file>.rb file with command line arguments for their name, email and existing to-do lists (in txt format).
  This will be explained in the documentation of the project.

  <pic of user passing command line arguments along with ruby <main file>.rb in console/terminal>

  Or they can boot up the app without any command line arguments. They will then be taken through a sequence that queries them for their name and email. A to-do list will be automatically generated for that day.

  <pic of user just passing ruby <main file>.rb in console/terminal>

  The starting sequence prepares a text file and the emailing functionality. The text file will serve as a database for each day, where even if the User quits the app (ctrl + c/exit option), their to-do items will not be lost.

  Once the app has "booted up", aka gone through the starting sequence, the User will be shown a menu with all available options they can input (see Features/Scope).

  All app functionality is avaialbe in the documentation file but the User will also be presented with all command options that are available in the app every time the app prompts them for an input. There's even a help section explaining all commands and what they do.

  <pic of menu options>

  The User only needs to type the command they want to run when prompted.

  Only valid commands will be accepted by the app while the app is running. Any other commands will return 'Invalid Command'.

  The User will be able to add to-do items to their To-Do List by using the 'add to-do' command. The command will then prompt the User for the description of the to-do and a due date that is optional. This information will be stored locally and written onto the text file for backup.

  The User will also be able to mark to-do items as complete by using the 'complete to-do' command. After a list of to-do items is presented, the command will prompt the user for the index of the to-do item they want to mark as complete. Marking a to-do item as complete will effectively remove the item for the list and thus totally erase it.

  Error messages will handle events where User input (any sort) deviates from the app's functionality or data integrity (of the day's txt file) is detected.


  Invalid user commands will return 'Invalid Command' and data integrity errors will basically force the User into formatting their input txt files in a specific format that can be read by the app.




#### MVP Features/Scope:
  Here is the scope of what users can do:
  * Run app with existing to-do lists (through command line args)
    <100 word description>
  * Start the app with no command line args
  * Add To-Do Items
  * Mark To-Do Items as complete
  * View List of To-Do Items
  * Send To-Do List to User's email on command


#### Nice-to-Haves


#### Requirements
  * JSON
  * Sendgrid-ruby
  * CRON Jobs
  * Colorize
  * rubyjokes

#### How to Use the App
    Santiago's Humble To-Do App is designed to be as intuitive as possible. It lists out all everything that the User needs to do in the order that the App requires.

    Once Setup is complete, the User will receive a list of available prompts that will let them navigate through the App's functionality.

    Setup
    <Setup screenshot>

    Main Menu
    <Main Menu screenshot>

    To-Do Prompt
    <to-do prompt screenshot>

    Event Prompt
    <event prompt screenshot>


#### User Stories
    <trello screenshot>

    [PM Trello Board with User Stories as Project To-Do Items](https://trello.com/b/cN91PAk8/shca-terminal-app-coder-academy)

#### User Workflows
    <User Workflows Diagram>

#### Design Methodology
    The boot up, setup and menu sequences were separated onto their own functions to maintain a modularised code base.

    CalendarList, ToDo and Event objects are also separated onto their own classes so that modularity can be maintained and so that data can be more easily manipulated.

    This separation of objects helps maintain a separation between objects that handle data and objects that do not handle data.

    Modular Coding future-proofs and allows any other developer to jump in and refactor/improve the code base.

    The Data created/manipulated inside the App is stored in Hashes and then pushed onto different text files as a replacement for databases. Utilizing gems like JSON, we are able to store large amounts of data and process it effectively when transfering the information from the app, to the text files and back to the app (in the future).

    Tests will be essential to check for and handle data (text file) corruption as well as bootup (for the first time or ongoing).

#### Tools Used
    * VSCode
    * iTerm2
    * Trello
    * Github

#### Bugs
    - Easter Egg (nerdy joke generator) not working yet :'(

#### Future Updates
