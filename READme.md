[![Build Status](https://travis-ci.com/peterkuria/EcommerceReact360VRTour.svg?branch=master)](https://github.com/peterkuria/EcommerceReact360VRTour)

- [<a name="part1"></a>Part 1: Virtual Reality Tour with React360](#a-name%22part1%22apart-1-virtual-reality-tour-with-react360)
  - [<a name="getting-started"></a>Getting Started](#a-name%22getting-started%22agetting-started)
    - [Tech Stacks](#tech-stacks)
- [<a name="adding-dependencies"></a>Setting up the Dev environment](#a-name%22adding-dependencies%22asetting-up-the-dev-environment)
  - [Steps to setup the environment](#steps-to-setup-the-environment)
  - [<a name="create-new-react360-project"></a>Create a new React360 Project](#a-name%22create-new-react360-project%22acreate-a-new-react360-project)
    - [version control set-up](#version-control-set-up)
- [Part 2: The Backend](#part-2-the-backend)
- [Part 3: Continuous Delivery and version control](#part-3-continuous-delivery-and-version-control)
- [Contributors](#contributors)

**[A React360 Virtual Reality, Graphql, Apollo, Microservices and Kubernetes](https://github.com/peterkuria/EcommerceReact360VRTour)**

[Part 1: Virtual Reality Tour with React360](#part1)
## <a name="part1"></a>Part 1: Virtual Reality Tour with React360

### <a name="getting-started"></a>Getting Started

#### Tech Stacks
|            React360            |             JavaScript              |             Django              |             GraphQL              | Apollo |             Python              |
| :----------------------------: | :---------------------------------: | :-----------------------------: | :------------------------------: | :----: | :-----------------------------: | :-----------------------------: |
| ![](./static_assets/react.png) | ![](./static_assets/JavaScript.png) | ![](./static_assets/django.png) | ![](./static_assets/graphql.png) |        | ![](./static_assets/python.png) | ![](./static_assets/apollo.png) | ![](./static_assets/python.png) |


<br> [Inspired by Facebook VR](https://facebook.github.io/react-360/docs/setup.html) <br>

This is a Virtual Reality experience created using the opensource Facebook's React360 library that makes use of [threejs](https://threejs.org).

In this awesome experience, I am going to create an amazing 360 and VR experience for the Facebook Developers community and showcase the power of using Javascript to create VR experiences for Web and cross-platform devices augment the current virtual reality experiences of others such as [unity3d](https://unity.com), [Vive](https://www.vive.com/eu/product/vive-pro/), Samsung Oculus and many others.

I will be adding a backend api to act as a data store.
This repo will be continuously be updated and new technologies introduced with time, such as, Dockerising our app to leverage the power micro-services and managing and scaling our apps with Kubernetes. We will eventually deploy and run this app on one of the popular cloud providers such as AWS, Azure of Google Cloud.

To get started with React360 this, hit on [Facebooks official React360 docs](https://facebook.github.io/react-360/docs/setup.html)

We can alternatively switch Django Graphql with API server module for Node/Express backend [Parse-server](https://github.com/parse-community/Parse-Server#getting-started)


## <a name="adding-dependencies"></a>Setting up the Dev environment

### Steps to setup the environment

* Make sure you've the following installed on your developement PC, Mac or Linux machine:

- Node
- NPM or yarn
- react-native
- react
- react-360-cli

 * You can install them by entering this on your terminal:

```sh
yarn add global react react-native react-360-cli
```


### <a name="create-new-react360-project"></a>Create a new React360 Project


[React360](https://github.com/facebook/react-360) use the [React-native](https://github.com/facebook/react-native)
$ mkdir EcommerceReact360VRTour && cd EcommerceReact360VRTour
$ echo "# EcommerceReact360VRTour" >> README.md
$ react-360-cli init React360VRTour
$ cd React360VRTour

#### version control set-up

```bash
$ git init
$ git commit -m "first commit"
```

Hit your cloud Git hoster and create a new empty repository, either Github.com, Bitbucket or Gitlab or any other cloud hosting platform. I chose to use Github and named my repo similar name as my current projects root directory, i.e EcommerceReact360VRTour

``sh
$
$ mkdir .circleci/config.yml



```bash
# open your root project directory
$ git remote add origin git@github.com:<your-github-username>/EcommerceReact360VRTour.git
$ git push -u origin master
```

Move the index.html to ./Public folder and update imports on
## [Part 2: The Backend](#part2)

Now we can add a backend API or utilise one if we have it on our development stack.

## [Part 3: Continuous Delivery and version control](#part3)

To Get started with this project:

clone this repository or create a new repository on the command line

```sh
git clone
```

Developed by a group of FaceBooks DevC 2019

## Contributors

1. [Peter Kuria](https://github.com/peterkuria)

[EOF]