RAILS BASE SETUP

rails new testae --webpack --database=postgresql --skip-active-storage --skip-action-cable --skip-coffee --skip-turbolinks --skip-spring

OPTIONAL [ --skip-bootsnap --skip-system-test --skip-test  --skip-namespace ]



GEMS TO ADD INTO THE GEMFILE RIGHT BEFORE GROUPS

gem 'bootstrap'
gem 'font-awesome-sass'
gem 'simple_form'
gem 'autoprefixer-rails'
gem 'jquery-rails'
gem 'carrierwave'
gem 'mini_magick'
gem 'fog-aws'


GEMS TO ADD IN DEVELOPMENT AND TEST GROUP ONLY

gem 'dotenv-rails'



BASH CODE
bundle install
rails generate simple_form:install --bootstrap



YARN COMMAND
yarn install
yarn add bootstrap jquery popper.js typed.js
touch .env
echo '.env*' >> .gitignore



ADD LINES INTO FILE app/javascript/packs/application.js
import 'bootstrap';


THE FILE app/assets/javascripts/application.js MUST HAVE

//= require jquery
//= require jquery_ujs
//= require rails-ujs
//= require_tree .





BASH COMMAND FROM ROOT FOLDER

rm app/assets/stylesheets/application.css && touch app/assets/stylesheets/application.scss

echo '// Graphical variables
@import "config/fonts";
@import "config/colors";
@import "config/bootstrap_variables";

// External libraries
@import "font-awesome-sprockets";
@import "font-awesome";
@import "bootstrap";

// Your CSS partials
@import "layouts/index";
@import "components/index";
@import "pages/index";' > app/assets/stylesheets/application.scss





mkdir app/assets/stylesheets/components
touch app/assets/stylesheets/components/_index.scss
echo '// Import your components CSS files here.' > app/assets/stylesheets/components/_index.scss

mkdir app/assets/stylesheets/pages
touch app/assets/stylesheets/pages/_index.scss
echo '// Import your pages CSS files here.' > app/assets/stylesheets/pages/_index.scss

mkdir app/assets/stylesheets/layouts
touch app/assets/stylesheets/layouts/_index.scss
echo '// Import your layouts CSS files here.' > app/assets/stylesheets/layouts/_index.scss

mkdir app/assets/stylesheets/config
touch app/assets/stylesheets/config/_bootstrap_variables.scss

echo '// This is where you override default Bootstrap variables
// 1. All Bootstrap variables are here => https://github.com/twbs/bootstrap-sass/blob/master/assets/stylesheets/bootstrap/_variables.scss
// 2. These variables are defined with default value (see https://robots.thoughtbot.com/sass-default)
// 3. You can override them below!

// General style
$font-family-sans-serif:  $body-font;
$headings-font-family:    $headers-font;
$body-bg:                 $light-gray;
$font-size-base: 1rem;

// Colors
$gray-base:       $gray;
$brand-primary:   $blue;
$brand-success:   $green;
$brand-info:      $yellow;
$brand-danger:    $red;
$brand-warning:   $orange;

// Buttons & inputs radius
$border-radius-base:  2px;
$border-radius-large: 2px;
$border-radius-small: 2px;

// Override other variables below!' > app/assets/stylesheets/config/_bootstrap_variables.scss


touch app/assets/stylesheets/config/_colors.scss

echo '// Define variables for your color scheme

// For example:
$red: #EE5F5B;
$blue: #469AE0;
$yellow: #FDB631;
$orange: #E67E22;
$green: #32B796;
$gray: #000000;
$light-gray: #F4F4F4;' > app/assets/stylesheets/config/_colors.scss


touch app/assets/stylesheets/config/_fonts.scss

echo '// Import Google fonts
@import url("https://fonts.googleapis.com/css?family=Open+Sans:400,300,700|Raleway:400,100,300,700,500");

// Define fonts for body and headers
$body-font: "Open Sans", "Helvetica", "sans-serif";
$headers-font: "Raleway", "Helvetica", "sans-serif";

// To use a font file (.woff) uncomment following lines
// @font-face {
//   font-family: "Font Name";
//   src: font-url("FontFile.eot");
//   src: font-url("FontFile.eot?#iefix") format("embedded-opentype"),
//        font-url("FontFile.woff") format("woff"),
//        font-url("FontFile.ttf") format("truetype")
// }
// $my-font: "Font Name";' > app/assets/stylesheets/config/_fonts.scss


