@Projects = new Meteor.Collection("projects")

if Meteor.isClient
  Template.projectsIndex.projects = Projects.find()
  Accounts.ui.config
    passwordSignupFields: 'EMAIL_ONLY'
  AccountsEntry.config
    homeRoute: '/sign-in'
    dashboardRoute: '/'

if Meteor.isServer
   Meteor.startup -> 
     # code to run on server at startup
