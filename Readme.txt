README
CS464 Final Project
Touch Screen Viability and Tactile Feedback in Video Game Controls
Anthony Sargent

Github Link: https://github.com/csu-hci-projects/SP24-Touch-Screen-Viability-And-Tactile-Feedback-In-Video-Game-Controls

Checkpoint 1 link: https://youtu.be/QgbwVMmLwOs

Demo+Code video link: https://youtu.be/eNQxPyq5bqM

Short Overview video link: https://youtu.be/OUnQ-8r3GNM


In order to run my project the user needs to download the "CubeCave.apk" file located in the Source Code directory to an android device. Then on that android device it has to be installed and it will create a usable app. This app can also be uninstalled just like any other app on android. In order to use the touch controls the android device has to have a touch screen. The app is also programmed to work with attachable keyboards for a control scheme with tactile feedback.

Once the game is running it loads the main menu. From here the up and down keys change the menu selection between start game and close game. Clicking enter will select the chosen menu item. Close game will just exit and close the app. Start game will start the 2D platformer game I created in GameMaker Studio 2.

In the game on the touch screen are left and right arrows to move left and right, as well as a jump button that allows the user to jump when tapped. If the user is using a keyboard the left and right arrows keys allows the player to move left and right, and the spacebar allows them to jump. The goal is to get through the level and reach the flag at the end. Once the level is finished it goes to a new menu allowing the user to either replay the level or quit the game.

Disclaimer the game was created to specifically work on my Galaxy Tab s6 with it's attachable book cover keyboard. It looks, runs, and works right for this device specifically so there is possible issues when being used on other devices although it should work on any relatively newer android device.


Also in the Source Code directory is a CS464Platformer directory. This has the source code that is used in GameMaker Studio 2. Many of these files are just used by GameMaker studio such as GML, YY, and YYP files. The files I directly coded in are located in the fonts, objects, rooms, scripts, and sprites directory. They can be viewed in any text editor such as notepad. An example is in the file path CS464Platformer/object/oPlayer/Step_0.gml opened in notepad will show my code for the players movement and collision detection.

As far as compiling the code it has to be done in GameMaker studio itself. I have a "forever license" when I purchased GameMaker studio 2 years ago and that allowed me to compile it into an .apk file for android, as well as other options. Now they've restructured their business model and a new license has to be purchased to be able to do this. There is a free version that allows compilation for their "GX.games" platform. To do this in GameMaker studio 2 the code has to be imported into the GameMaker software. Then in the game project in the top right the target has to be selected as GX.games. Then in the top left in the Build tab Create Executable has to be clicked. A confirmation window opens allowing the user to select Upload as Game, and the game will be uploaded to their platform.

To compile this for android specifically first the user has to have the license that allows them to create executables for the platform. Then in the target in the top right this has to be set to Android. Next the build tab needs to be clicked and Create Executable will compile the project and create an .apk file of the game to be installed on android. For this to work the platform settings have to be right. In the project in preferences the user must go to Platform Settings/Android. In here there must be an Android SDK location, Android NDK location, and Java JDK location. For me to obtain these I had to install Android Studio which is free. On running it they installed the proper files I needed. A keystore must also be generated for security reasons. Lastly Android Studio has to be running when attempting to build the .apk file.


I also included a Jupyter Notebook in my project to process the data. Here I used the numpy, pandas, and matplotlib libraries in order to help evaluate the data. I used code to run PCA on the data to find the weights of the independent and categorical variables in regards to the three dependent variables: completion time, error rate, user rank. I found the overall averages for these three variables as well as the standard deviations. I calculated the T scores myself then with the help of an online p-value calculator, Omni Calculator found here https://www.omnicalculator.com/statistics/p-value, I found the p-values for the independent variables affects on the dependent variables. I also created bar graphs for the control schemes and how they performed on average for the three dependent variables. This Jupyter Notebook is best viewed in any coding editor such as Visual Studio Code.
