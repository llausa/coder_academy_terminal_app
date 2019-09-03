## coder-academy-terminal-app

# Santiago's Humble Calendar App

### In the Terminal

#### Problem
    Promising yourself that you'll use the latest and greatest calendar app is well and good *BUT* let's be honest.
    How often do we actually stick with it? Especially if we have to click away from the apps we use have on, to open a new website/app, then login *AND* only then get to use it.

    What about checking what needs to be done/attended?
    *GAH*!!! Open a new browser, login, and now check to see what needs to be done...
    That's really painful...

#### Solution
    Santiago's Humble Calendar App (SHCA) is designed to help its Users maintain control over their schedules right from their own Terminal.

    This app is targeted at Software Developers who already have their Terminals open most of the day and wish to record to-do items and events they are planning to attend.

    You can check everything that is outstanding through your Terminal App too! If you want to be reminded of your events/todo items at the end of the workday, we can do that too!

    And a daily email digest for you to read on your train ride home? Yaaaaaaasss!

   SHCA helps you take control of your schedule right from the terminal, without any of the useless fluff. All of this is done with the [Japanese Wabi-Sabi Philosophy](https://medium.com/personal-growth/wabi-sabi-the-japanese-philosophy-for-a-perfectly-imperfect-life-11563e833dc0) in mind. Life is not perfect, but lists of stuff you need to do help you take control over the perfect imperfection of life.

   They also help you deliver the stuff you promised you would deliver.

   Carpe Diem

   :)

#### Features:
    * User setup for customization
    * Add To-Do Items to your CalendarList object
    * Remove To-Do Items from your CalendarList
    * Add Event Items to your CalendarList
    * Remove Event Items from your CalendarList
    * View List of To-Do Items
    * View List of Event Items
    * View List of all Items outstanding
    * View List of Completed Tasks
    * Set Terminal Reminder Schedule
    * Enable/Disable the Daily (Weekdays only) Digest

#### Requirements
    * JSON
    * Sendgrid-ruby
    * CRON Jobs
    * Colorize
    * rubyjokes

#### How to Use the App
    Santiago's Humble Calendar App is designed to be as intuitive as possible. It lists out all everything that the User needs to do in the order that the App requires.

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
