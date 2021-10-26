# meatballs
An open source recipe book from the awesome staff of Clinical Genomics.

![image](https://user-images.githubusercontent.com/28093618/138847375-22f22ebf-c15a-425f-8657-29cb8e2e337b.png)


This repository is created as GitHub playground for the group workshop in Sigtuna (28-19 Oct 2021).

We hope that it will be a fun way to learn how to use GitHub for opening and reviewing pull requests!

## Run meatballs on your computer using Docker
If you have Docker installed on your computer you could run meatballs locally using the following commands 

Howto:
- clone this repository to your computer with the following command:
```
git clone https://github.com/Clinical-Genomics/meatballs.git
```

- Move your working directory in the cloned repository folder:
```
cd meatballs
```

- Build and run the Docker image:
```
docker build -t meatballs .
```

- Run the image:
```
docker run --rm -p 8080:8080 meatballs
```

You could now browse the content of meatballs using the url: http://0.0.0.0:8080/ in a browser of your choice.


## Submit a recipe

Looking to submit a recipe? Follow these instructions:

### Open a pull request with the recipe you wish to add

The content of your recipe should be included in the docs folder of this repository. Make sure your recipe is created in the right category (appetizers, main_courses, desserts, drinks ..?). The text should be formatted in [markdown](https://www.markdownguide.org/basic-syntax/).

To create a pull request you could **either create a new branch containing the changes locally** and then push it to this repository to open the pull request or you could add changes and open a pull request using the **GitHub web-bases editor**. 

A simple guide on how to open a general pull request in GitHub can be found [here](https://opensource.com/article/19/7/create-pull-request-github). Keep in mind that this is the usual way to work with pull requests, but it requires basic usage of the terminal.

A guide on how to create a pull request using the GitHub web editor is present [here](https://docs.github.com/en/codespaces/the-githubdev-web-based-editor)

### Previewing the contents using mkdocs serve

This option is only available if you have the repository forked and installed locally. You could preview the content of the docs folder by running: 
```
mkdocs serve
```
