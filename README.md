# VSTS Build/RM Inspection Tasks  [![Version](https://img.shields.io/vscode-marketplace/v/knom.vsts-debughelper-tasks.svg?label=VS%20Marketplace&logo=visual-studio-code&logoColor=white)](https://marketplace.visualstudio.com/items?itemName=knom.vsts-debughelper-tasks) [![Visual Studio Marketplace Downloads](https://img.shields.io/vscode-marketplace/d/knom.vsts-debughelper-tasks.svg?logo=visual-studio-code&logoColor=white)](https://marketplace.visualstudio.com/items?itemName=knom.vsts-debughelper-tasks) [![GitHub License](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/knom/vsts-debug-tasks/blob/master/LICENSE.md) ![build badge](https://knom-msft.visualstudio.com/_apis/public/build/definitions/9d8fcb7c-6c11-4014-9dc2-7966c94af2b2/11/badge) #

A set of build/release tasks to help debug issues with your build/release processes by inspecting the agent.

## Supported Platforms

* Azure DevOps - Pipelines
* Team Foundation Server 2015 Update 3 and higher ([How to install extensions in TFS](https://www.visualstudio.com/en-us/docs/marketplace/get-tfs-extensions))
* **Only Windows** - sorry, this is due to the lack of Powershell support of the underlying task FX platform :-(

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
Or you can also add multiple inspection tasks and track diffs of the variables or files.

![screen1](https://raw.githubusercontent.com/knom/vsts-debug-tasks/master/static/images/Screen1.png)

Once the build is done, you will find attached build / release results for files or environment variables present on the build agents at time of execution.

![screen2](https://raw.githubusercontent.com/knom/vsts-debug-tasks/master/static/images/Screen2.png)

![screen3](https://raw.githubusercontent.com/knom/vsts-debug-tasks/master/static/images/Screen3.png)

## Any functionality missing? ##
Please suggest a new feature on [GitHub](https://github.com/knom/vsts-debug-tasks/issues)!
