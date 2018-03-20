# VSTS Build/RM Inspection Tasks ![build badge](https://knom-msft.visualstudio.com/_apis/public/build/definitions/9d8fcb7c-6c11-4014-9dc2-7966c94af2b2/11/badge) #

A set of build/release tasks to help debug issues with your build/release processes by inspecting the agent.

Tasks include...

* Inspect all Build Agent Environment Variables
* Inspect all files and directories

In case of errors with the processes/pipelines, inspecting these values can be very helpful for solving these issues.

## Supported Platforms ##

* Visual Studio Team Services

<!-- * Team Foundation Server 2015 Update 3 and higher (How to install extensions in TFS) -->

## Quick steps to get started ##

Add the *Inspect Environment Variables* and/or *Inspect File Structure* tasks to your build.

This should preferrably happen at the end to get the end-results of files and environment variables.

![screen1](/static/images/Screen1.png)

Once the build is done, you will find attached build / release results for files or environment variables present on the build agents at time of execution.

![screen1](/static/images/Screen2.png)

![screen1](/static/images/Screen3.png)
