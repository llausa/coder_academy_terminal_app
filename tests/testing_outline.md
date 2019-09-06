# Testing Outline
  The testing carried out within this project is bottom-up focused.
  The first tests in todo_item_test.rb check to see that the ToDoItem class works correctly and the its create method outputs the right Hash, with the right information.

  The User class is also tested in user_test.rb. Here we see if an instance of the class can be successfully initialized.
  This is achieved through the testing of the instance variables within the class, accessed through the commands made available through the attr_accessor.
  In this instance that means testing to see that EMAIL and NAME have been correctly stored and can be accessed in this instance of the class.

  The ToDoList class is tested by seeing if the output from its add class correctly accepts the param of todo_item, which in the case of the instance is a method of the ToDoItem class.
  This actually happens in the prod code so it's important that it is tested.

  All tests can be run at once by running the following command while inside the /tests directory:
      ruby automated_test_script.rb