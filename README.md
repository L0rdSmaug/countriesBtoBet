﻿# Countries - BtoBet task

## Description 

This is but a small application for displaying all the countries from around the globe in which you can select your few or many favorite ones. Adding or remove a country from the list of a favorites is one click away. 

## Installation

You can find all the neccessary files to run this on your local server on this git repository, including the database file names => database.sql which needs to be imported in your phpMyAdmin. When creating this, I was primarily using XAMPP with Apache HTTP server and mySQL. 

## Instructions 

Will elaborate in more detail about the code so its easier to navigate through it. 

**NOTE** 

If you attempt to visit homepage.php without being logged in, it will redirect you into login.php where the login form is. 

**login.php**

To kick things off, this is where you login with your credentials, if you insert wrong credentials you will be redirected to signup.php since it wont recognize those credentials. Also you can go from login.php to signup.php with the button associated for it below the form.

**signup.php** 

This is where you create your user by inserting username and password. 

IF the username does not exist in the database you will be notified with green message indicating a successfull signup: 

![Screenshot_263](https://user-images.githubusercontent.com/40368651/195432507-a2f77459-2ee5-4aa8-95d5-70881e138cf0.png)

If you insert a username that already is in the database you will be greeted by an error message indicating that that username is already taken.: 

![Screenshot_264](https://user-images.githubusercontent.com/40368651/195432808-c407e0ce-66c8-4075-a4ad-1796d38a8d41.png)


**dbcon.php** 

Here is the connection with the database, along with the code that checks whether or not the data from the API has been pulled and inserted into the table. 

**homepage.php** 

This is where all the countries are displayed, it is also the place where it highlights if you have favorited a certain country: 

![Screenshot_265](https://user-images.githubusercontent.com/40368651/195433895-b0037b2c-533b-423f-9dba-6f84c7d914ab.png)

If you click on the view button it leads you to the individual page for that particular country where if you have added that country to the favorites it will unlock the feature to add comments: 

![Screenshot_267](https://user-images.githubusercontent.com/40368651/195434101-a46a496f-d6f6-4f42-901b-f4214979adc4.png)

Unless you place a country in your list of favorites, the comment section remains hidden: 

![Screenshot_268](https://user-images.githubusercontent.com/40368651/195434321-9415c233-05c9-40b1-9c85-f7ee48facff5.png)

In the region section, if you click on the name of a particular region you will be able to see all the countries that belong to that region: 

![Screenshot_269](https://user-images.githubusercontent.com/40368651/195435621-b1dce595-ae1a-4cc1-8d46-a104b56a8018.png)


Clicking on the logout button in the top right corner will end your current session and redirect you back to login.php. 

**functions.php** 

Here are stored couple of custom functions: 

**function isLoggedIn()** 

Checks whether or not a a user is logged

**function query($query)** 

Used to simplify the process of running the query to the DB. 

**function loggedInUserId()** 

Used to get the user ID from the currently logged in user. 

**function userFavoritedThis()** 

Used to check whether or not the currently logged in user has favorited a particular country or not. 

## Includes 

In the includes folder there are two files named header.php & footer.php where some od the basic elements of HTML are stored. These files are included in each page to make the code look more neat and avoid repeating. 








