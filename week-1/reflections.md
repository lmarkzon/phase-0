# 1.1 Think About Time Reflection

I found a few of the time management and productivity techniques very interesting, the ones that really stuck with me were meditation, developing more of a growth mindset, the Pomodoro technique, and creating new habits. My favorite is working on developing more of a growth mindset, I learned about this for the first time during the Phase 0 Prep and I find the research fascinating. Specifically, when they talk about starting small, proving ones ability to yourself in a bunch of tiny ways, and allowing the confidence/growth mindset to naturally follow from there. Confidence is just your ability displayed for everyone to see!

Time Boxing is when someone has a (previously determined) period of time to work steadily towards the completion of a task/goal. So instead of working on it until completion (then recording the time), timebox involves stopping once the time limit has been reached and evaluating what was completed. This can be helpful to me in Phase 0, if I pre-determine what days I need to get certain assignments done by, then I can look back to see about how long it took me to accomplish them, then I can do a better job of planning my time for them in the future. 

Right now I am using my calendar to schedule time everyday that I should be working on certain assignments. I am a very visual person, so putting things on my calendar for me to see everyday is very helpful. I also use "to do lists" to help my anxiety of feeling like I have a million things to accomplish each day. It is working - to a point, but there is no accountability and a lot of procrastination. I am going to try to start employing some of these strategies into my everyday life by starting small and slowly. Small habits here and there, such as taking short breaks more often (pomodoro) and making a habit out of meditating here and there to help control my anxiety/stress when I am stuck or frustrated. I need to focus on the small things here and there, instead of the big picture like I tend to do, and then track my progress so I can use my results to further motivate myself. I still plan to use my calendar, but I would like to incorporate these strategies as well to improve it and be more realistic of my time management.

## 1.2 The Command Line Reflection

A shell is an approachable way of interacting with the raw horsepower of your computer. In this case the command line interface allows me access to my computer’s operating system services. Bash is a shell of unix, and is a command line interface that helps users “customize” their tools to improve workflow. So things the user does all of the time are easier to do, like get to a directory with a long path. I had a very difficult time comprehending the difference between the terms bash, unix, and shell in the beginning and had to watch the video quite a few times. By the end I was able to successfully use most of the commands, I got stuck figuring out how to move a file from one directory to another. At this point I believe the most important commands are the basics, without knowing those you can’t even navigate through the terminal. Once I got down cd, cd .., ls, pwd, mkdir, rm, etc. I was able to smoothly move around the terminal.

-pwd: prints the current directory/folder(s) you’re working in
-ls: lists out the contents of the current directory/folder you’re in
-mv: moves a file or directory
-cd: moves user around inside the different directories
-../: is a directory
-touch: creates an empty file
-mkdir: creates new directories using the command line
-less: shows you a file one page at a time
-rmdir: removes a directory using the command line
-rm: removes files
-help: output shows a manual page to read

### 1.4 Forking and Cloning Reflection

Create a new Repository:

go to your GitHub account on the website and click the little plus sign (+), in the upper right hand corner next to your account picture, and select New Repository.
Type whatever name you want to call it in the “Repository Name” box,
Select “public” if you want others to be able to view it
Add a “MIT License” to your repository.
Click “Create Repository” to complete the form, you can see your new repository in your profile (under repositories).
 

Fork a Repository:

go to the Repository on GitHub that you want to fork (forking happens all on github)
hit the “Fork” button in the upper right hand corner of repository
select your profile/username and it will process
you now have your own version of the repository in your GitHub to work on without it affecting the original
 

Clone a Repository:

go to GitHub and go to the Repository that you want to clone
get the URL of the Repository you want to clone by going down to the bottom right-side of the screen where it says “HTTPS clone URL” and copy the text box below to your clipboard (little icon to the right of the box does this)
open your computer’s command line
type pwd to check where you are and then ls to see all of your directories/folders so you can decide which one you want your repository in
once you decide which directory you want the repository in, go to it by typing cd DirectoryName
for example, I typed cd DBC-Phase-0 because that’s the directory I keep phase 0 stuff in
type ls to check what’s inside the directory before cloning
once you are in the directory that you want to put the repository in, type git clone PASTE-URL
for example, I typed git clone https://github.com/lmarkzon/p0-cli-exploration.git (Links to an external site.)
you’ll see some stuff execute
it may ask for your GitHub username and password
type ls again to see the repository cloned to your directory
type cd RepositoryName to go into the repository
you should now see the cloned repository in your own computer
You can create a new repository or you can fork an existing repository when using GitHub, one may fork a repository (opposed to creating a new one) if they want to work on an existing project without having to worry about altering or messing up the original version. It is not necessary to create a new repository for this reason because of commits, which are bundles of the individual changes you have made to that project/file. If you mess up on something and want to go back, you just look at your commits and pick which version you want to go back to and go from there. If multiple people are working on a project, you can combine their commits once finished by merging them. Forking is also useful for cloning a repository to your computer that you did not originally create. So if you want to clone a repository from Dev Bootcamp’s GitHub, you would first fork it to your GitHub account/profile, and then clone your version to your own computer.

I have been struggling with remembering all of the commands to navigate through the command line, but everyday that I practice with them gets easier and easier. I also have been guilty of overthinking some of the most basic concepts, causing me to spend more time than necessary on certain things, such as forking! I am also still struggling with differentiating the terms, such as directory versus repository, and things like that. But I am learning that it is not so much about the memorization as it is just practicing over and over and then the memorization just kind of happens on its own. Also, the more we learn about GitHub the more comfortable I have been playing around on it. Before we covered cloning and forking repositories in this challenge, I had no idea what we would be using GitHub for. Lastly, I’m learning and beginning to see how each challenge we’ve done so far connects with one another. How I need to learn how to use and navigate the command line, before I learn how to clone a repository to my computer. I’m starting to see how it all correlates and builds on the previous challenge!
