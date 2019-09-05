# 04/09/19
  For my first development log, I would like to state that the majority of my documentation has been written. User Stories are also ready to go. They only need to have checklists and due dates added to them. The next thing I will begin working on is the tests and then the coding of my modular code.

  To test the vailidity of my idea, I built a spaghetti code version of my idea (see readme.rd) and played around with the Sendgrid ruby gem. I was a able to successfully send emails to my inbox.

  ![sendgrid emails](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/sendgrid_test.png)

  But then I got this nice email from sendgrid:
  ![suspended](https://github.com/llausa/coder_academy_terminal_app/blob/master/imgs/suspended_sendgrid.png)

  So my sengrid account was suspended because I uploaded my sendgrid api key to my public repo on github. I've learned my lesson.

  Up next, I will rebuild my code with TDD methodology to create a modularised and DRY code base.

# 05/09/19
  The executive decision of removing JSON from the project has been made. Originally, the idea was that having the to-do lists saved in JSON format would set the foundation for future development opportunities that would require the JSON format (eg sending to-do lists as sms texts to people).

  However, the conversion from and to JSON are too time intensive and don't necessarily fall within the scope of the MVP.

  Hence it will be added as a Nice-to-Have in the trello board where we are keeping track of the project. This will simplify the code writing process and simplify the logic of the MVP.

  Down the track, if JSON portability is desired, it can be added onto the project.

# 05/09/19
  The UI/UX of the app is basically divided into 2 parts. Part 1 is booting up the app without any command line arguments. The functionality for this part of the app has been built. It is complete and ready and it works!

  When an email is sent from the app, it arrives in the inbox of the email address provided in the configuration.rb file.

  The challenge now is to accept command line arguments, to be able to successfully take the data from the text files, manipulate it effectively and then save it back to the text file.

  The email functionality will inherently work if the app is able to read the file and suck up the date in the correct format (an array of hashes).

# 05/09/19
  The scope of the project is officually being scaled back even further. Now, instead of being able to take existing to-do list files (in txt format), the app will automatically create a to-do list for the day.

  The user will then be able to add and complete to-do items on this one to-do list throughout the day. Users will also be able to send the email digest of this to-do list whenever they want during the day.

  The previous scope will be filed away as a Nice-to-Have. The main reasoning behind this is as follows: working on letting the app accept any sort of txt file, and creating the checks and making the logic of the app work with these files would be too time consuming. It would not be ready in time to present and hand in the assignment.

  Command line arguments will still be accepted, for the users' name and email but they will be optional.

  This change will allow me to have more time to thoroughly test and improve the UI/UX of the app.

# 05/09/19
  With less than 30 hours to go until we have to hand in the assignment, I have made the choice to drop the use of txt files. The main reason behind this is that getting existing files with data to be read in a format accepted by the app is turning out to be difficult.

  All app functionality works without this dynamic and going down this route will help me complete the assignment and let me test it so that I can guarantee that it works in other machines. And more importantly that it works as intended.

  The documentation will need to be updated to reflect this change.

# 05/09/19
  The project is done! It runs in my local machine and send to-do lists to the outlined email in the app. The project is within the scope outlined in the User stories and there's even a Nice-to-Have that has been built.

  There is a lot of room for improvement and expansion of the app but this foundation is operational and is thoroughly documented so that whoever wants to expand on it can jus clone the repo and get started.

  Testing to see if the repo runs in other machines is up next. For help on how to setup the repo in your local machine checkout the help.rb file.