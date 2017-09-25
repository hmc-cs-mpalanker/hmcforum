# hmcforum

## Contents

* [Summary](#summary)
* [Contributors](#contributors)
* [MVP Objectives](#mvp-objectives)
* [Functionality](#functionality)
* [Architecture](#architecture)
* [Past Issues](#past-issues)
* [Known Bugs](#known-bugs)
* [References](#references)

## Summary

A website which allows communication between Mudders on the topics that are important to them be that *text* memes or current campus issues. This should allow wider access to these communications then email and help avoid some of the clutter that we find in our email inboxes.

## Contributors

* Jake Palanker
* Evan Amason
* Sara McAllister

## MVP objectives

* Have a functional login system to create, delete, or edit posts
* Allow commenting on threads from members of the HMC community
* Create a profile page that allows users to change their user names, names, and potentially add other information.
* Have an About page.
* Have the ability to register an account. login, and logout.

## Functionality

* Ability to register with the website and create a profile.
* Ability to upload a profile picture to your profile.
* Ability to log-in to the website with an already created profile.
* Ability to log-out of the website.
* Once logged in, able to create threads and posts.
* Avility to view existing threads and posts
* There is an About page that explains the purpose of the website, lists authors, and answers some common questions.

## Architecture

In our architecture, we utilize four models: users, profiles, groups, and posts. 

Users were created using a Devise gem which also helped with basic functionality of registering, logging in, and logging out of your profile. Users store information about the user's email, password, and admin status among other things. Also,every user has a profile asscoiated with it. The profile contains more information about the user such as their first and last names, dorm, year and a profile picture. Profile pictures use the Paperclip gem which allows upploading and viewing images. Profiles also have many posts associated with them. Anyone can view a person's profile when they post on a thread. 

Another model that we use is a groups model which controls what on the front-end is known as groups. The most important feature of the groups model is that it has many posts. It also has a title attribute which is set by the first post associated with the group. 

The last model in our architecture is posts. Posts have a title and contents, which is currently limited to text. They belong to both a group and a profile allowing them to be associated with the owner and displayed through the group. Once created, these are read only which allows people to have a record of what was said on any particular thread.

We also set up a Navigation Bar using a modification of the Bare bootstrap template. We also have a pages controller to allow for the creation of static pages such as the about page linked the the Navigation Bar.

## Past Issues

* We had some git issues with pushing and pulling when we first started the project. Those were resolved by manually pointing each local repository at the correct URL.
* We had some merge conflicts with regards to the Devise database set-up and the default Ruby on Rails set-up. Minor edits were made to both files to merge the conflicts.

## Known Bugs

If you register an Account but don't create a profile much of the site breaks

## References

* The code for the navigation bar was almost entirely based off of the navigation bar for the Bare
  bootstrap template as it was modified for the tutorial found at this link: https://www.youtube.com/watch?v=MpFO4Zr0EPE

* The information for how to color texts was found at this URL: https://www.w3schools.com/css/css_text.asp

* The information for how to improve text boxes was found at this URL: https://www.safaribooksonline.com/library/view/learning-rails/9780596154943/ch06s04.html

* The information for how to have default text in text boxes was found at this URL: https://stackoverflow.com/questions/6007219/how-to-add-default-value-for-html-textarea

* Basic Rails setup: http://guides.rubyonrails.org/getting_started.html

* Info about devise: https://github.com/plataformatec/devise/wiki

* Info about resetting the databases: https://stackoverflow.com/questions/32082134/migrations-are-pending-to-resolve-this-issue-run-bin-rake-dbmigrate-rails-en

* Info about navbar style found at: https://www.w3schools.com/bootstrap/bootstrap_navbar.asp, https://stackoverflow.com/questions/19733447/bootstrap-navbar-with-left-center-and-right-aligned-items

* Info about changing what the sign up button links to: https://github.com/plataformatec/devise/wiki/How-To:-Redirect-to-a-specific-page-on-successful-sign-up-(registration), https://github.com/plataformatec/devise/wiki/How-To:-redirect-to-a-specific-page-on-successful-sign_in,-sign_out,-and-or-sign_up, https://stackoverflow.com/questions/18394001/ruby-on-rails-custom-devise-registration-controller-asking-for-create-action

* Info on how to create properly capitalized label titles: https://stackoverflow.com/questions/12724180/why-does-f-label-transform-all-caps-string-to-all-caps

* Info for the CSS for cards was found at: https://www.w3schools.com/howto/howto_css_cards.asp

* Info for font-size in CSS found at: https://css-tricks.com/almanac/properties/f/font-size/

* Info for text-styling in CSS found at: https://www.w3schools.com/cssref/pr_text_text-decoration.asp

* Info for text-aligning found at: https://www.w3schools.com/cssref/pr_text_text-align.asp

* Info for text-overflow found at: https://www.w3schools.com/cssref/css3_pr_text-overflow.asp
