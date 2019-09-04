## coder-academy-terminal-app

# Santiago's Humble To-Do App (In the Terminal)

## Problem
  Promising yourself that you'll use the latest and greatest to-do app is well and good *BUT* let's be honest...
  How often do we actually stick with it? Especially if we have to click away from the apps we usually have on, to open a new website/app, then login *AND* only then get to use the application.

  What about checking what needs to be done/attended?
  *GAH*!!! Open a new browser, login, and now check to see what needs to be done...
  That's really painful...

  Keeping track of what needs to be done is hard for anyone who has a normal job. Keeping track of to-do items is usually done in a calendar or on paper.

  Losing your to-do piece of paper or forgetting your calendar notebook can ruin a day or set you back a lot.

  Why not digitise this and have it on you at all times instead?

## Solution
  Santiago's Humble To-Do App (SHTDA) is designed to help its Users maintain control over their schedules right from their own computer Terminal.

  This app is targeted at Software Developers who already have their Terminals open most of the day and wish to record to-do items they are planning to complete.

  SHCA helps you take control of your schedule right from the terminal, without any of the useless fluff.

  This terminal app helps you deliver the stuff you promised you would deliver.

  This was by far one of the most effective time management strategies I utilised as a Project Manager. But I hated life when my calendar notebook was left at home. And using A4 paper to keep track of which clients I had to call back/emails I needed to send while working at a Tech Startup seemed backward.

  The main idea behind this app is to digitise everything around the trusty to-do list you may see being used around the world.

  With Santiago's Humble To-Do App, Users can keep track of to-do items and check everything that is outstanding right through the Users' Terminal App!
  If Users complete any of the to-do items (yay!), they can just mark them as complete too.

  And for the sake of posterity, Users can ask the app to send them an email digest of outstanding items straight to their email inbox. Yaaaaaaasss!

## Status Build
  This application is currently under construction. Please check back soon!

## UI/UX
  Santiago's Humble To-Do App is a text-based productivity terminal application.

  The User has a couple of options right from the get-go. They can either run the 'shtda.rb' file with command line arguments for their name, email and existing to-do lists (in txt format).
  This will be explained in the help file of the project.

  ![command line args](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/command_line_args.png)

  Or they can boot up the app without any command line arguments. They will then be taken through a sequence that queries them for their name and email. A to-do list will be automatically generated for that day.

  ![no command line args](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/no_command_line_args.png)

  The starting sequence prepares a text file and the emailing functionality. The text file will serve as a database for each day, where even if the User quits the app (ctrl + c/exit option), their to-do items will not be lost.

  Once the app has "booted up", the User will be shown a menu with all available options they can input (see Features/Scope).

  All app functionality is availabe in the 'help.md' file but the User will also be presented with all command options that are available in the app every time the app prompts them for an input. There's even a help section explaining all commands and what they do.

  ![app_menu](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/app_menu.png)

  The User only needs to type the command they want to run when prompted.

  The User will be able to add to-do items to their To-Do List by using the 'add to-do' command. The command will then prompt the User for the description of the to-do and a due date (optional). This information will be stored locally and written onto the text file for backup.

  The User will also be able to mark to-do items as complete by using the 'complete to-do' command. After a list of to-do items is presented, the command will prompt the User for the index of the to-do item they want to mark as complete. Marking a to-do item as complete will effectively remove the item for the list and thus totally erase it.

  Finally the User will be able to send the to-do list on command to any email they choose straight from the app. This allows the User to have that particular to-do list somewhere else other than their local machine.

  Error messages will handle events where User input (any sort) deviates from the app's functionality or data format of command line argument input to-do list files is not correct.

  Invalid User commands will return 'Invalid Command' and data integrity errors will basically force the User into formatting their input txt files in a specific format that can be read by the app.

## Features/Scope:
  Here is the scope of what Users can do:
  * Start the app *with or without* command line arguments

    This feature is designed so the app is able to be booted up with or without command line arguments. The arguments that can be received in the command line are email and the name of an existing to-do list (in txt format) that the User wants to use as their To-Do list.
    If command line arguments are provided, the app will check if the email provided matches the current email stored in an instance variable of the User Class object called user. If it's a match, the original email will remain but if it is different, the User will be asked if they want to change the email the digest will be sent to.
    The second command line argument is the name of a text file that the User would like to use as the To-do List. If it already has to-do items inside, the app will check that it can load the file. The app will loop through all the lines in the file checking for correct format and either boot the app or provide the User with an error message explaining that they need to format the file in a specific way.

    If the User does not provide any command line arguments, the app will use the existing email in the app (an instance variable in the configuration.rb file) or, if booting up for the first time, prompt the user to input an email. If no existing to-do list is provided, a new file will be created and it will be called "#{@today}.txt", where @today is an instance variable that store the current day's date in a day-month-year format.

    The app show a menu of available options (outlined below) after running all this logic.

  * Add To-Do Items

    From the menu of all available options, the User will be able to selec the command 'add to-to', which will let them add to-do items onto the to-do list that they are working on.

    The to-do item is stored as a JSON hash with the following parameters: id, description, due date (optional).

    Id is set to the local variable max_id when the to_do_item hash is created. 'max_id' is a variable that is first set to the highest value of id in the to-do list array (instance var called @data). Then id is set either to 1 or max_id + 1 (aka if there are 5 items there already )
    finish once code written

  * Mark To-Do Items as complete
    finish once code written
  * View List of To-Do Items
    finish once code written
  * Send To-Do List to User's email on command
    finish once code written

## Control Flow Diagram
  <complete after coding up the app>

## Implementation Plan
  The Implementation Plan can be found on the following [Trello board](https://trello.com/b/cN91PAk8/shca-terminal-app-coder-academy).

  The methodology behind the implementation plan is Agile. And the main focus of this project will be to build from User Stories.

  The User Stories will be broken down into the features that will be built by order of importance.

  The items that will take precedence will be labeled as 'MVP' as these need to be built for a Minimum Viable Product for delivery.

  Progress can be tracked on the Trello Board as well as the 'development-log.md' file

## Tools Used
  * VSCode
  * iTerm2
  * Trello
  * Github

## Bugs
