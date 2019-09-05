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