#!/bin/bash

clear

echo ''
echo -e "\033[1;95m=> => => \033[1;33mSTARTING DEVELOPMENT FOLDER BUILD \033[1;95m<= <= <=\033[0m"
echo ''

date



# ~~~~~~~~~~~ REMOVE OLD DEVELOPMENT FOLDER ~~~~~~~~~~

echo ''
echo -e "\033[1;33m=> => => \033[1;95mREMOVING OLD DEVELOPMENT FOLDER \033[1;33m<= <= <=\033[0m"
rm -rf dev
echo ''



# ~~~~~~~~~~~ CREATE FOLDERS ~~~~~~~~~~

echo ''
echo -e "\033[1;33m=> => => \033[1;95mCREATING FOLDERS \033[1;33m<= <= <=\033[0m"
echo ''

echo "Creating New dev Folder"
mkdir .\\dev

echo "Creating New dev/assets Folder"
mkdir .\\dev\\assets

echo "Creating New dev/assets/audio Folder"
mkdir .\\dev\\assets\\audio

echo "Creating New dev/assets/img Folder"
mkdir .\\dev\\assets\\img

echo "Creating New dev/assets/video Folder"
mkdir .\\dev\\assets\\video

echo "Creating New dev/bin Folder"
mkdir .\\dev\\bin

echo "Creating New dev/css Folder"
mkdir .\\dev\\css

echo "Creating New dev/css/lib Folder"
mkdir .\\dev\\css\\lib

echo "Creating New dev/js Folder"
mkdir .\\dev\\js

echo "Creating New dev/js/lib Folder"
mkdir .\\dev\\js\\lib

echo "Creating New dev/modules Folder"
mkdir .\\dev\\modules

echo "Creating New dev/sass Folder"
mkdir .\\dev\\sass



# ~~~~~~~~~~ CREATE FILES ~~~~~~~~~~

echo ''
echo -e "\033[1;33m=> => => \033[1;95mCREATING FILES \033[1;33m<= <= <=\033[0m"
echo ''

echo "Creating .nomedia Files For dev Folder"
touch dev/.nomedia

echo "Creating .nomedia Files For dev/assets Folders"
touch dev/assets/.nomedia
touch dev/assets/audio/.nomedia
touch dev/assets/img/.nomedia
touch dev/assets/video/.nomedia

echo "Creating .nomedia Files For dev/bin Folder"
touch dev/bin/.nomedia

echo "Creating .nomedia & main.css Files For dev/css Folders"
touch dev/css/.nomedia
touch dev/css/main.css
touch dev/css/lib/.nomedia

echo "Creating .nomedia & main.js Files For dev/js Folders"
touch dev/js/.nomedia
touch dev/js/main.js
touch dev/js/lib/.nomedia

echo "Creating .nomedia Files For dev/modules Folder"
touch dev/modules/.nomedia

echo "Creating .nomedia Files For dev/sass Folder"
touch dev/sass/.nomedia



# ~~~~~~~~~~ BUILD FILES ~~~~~~~~~~

echo ''
echo -e "\033[1;33m=> => => \033[1;95mBUILDING FILES \033[1;33m<= <= <=\033[0m"
echo ''



# ~~~~~~~~~~ index.html ~~~~~~~~~~

echo "Building dev/index.html File"
echo "<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Welcome To My Portfolio</title>

  <!-- one or the other -->
  <link rel="stylesheet" href="./css/main.css">
  <link rel="stylesheet" href="./css/main.min.css">
</head>

<body>


  <!-- one or the other -->
  <script src="./js/main.js"></script>
  <script src="./js/main.min.js"></script>
</body>

</html>
" >> dev/index.html



# ~~~~~~~~~~ dev/sass/main.scss ~~~~~~~~~~

echo "Building dev/sass/main.scss File"
echo "// globals and mixins

@import 'globals';

@import 'mixins';

// OTHER SCSS FILES GO HERE


// responsiveness THIS SHOULD BE LAST

@import 'responsive';
" >> dev/sass/main.scss



# ~~~~~~~~~~ dev/sass/_globals.scss ~~~~~~~~~~

echo "Building dev/sass/_globals.scss File"
echo "/* ~~~~~~~~~~~~~~~ globals ~~~~~~~~~~~~~~~ */" >> dev/sass/_globals.scss



# ~~~~~~~~~~ dev/sass/_mixins.scss ~~~~~~~~~~

echo "Building dev/sass/_mixins.scss File"
echo "/* ~~~~~~~~~~~~~~~ mixins & functions ~~~~~~~~~~~~~~~ */

// functions



// mixins

// media query mixins
@mixin mediaSm {
  // screen smaller than 500px
  @media screen and (max-width: 500px) {
    /* ~~~~~~~~~~~~~~~ smaller than 500px ~~~~~~~~~~~~~~~ */
    @content;
  }
}

@mixin mediaMd {
  // screen smaller than 768px
  @media screen and (max-width: 768px) {
    /* ~~~~~~~~~~~~~~~ smaller than 768px ~~~~~~~~~~~~~~~ */
    @content;
  }
}

@mixin mediaLg {
  // screen size 769 to 1170px
  @media screen and (min-width: 769px) and (max-width: 1170px) {
    /* ~~~~~~~~~~~~~~~ between 769px and 1170px ~~~~~~~~~~~~~~~ */
    @content;
  }
}

@mixin mediaXl {
  // screen larger than 1171px
  @media screen and (min-width: 1171px) {
    /* ~~~~~~~~~~~~~~~ larger than 1171px ~~~~~~~~~~~~~~~ */
    @content;
  }
}
" >> dev/sass/_mixins.scss



# ~~~~~~~~~~ dev/sass/_responsivness.scss ~~~~~~~~~~

echo "Building dev/sass/_responsivness.scss File"
echo "/*

*/
/* ~~~~~~~~~~~~~~~ responsive start ~~~~~~~~~~~~~~~ */
/*
*/

// widescreens
@include mediaXl {

}

// desktops & laptops
@include mediaLg {

}

// Small Laptops & tablets
@include mediaMd {

}

// smart phones
@include mediaSm {

}

/*

*/
/* ~~~~~~~~~~~~~~~ responsive end ~~~~~~~~~~~~~~~ */
/*
*/
" >> dev/sass/_responsivness.scss



# ~~~~~~~~~~ dev/bin/build_dist.sh ~~~~~~~~~~

echo "Building dev/bin/build_dist.sh File"
echo "
#!/bin/bash

# first arg is for minify. if set to true the css/js will be obsfucated...if false the files will still be minified but readable.

# second arg is for gh-pages. if true will deploy project to gh-pages on github. Must have a valid "homepage" entry in package.json file

clear

echo -e \"\033[1;95m=> => => \033[1;33mSTARTING DISTRIBUTION FOLDER BUILD \033[1;95m<= <= <=\033[0m\"
echo

date

echo
echo -e \"\033[1;33m=> => => \033[1;95mREMOVING OLD DEVELOPMENT FOLDER \033[1;33m<= <= <=\033[0m\"
rm -rf .\\\dist
echo

echo
echo -e \"\033[1;33m=> => => \033[1;95mCREATE FOLDERS STARTED \033[1;33m<= <= <=\033[0m\"
echo

echo Creating New dist Folder
mkdir .\\\dist

echo Creating New dist/css Folder
mkdir .\\\dist\\\css

echo Creating New dist/css/lib Folder
mkdir .\\\dist\\\css\\\lib

echo Creating New dist/js Folder
mkdir .\\\dist\\\js

echo Creating New dist/js/lib Folder
mkdir .\\\dist\\\js\\\lib

echo Creating New dist/assets Folder
mkdir .\\\dist\\\assets

echo Creating New dist/assets/audio Folder
mkdir .\\\dist\\\assets\\\audio

echo Creating New dist/assets/img Folder
mkdir .\\\dist\\\assets\\\img

echo Creating New dist/assets/video Folder
mkdir .\\\dist\\\assets\\\video

echo Creating New dist/modules Folder
mkdir .\\\dist\\\modules

echo
echo -e \"\033[1;33m=> => => \033[1;95mCOPY FILES STARTED \033[1;33m<= <= <=\033[0m\"
echo

echo Copying Images from dev/assets/img to dist/assets/img
cp -rf dev/assets/img/*.* dist/assets/img

echo Copying Audio from dev/assets/audio to dist/assets/audio
cp -rf dev/assets/audio/*.* dist/assets/audio

echo Copying Video from dev/assets/video to dist/assets/video
cp -rf dev/assets/video/*.* dist/assets/video

echo Copying CSS Lib from dev/css/lib to dist/css/lib
cp -rf dev/css/lib/*.* dist/css/lib

echo Copying JS Lib from dev/js/lib to dist/js/lib
cp -rf dev/js/lib/*.* dist/js/lib

echo Copying Pages from dev/modules to dist/modules
cp -rf dev/modules/*.* dist/modules

echo Copying Index from dev to dist
cp -rf dev/index.html dist

echo
echo -e \"\033[1;33m=> => => \033[1;95mMINIFY ASSETS STARTED \033[1;33m<= <= <=\033[0m\"
echo

if (\$1 = true)
then
	echo Minifying CSS w/obsfucation
	uglifycss dev/css/main.css > dist/css/main.min.css
	echo ''
	echo Minifying JavaScript w/obsfucation
	uglifyjs dev/js/main.js > dist/js/main.min.js
else
	echo Minifying CSS
	uglifycss dev/css/main.css > dist/css/main.min.css
	echo ''
	echo Minifying JavaScript
	uglifyjs dev/js/main.js > dist/js/main.min.js
fi

if (\$2 = true)
then
	echo ''
	echo -e \"\033[1;33m=> => => \033[1;95mDEPLOYING PROJECT TO GH-PAGES \033[1;33m<= <= <=\033[0m\"
	echo ''
	gh-pages -d dist
else
	echo ''
	echo -e \"\033[1;33m=> => => \033[1;95mNOT DEPLOYING PROJECT TO GH-PAGES \033[1;33m<= <= <=\033[0m\"
	echo ''
fi

date

echo
echo -e \"\033[1;95m=> => => \033[1;33mCOMPLETED DISTRIBUTION FOLDER BUILD \033[1;95m<= <= <=\033[0m\"
echo
" >> dev/bin/build_dist.sh

echo ''
echo -e "\033[1;95m=> => => \033[1;33mbuild_dist.sh must be ran from the root of the project inorder to work properly. use dev/bin/build_dist.sh false false ... refer to build_dist.sh for bool values/useage \033[1;95m<= <= <=\033[0m"
echo ''



# ~~~~~~~~~~ end builds ~~~~~~~~~~

echo ''
date

echo ''
echo -e "\033[1;95m=> => => \033[1;33mCOMPLETED DEVELOPMENT FOLDER BUILD \033[1;95m<= <= <=\033[0m"
echo ''