# Private project shell

## Table of Contents

  * [About this repository](#about-this-repository)
  
  * [My contributions to the project](#my-contributions-to-the-project)
  
  * [How privacy was secured](#how-privacy-was-secured)

  * [How it was implemented](#how-it-was-implemented)
    1. [Prerequisites](#prerequisites)
    2. [Clear content](#clear-content)
    3. [Anonymize commits from third parties](#anonymize-commits-from-third-parties)

  * [Credits and references](#credits-and-references)


## About this repository
This repository serves as a personal project to learn more about Git's deep functionality for modifying commit history, sanitization, anonymization, and security practices to apply over an existing project.

It also works as a personal roadmap for my overall improvement as a junior/experienced junior developer and as a team member with improving work methodologies over time.


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

In the previous two images, you can see a snapshot of the major improvements applied to the project over time:
| Before                    | After                     |
| ------------------------- | ------------------------- |
| Keep feature branch up to date with frequent pulls from develop | Keep feature branch up to date with rebase from develop branch            |
| Informal code reviews made via direct messages between team members, changes made directly by seniors/tl without feedback, and informal management for merging feature branches into the develop branch | Use of Pull Requests to document reviews, changes made by the original author with follow-up from the reviewer, and a cleaner workflow from feature branches into the develop branch    |
| Big features worked over long periods of time             | Features delimited to a more limited scope and time                                     |
| Direct merges from feature branches into the develop branch | Merges made into the develop branch only through approved pull requests |
| Git tree structured with multiple parallel branches    | Git tree structured with a cleaner parent-child relationship            |
| Commit titles documented with mixed languages and criteria | Commit titles documented using [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) rules |
| Single commits may contain changes related to features, fixes, and refactoring | Single commits related only to a feature, fix, or refactor |
| Code changes with simplified comments in Jira tickets | Code changes documented in pull requests |
| In-code-docs weren't allowed           | In-code documentation for classes and functions of higher complexity |

### Contribution Graph

<p align="center">
  <img src="https://github.com/MartinFiorde/private-project-shell/blob/main/assets/contrib_graph.png" />
</p>

### Commits made per author per month

<p align="center">
  <img src="https://github.com/MartinFiorde/private-project-shell/blob/main/assets/commits_per_month.png" />
</p>


## How privacy was secured
To ensure privacy, I followed a strict workflow and applied various techniques including:

- Removed code from all commits.
- Anonymized contributors' identities and emails.
- Flattened commit parent-child relationships from the main branch.
- Removed tags, branch names, and commit descriptions.
- Manually removed the last commits related to pre-production and production deploys.

The following information was the only one preserved for building this repository’s commit history:

- Commits with names, dates, and authoring data
- Personal commits with direct name and email references
- Commits from third parties with anonymized names and emails
- Project statistics from anonymized contributors (only as images in this README)


## How it was implemented


### 1. Prerequisites
To replicate the process, make sure you are working on the following OS with these tools and dependencies installed:

- Windows 10 or later
- Git/GitBash v.2.45.1


### 2. Clear content
Download the script [create-shell-repo.sh](https://github.com/MartinFiorde/private-project-shell/blob/main/assets/create-shell-repo.sh), open a GitBash terminal in the same directory, and execute the following script:
```bash
./create-shell-repo.sh /path/to/source/repo /path/to/destination
```
```bash
# Example
./create-shell-repo.sh "/c/Users/PersonalUser/Desktop/original-project" "/c/Users/PersonalUser/Desktop/shell-project"
```

After the execution is completed, you will have a shell copy of the develop branch from the original project replicated in the destination directory.


### 3. Anonymize commits from third parties
Download the following [script](https://github.com/MartinFiorde/private-project-shell/blob/main/assets/git-bash-command-to-change-authors.txt) and manually input all the names and emails you want to anonymize. This can be done by replacing the `REDACTEDXXXX` texts with the authors and emails as they appear in the original repository. They will be changed with the related `NEW_NAME="This-will-be-the-new-name"`.

After the execution is completed, the copied project should be all clear of code, with a flattened Git tree, and all commits from third parties anonymized.


## Credits and references
Special thanks to the following tools, contributors, and sources for their support and inspiration in the making of this repository and the improvements over time from the original project:

- [Git Fork](https://git-fork.com/): tool used to generate the images from repository statistics and to work more comfortably with the Git workflow in general.
- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/): simple and direct rules for commit titles.
- [Pull Request Etiquette](https://gist.github.com/mikepea/863f63d6e37281e329f8): good practices to implement for pull requests in a team workflow.
