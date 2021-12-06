import jQuery from 'jquery';
import Rails from 'rails-ujs';
import Turbolinks from 'turbolinks';
require.context('../images/', true);
window.$ = jQuery;
Rails.start();
Turbolinks.start();
require("@rails/activestorage").start();
require("channels");

import 'bootstrap/dist/js/bootstrap';
import '../src/javascripts/active_nav_link';
import '../src/javascripts/contacts';
import '../src/javascripts/recaptcha';
