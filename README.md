## TODO 
### List Flutter Application 
Welcome to the TODO List Flutter Application, a project developed during the Flutter Hackathon. This application is designed to efficiently manage tasks using Flutter, a popular UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.

### Objectives
- Gain proficiency in Flutter development.
- Understand state management in Flutter applications.
- Implement various UI components and widgets.
- Learn about model-view separation and folder structuring in Flutter projects.
- Enhance understanding of app navigation and routing.
- Implement features like task management, search functionality, and more.

### Folder Structure
#### Model
The model folder defines the structure of the to-do items:
#### To-Do Item Model:
- name: The name of the task that will be displayed.
- id: A unique identifier used for functionality like deleting a specific item.
- isCompleted: A boolean value indicating whether the task is accomplished.
screens

### The screens folder contains UI views of the application:
- Task List Screen: 
Displays the list of tasks with checkboxes and delete icons for each task.
- Add Task Screen: 
Allows users to add new tasks with input fields for task name.
widgets
The widgets folder contains reusable components:

- Task Widget:
Manages the layout and behavior of individual tasks displayed in the list. Includes a checkbox to mark task completion and an icon for deleting the task.

### Features
- Task Management: Add, edit, and delete tasks.
- Mark tasks as completed or pending.
- Search Functionality: Search for specific tasks by name.


## screens

### Home screen
![login](https://github.com/josefwambua/TodoApp_Flutter_Hackathon/blob/main/Screenshots/All%20completed%20tasks%20listTile.PNG?raw=true)


### Drawer
![login](https://github.com/josefwambua/TodoApp_Flutter_Hackathon/blob/main/Screenshots/drawer.PNG?raw=true)


### All Completed Tasks
![login](https://github.com/josefwambua/TodoApp_Flutter_Hackathon/blob/main/Screenshots/completedTaskLstTile.PNG?raw=true)


### Pending Tasks
![login](https://github.com/josefwambua/TodoApp_Flutter_Hackathon/blob/main/Screenshots/pendingListTile.PNG?raw=true)

### Search
![login](https://github.com/josefwambua/TodoApp_Flutter_Hackathon/blob/main/Screenshots/Search.PNG?raw=true)


### Help
- Contains both help and FAQ sections
![login](https://github.com/josefwambua/TodoApp_Flutter_Hackathon/blob/main/Screenshots/HelpLT.PNG?raw=true)


### Help section
![login](https://github.com/josefwambua/TodoApp_Flutter_Hackathon/blob/main/Screenshots/Manual.PNG?raw=true)


### FAQ Section
#### Adding a FAQ
![login](https://github.com/josefwambua/TodoApp_Flutter_Hackathon/blob/main/Screenshots/FaqAddScreen.PNG?raw=true)

#### Deleting a Faq
![login](https://github.com/josefwambua/TodoApp_Flutter_Hackathon/blob/main/Screenshots/DeletefaqSlidable.PNG?raw=true)

#### Faq Delete result
![login](https://github.com/josefwambua/TodoApp_Flutter_Hackathon/blob/main/Screenshots/deletedResult.PNG?raw=true)

## Logout Screen
- Hardcoded since it doesn't have a backend to close it..It closes the entire application.


## Getting Started
To get started with the TODO List Flutter Application, 

- Clone this repository to your local machine: git clone/ download zip
- Set up Flutter on your machine following the official installation guide.
- Navigate to the project directory and run flutter pub get to install dependencies.
- Run the application on your preferred device or emulator using flutter run.
- Start managing your tasks efficiently with the TODO List app!


## Contribution Guidelines
Contributions to the TODO List Flutter Application are welcome! If you have any improvements, suggestions, or bug fixes, feel free to open an issue or submit a pull request following the contribution guidelines outlined in the repository..


## Acknowledgements
This project was developed during the Flutter Hackathon.
Special thanks to the organizers and mentors for their guidance and support during the hackathon.
