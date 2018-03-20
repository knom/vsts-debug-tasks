![logo](https://raw.githubusercontent.com/knom/vsts-debug-tasks/master/static/images/logo.png) 
# VSTS Build/RM Inspection Tasks ![build badge](https://knom-msft.visualstudio.com/_apis/public/build/definitions/9d8fcb7c-6c11-4014-9dc2-7966c94af2b2/11/badge) #

A set of build/release tasks to help debug issues with your build/release processes by inspecting the agent.

## Have you been in a situation where your build is just working as it should? ##

![screen4](https://raw.githubusercontent.com/knom/vsts-debug-tasks/master/static/images/Screen4.png)

## These tasks might help you! ##

Functionality includes...

* Inspect all Build Agent Environment Variables
* Inspect all files and directories

**In case of errors with the processes/pipelines, inspecting these values can be very helpful for solving issues!**

## Quick steps to get started ##

Add the *Inspect Environment Variables* and/or *Inspect File Structure* tasks to your build.

This should preferrably happen at the end of your build to get the end-results of files and environment variables.

![screen1](https://raw.githubusercontent.com/knom/vsts-debug-tasks/master/static/images/Screen1.png)

Once the build is done, you will find attached build / release results for files or environment variables present on the build agents at time of execution.

![screen2](https://raw.githubusercontent.com/knom/vsts-debug-tasks/master/static/images/Screen2.png)

![screen3](https://raw.githubusercontent.com/knom/vsts-debug-tasks/master/static/images/Screen3.png)

## Any functionality missing? ##
Please suggest a new feature on [GitHub](https://github.com/knom/vsts-debug-tasks/issues)!