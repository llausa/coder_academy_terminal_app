## coder-academy-terminal-app

# Santiago's Humble To-Do App (In the Terminal)

## Problem
  Promising yourself that you'll use the latest and greatest to-do app is well and good *BUT* let's be honest...
  How often do we actually stick with it? Especially if we have to click away from the apps we usually have on, to open a new website/app, then login *AND* only then get to use the application.

  What about checking what needs to be done/attended?
  *GAH*!!! Open a new browser, login, and now check to see what needs to be done...
  That's really painful...

  Keeping track of what needs to be done is hard for anyone who has a normal job. Keeping track of to-do items is usually done in a calendar notebook or on paper.

  Losing your to-do piece of paper or forgetting your calendar notebook can ruin a day or set you back a lot.

  Why not digitise this and have it on you at all times instead?

## Solution
  Santiago's Humble To-Do App (SHTDA) is designed to help its Users maintain control over their schedules right from their own computer Terminal.

  This app is targeted at Software Developers who already have their Terminals open most of the day and wish to record to-do items they are planning to complete.

  SHTDA helps you take control of your schedule right from the terminal, without any of the useless fluff.

  This terminal app helps you deliver the stuff you promised you would deliver.

  This was by far one of the most effective time management strategies I utilised as a Project Manager. But I hated life when my calendar notebook was left at home. And using A4 paper to keep track of clients I had to call back/emails I needed to send while working at a Tech Startup seemed backward.

  The main idea behind this app is to digitise everything around the trusty to-do list you may see being used around the world.

  With Santiago's Humble To-Do App, Users can keep track of to-do items and check everything that is outstanding right through the Users' Terminal App!
  If Users complete any of the to-do items (yay!), they can just mark them as complete too.

  And for the sake of posterity, Users can ask the app to send them an email digest of outstanding items straight to their email inbox. Yaaaaaaasss!

## Status Build
  Complete. This application's MVP is built and functional. Head over to 'help.md' for instructions on how to download the project and use it.

## UI/UX
  Santiago's Humble To-Do App is a text-based productivity terminal application.

  The User can boot up the app without any command line arguments. A to-do list will be automatically generated for that day.

  ![no command line args](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/no_command_line_args.png)


  Once the app has "booted up", the User will be shown a menu with all available options they can input (see Features/Scope).

  The User will also be presented with all command options that are available in the app every time the app prompts them for an input. There's even a help section explaining all commands and what they do.

  ![app_menu](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/app_menu.png)

  The User only needs to type the command they want to run when prompted.

  The User will be able to add to-do items to their To-Do List by using the 'add to-do' command. The command will then prompt the User for the description of the to-do and a due date (optional). This information will be stored locally.

  The User will also be able to mark to-do items as complete by using the 'complete to-do' command. The command will prompt the User for the id of the to-do item they want to mark as complete. Marking a to-do item as complete will effectively remove the item for the list and thus totally erase it.

  Finally the User will be able to send the to-do list on command to any email they choose straight from the app. This allows the User to have that particular to-do list somewhere else other than their local machine.

  Error messages will handle events where User input (any sort) deviates from the app's functionality with an 'Invalid Command' string returned and the app going back to the main menu.

  There also are error messages around the email functionality. If the User tries to send an empty To-Do list, an error message will prompt the User to add To-Do Items to their list.

## Features:
  Here is the scope of what Users can do:
  * Add To-Do Items

    When selecting the command 'add to-to', Users will be able to add to-do items onto the to-do list that they are working on.


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
  The Implementation Plan can be found on the following [Trello board](https://trello.com/b/cN91PAk8/shtda-terminal-app-coder-academy).

  The methodology behind the implementation plan is Agile. And the main focus of this project will be to build from User Stories.

  The User Stories will be broken down into the features that will be built by order of importance.

  The items that will take precedence will be labeled as 'MVP' as these need to be built for a Minimum Viable Product for delivery.

  Progress can be tracked on the Trello Board as well as the 'development-log.md' file

## Tools Used
  * VSCode
  * iTerm2
  * Trello
  * Github

## Bug
  - There is a known bug with Sendgrid, where even if the API key is in sendgrid.env you get a 'no implicit conversion of nil into String' error.

  If you run 'send email digest' and you get an error like the one outlined in this [StackOverflow Question](https://stackoverflow.com/questions/49876315/sendgrid-implementation-no-implicit-conversion-of-nil-into-string), just do the following:
    1. Head over to sendgrid
    2. go to this address (https://app.sendgrid.com/guide)
    3. do the first 3 steps only, especially this:
    ![sendgrid setup2](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/sendgrid_setup.png)
  You will add a new API key and link said API key to your app correctly.
  The code should run normally after this.
