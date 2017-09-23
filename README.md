# hmcforum

## Contents

* [Summary](#summary)
* [Contributors](#contributors)
* [MVP Objectives](#mvpObjectives)
* [Functionality](#functionality)
* [Architecture](#architecture)
* [Past Issues](#pastIssues)
* [Known Bugs](#knownBugs)
* [References](#references)

## Summary

A website which allows communication between Mudders on the topics that are important to them be that *text* memes or current campus issues. This should allow wider access to these communications then email and help avoid some of the clutter that we find in our email inboxes.

## Contributors

* Jake Palanker
* Evan Amason
* Sara McAllister

## MVP objectives

* Have a functional login system to create, delete, or edit posts
* Have the ability (or requirement) to post an internym when creating a post.
* Allow commenting on threads from members of the HMC community
* Create a profile page that allows users to change their user names, names, and potentially add other information.
* Have an About page.
* Have the ability to register an account. login, and logout.

## Functionality

* Ability to register with the website and create a profile.
* Ability to log-in to the website with an already created profile. 
* Ability to log-out of the website.
* There is an About page that explains the purpose of the webiste, lists authors, and answers some common questions.

## Architecture

We utilize the Devise gem for collecting and using user data when it comes to registering for accounts and then making threads and posts with that account.

We utilize the Bare bootstrap template wih some modifications for the Navigation Bar.

## Past Issues

* We had some git issues with pushing and pulling when we first started the project. Those were resolved by manually pointing each local repository at the correct URL.
* We had some merge conflicts with regards to the Devise database set-up and the default Ruby on Rails set-up. Minor edits were made to both files to merge the conflicts.

## Known Bugs

## References

* The code for the navigation bar was almost entirely based off of the navigation bar for the Bare
  bootstrap template as it was modified for the tutorial found at this link: https://www.youtube.com/watch?v=MpFO4Zr0EPE

* The information for how to color texts was found at this URL: https://www.w3schools.com/css/css_text.asp

* The information for how to improve text boxes was found at this URL: https://www.safaribooksonline.com/library/view/learning-rails/9780596154943/ch06s04.html

* The information for how to have default text in text boxes was found at this URL: https://stackoverflow.com/questions/6007219/how-to-add-default-value-for-html-textarea

* Basic Rails setup: http://guides.rubyonrails.org/getting_started.html

* Info about devise: https://github.com/plataformatec/devise/wiki