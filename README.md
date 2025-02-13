# Private proyect shell

## Table of Contents

  * [About this repository](#about-this-repository)
  
  * [My contributions to the proyect](#my-contributions-to-the-proyect)
  
  * [How privacy was secured](#how-privacy-was-secured)

  * [How it was implemented](#how-it-was-implemented)
    1. [Prerequisites](#prerequisites)
    2. [Clear content](#clear-content)
    3. [Anonymize commits from third parties](#anonymize-commits-from-third-parties)

  * [Credits and references](#credits-and-references)


## About this repository
This repository serves as a personal project to learn more about git in deep functionality for modification of commits history, sanitization, anonimization and security practices to apply over an existing proyect.

It also works as a personal roadmap from my overal improvement as junior/ experienced-junior developer, and as member of a developer team with improving work methodologies overtime.


## My contributions to the project
I contributed to this project by implementing core features, ensuring privacy, and refining the overall structure for better readability and maintainability. Below are the key areas of focus:

### Before
<p align="center">
  <img src="https://github.com/MartinFiorde/private-project-shell/blob/main/assets/before.png" />
</p>

### After
<p align="center">
  <img src="https://github.com/MartinFiorde/private-project-shell/blob/main/assets/after.png" />
</p>

In the previous two images you can see a snapshot from the major improvements applied to the project over time:
| Before                    | After                     |
| ------------------------- | ------------------------- |
| Keep feat branch up to date with frecuent pulls from develop | Keep feat branch up to date with rebase from develop branch            |
| Informal code reviews made via direct messages between team members, changes made directly by seniors/ tl without feedback, and informal managing for merge of feat branches into develop branch | Use of Pull Request to document reviews, changes made by the original author with follow up from reviewer, and cleaner workflow from feat branches into develop branch    |
| Big features worked over long periods of time             | Features delimited in more limited scope and time                                     |
| Git tree structured with multiple paralel branches    | Git tree structured with more clean parent-child relationship            |
| Commit titles documented with mixed lenguage and criteria | Commit titles documented using [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) rules |
| Single commits may contain changes related to features, fixes and refactoring | Single commits related to only a feature, fix or refactor only |
| Changes in code with simplified comment in Jira tickets | Changes in code documented in pull requests |
| In-code-docs wasn't allowed           | In code documentation for classes and functions of higher complexity |

### Contrib Graph

<p align="center">
  <img src="https://github.com/MartinFiorde/private-project-shell/blob/main/assets/contrib_graph.png" />
</p>

### Commits made per author per month

<p align="center">
  <img src="https://github.com/MartinFiorde/private-project-shell/blob/main/assets/commits_per_month.png" />
</p>


## How privacy was secured
To ensure privacy, i followed a strict workflow and applied various techniques including:

- Removed code from all commits.
- Anonymized contributors identities and emails.
- Flatened commits parent-child relationship from the main branch.
- Removed tags, branch names and commit descriptions.
- Manually removed last commits related to pre-production and production deploy.

The following information was the only one preserved for the build up of this repository commit history:

- Commits with name, date and authoring data
- Personal commits with direct name and email reference
- Commits from third parties with anonimized names and emails
- Project statics from anonimized contributors (only as images in this readme)


## How it was implemented


### 1. Prerequisites
To replicate the process make sure you are working on the following OS with these tools and dependencies installed:

- Windows 10 or superior
- Git/ GitBash v.2.45.1


### 2. Clear content
Download the script [create-shell-repo.sh](https://github.com/MartinFiorde/private-project-shell/blob/main/assets/create-shell-repo.sh), open a GitBash terminal in the same directory, and execute the following script:
```Bash
./create-shell-repo.sh /path/to/source/repo /path/to/destination
```
```Bash
# example
./create-shell-repo.sh "/c/Users/PersonalUser/Desktop/original-project" "/c/Users/PersonalUser/Desktop/shell-proyect"
```

After the execution is completed, you will have a shell copy of the develop branch from the original project replicated in the destination directory.


### 3. Anonymize commits from third parties
Download the following [script](https://github.com/MartinFiorde/private-project-shell/blob/main/assets/git-bash-command-to-change-authors.txt) and manually input all the names and emails you want to anonimize. This can be done replacing the `REDACTEDXXXX` texts with the author and emails as appear in the original repository, and they will be changed with the related `NEW_NAME="This-will-be-the-new-name"`.

After the execution is completed, the copied project should be all clear of code, with a git tree flatened, and all commits from third paties anonimized.


## Credits and references
Special thanks to the following tools, contributors and sources for their support and inspiration in the making of this repository, and the improvement over time from the original project:

- [Git Fork](https://git-fork.com/): tool used to generate the images from repository statics, and to work more confortable with the git workflow in general.
- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/): simple and direct rulling for commit titles.
- [Pull Request Etiquette](https://gist.github.com/mikepea/863f63d6e37281e329f8): good practices to implement for pull request in a team workflow.

