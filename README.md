# ASSIGNMENT 2 : Worker Task Management System (WTMS) 
<table border="1">
  <tr>
    <td><strong>Name</strong></td>
    <td>TAN PEI YONG</td>
  </tr>
  <tr>
    <td><strong>Matric Number</strong></td>
    <td>291688</td>
  </tr>  
  <tr>
    <td><strong>Subject</strong></td>
    <td>STIWK2114 / Mobile Programming</td>
  </tr>  
  <tr>
    <td><strong>Semester</strong></td>
    <td>A242</td>
  </tr>  
  <tr>
    <td><strong>Assignment Title</strong></td>
    <td>Worker Task Management System (WTMS)</td>
  </tr>  
  <tr>
    <td><strong>Submission Date</strong></td>
    <td>12/5/2025</td>
  </tr>  
</table>

## App Description

<div align="justify">
The Worker Task Management System (WTMS) is a Flutter-based mobile application that enables workers to register, log in, and manage their profiles. It enables workers to securely create an account, authenticate their identity, view personal details, and edit personal details. The app communicates with a backend developed in PHP and uses a MySQL database for data storage. WTMS ensures secure login through SHA1 password hashing and stores session data using SharedPreferences for persistence. The application is structured with clean screen transitions and follows good mobile UI/UX practices.
<br><br>
Initially, the app will display a splash screen and transition to the login screen for new users. Users can click the 'Register' field below to navigate to the registration screen and create an account, following these rules: the password must be more than 6 characters, the email must be valid, and the phone number must contain 10–11 digits.
<br><br>
After registration, the app will automatically return to the login screen. Users can then enter the email and password they just registered with. There is also a 'Forgot Password' option for users to reset their password. Users can check the 'Keep me signed in' box to stay logged in even after restarting the app.
<br><br>
Upon successful login, the app will display the worker’s information. Users can swipe a specific tile to the left to edit profile details (email, address, and phone number). A side menu is available for quick navigation. It includes the following tiles:

- Profile – displays the worker’s details

- Settings – opens the settings configuration

- Log Out – logs the user out

In the settings page, users can toggle between dark mode and light mode, and reset their password.

</div>

## Implementation
<div>
<h3>1. Flutter Front-End</h3>

<h5>Splash Screen<style color="#22334C"></h5><br>
    - The Splash Screen is the initial screen that appears when the Worker Task Management System (WTMS) app launches. It provides a brief loading animation and checks if the worker is already logged in using SharedPreferences. <br>
    - 
</div>

**Splash Screen and Transition Logic**
  - The splash screen (SplashScreen) shows an app logo, app title ("WTMS"), and a loading animation (CircularProgressIndicator).
  - After 7 seconds, it automatically navigates to the HomeScreen using Navigator.pushReplacement.

**Widgets Used in Main Screen**
  - Text: Displays labels and user information.
  - Image: Displays the logo and user's profile picture from the API.
  - Container: Used to style the “LOAD USER” button with gradient.
  - ElevatedButton: Used to trigger the API call.
  - ListView.builder: Dynamically lists out each random user's data in a scrollable view.
  - Card and ListTile: Present individual user data neatly with a CircleAvatar.

**HTTP GET Request Integration**
  - The app uses the http package to send a GET request to https://randomuser.me/api/.
  - JSON data is parsed and stored in a list (randomuserData), then used to update the UI.
  - The data includes name, gender, location, email, login info, DOB, phone number, and nationality.

**Button to Refresh User Data**
  - The “LOAD USER” button triggers the getInfo() function.
  - Each time the button is pressed, a new random user is fetched and displayed.


## Screenshots
<table>
    <tr>
    <td><img src="" width="180" height="350"></td>
    <td><img src="" width="180" height="350"></td>
    <td><img src="" width="180" height="350"></td>
    <td><img src="" width="180" height="350"></td>
  </tr>
</table>

## Reflection / Challenges

<div align="justify">
During this lab, I discovered how to implement asynchronous programming in Flutter to retrieve API data and utilize setState() to reflect changes to the UI. I also had the opportunity to explore various widgets including ListView.builder, Card, and ElevatedButton to format the layout.
<br> <br>
The first obstacle I faced was managing the nested JSON structure from the API. I had to thoughtfully parse and manage variables in order to retrieve data from very deep nesting. Additionally, I encountered difficulties when managing the layout within a scrollable view while maintaining a clean and visually appealing structure. Utilizing Expanded inside a Column and properly applying SizedBox widgets helped achieve a balanced layout.
<br>  <br>
<b>Suggestions for Improvement:</b>
<ul>
  <li>Add Error Handling: Display appropriate error messages if the network call fails (e.g., no internet or bad response code).</li>
  <li>Load More Users: Modify the API URL to fetch multiple users (e.g., https://randomuser.me/api/?results=10) and display them in a scrollable list.</li>
  <li>Improve UI/UX: Wrap long fields (like address) with TextOverflow.ellipsis or allow expansion on tap.</li>
  <li>Improve UI/UX: Add animations or shimmer effects for loading states.</li>
</ul>
</div>
