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
  Complete. This application's MVP is built and functional. Head over to [help.md](https://github.com/llausa/coder_academy_terminal_app/blob/master/help.md) for instructions on how to download the project and use it.

## UI/UX
  Santiago's Humble To-Do App is a text-based productivity terminal application.

  The User can boot up the app without any command line arguments.

  ![no command line args](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/no_command_line_args.png)


  Once the app has "booted up", the User will be shown a menu with all available commands they can input (see Features).

  The User will also be presented with all command options that are available in the app every time the app prompts them for an input. There's even a help section explaining all commands.

  ![app_menu](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/app_menu.png)

  The User only needs to type the command they want to run when prompted.

  The User will be able to list to-do items from their To-Do List by using the 'to-do list' command. The command will pretty print the array of To-Do items right on the terminal.

  The User will be able to add to-do items to their To-Do List by using the 'add to-do' command. The command will then prompt the User for the description of the to-do and a due date (optional). This information will be stored locally.

  The User will also be able to mark to-do items as complete by using the 'complete to-do' command. The command will prompt the User for the id of the to-do item they want to mark as complete. Marking a to-do item as complete will effectively remove the item for the list and thus totally erase it.

  Finally the User will be able to send the to-do list on command to any email they choose straight from the app. This allows the User to have that particular to-do list somewhere else other than their local machine.

  Error messages will handle events where User input (any sort) deviates from the app's functionality with an 'Invalid Command' string returned and the app going back to the main menu.

  There also are error messages around the email functionality. If the User tries to send an empty To-Do list, an error message will prompt the User to add To-Do Items to their list.

## Features:
  * Add To-Do Items

    When selecting the command 'add to-to', Users will be able to add to-do items onto the to-do list that they are working on.

    When this method is run, the User is queried for a description of the To-Do Item and a Due Date (optional). These queries are saved to local variables that will be used when the To-Do Items are saved onto the instace variable @data of the initialized ToDoList class object stored to the local variable today_todo_list.

    For ToDo Items to be created, they need to be passed 3 parameters (id, description, due_date).
    Description and due_date come from the local vars with user-input data but the id parameter is passed the local var max_id.

    Line 34 of the shtda.rb file loops through the array of to-do items returned from calling the list method of the local var storing the initialized instance of ToDoList. It loops through the array and returns one Hash chosen through the max_by method (Arr) which loops through all Hashes inside the Array, comparing all values of each Hash by the key :id. The output is stored in the local var max_id.
    In Line 35, max_id is set to the result of a ternary operation with the conditional max_id. If max_id returns true (because there's a Hash stored in it), max_id is set to the value of key :id plus 1. Otherwise, max_id is set to 1. This is a clever form of error handling for having the :id of the ToDoItems always have unique ids, which are based on how many other ToDoItems already exist.
    This value will be used when the ToDoItem is created.

    The command finishes by outputting a pretty print of the output of TODOITEM constant (ToDoItem instance) with method create (and all params as the local vars explained above) passed to the ToDoList instance (today_todo_list) add method. The output is the array @data set in today_todo_list (ToDoList instance) with the newly added ToDoItem in it, along with any other ToDoItems that may already have been added previously.

  * Mark To-Do Items as complete

    When selecting the command 'complete to-to', Users will be able to remove to-do items from the to-do list that they are working on.

    When the User runs this command, their input is saved to a local var (id_param_input). This local var will be passed to the complete method below.

    The complete method of the ToDoList class is called on the local var holding the instance of the ToDoList class we're working on with the parameter set above.

    The actual code of the complete method, loops through all ToDoItem hashes inside the ToDoList instance and deletes them if their :id key value is equal to the param passed to the method.

    It then returns the update @data instance variable holding the updated array of To-Do items.
    If the To-Do list is empty, it'll loop back to the main menu. If the user inputs an id that doesn't exist they also get taken back to the main menu.

  * View List of To-Do Items

   When selecting the command 'to-do list', Users will be able to see to-do items from the to-do list that they are working on.

   When this command is called, the method list is called on the local var today_todo_list (ToDoList instance). It lists out in pretty print, all the Hashes (if any) inside the @data instance var of the initialized ToDoList class object.

  * Send To-Do List to User's email on command

    When selecting the command 'send email digest', Users will be able to send an email with the to-do list that they are working on to an address provided during setup.

    When the User runs this command, the method send_email_digest is called on today_todo_list (local var holding ToDoList instance).

    The method send_email_digest calls on Sendgrid and prepares many local variable (for things like to,from, name, subject, content, etc) that will be used when making an API request to their servers.

    The request happens in this line:

        sg.client.mail._('send').post(request_body: mail.to_json)

    This post request takes all previously set local vars in the method and sends it to Sendgrid.
    It then returns a response status_code.

    There is some error handling, where if the User tries to send an empty array, the response code will be 400 and the User will be told to add To-Do items to their To-Do list.

    A successful request returns a status code of 202 and a message telling the User the message was sent.

    Any other response status codes will output the body and header of the response so the User can troubleshoot with Sendgrid.

## Control Flow Diagram
  ![control_flow_diagram](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/Control%20Flow.png)

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
