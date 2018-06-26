# Project 4
### Static Web Design

### 1. [Overview](#overview)
### 2. [Team](#team)
### 3. [Individual Contributions](#individual-contributions)
  * **[Development](#development)**
  * **[Testing](#testing)**
  * **[Meetings](#meetings)**

***

### Overview
The MAGiC team was tasked with redesigning a static web site. The site chosen was Professor Stewart's [website](http://web.cse.ohio-state.edu/~stewart.962/). To view the redesigned website, open the *build* folder inside the main project folder. Then open the *index.html* page in Firefox. The website is not fully dynamic when viewport is under 850px; thus a larger window size is recommended.

***

### Team
| Role|Team Member|
| ------------- |-------------|
| Overall Project Manager|Gail Chen|
|Coding Manager|Ariel Zhu|
|Testing Manager|Mike Lin|
|Documentation Manager|Channing Jacobs|

*Contact Us: osu.magic.team@gmail.com*

***

### Individual Contributions
#### Development
Mike:
* scraper.rb
* publication_scraper.rb
* publication.rb
* footer.css.scss
* publication.css.scss
* &#95;footer.erb
* publication.html.erb

Channing:
* layout.erb
* award.rb
* awards_scraper.rb
* awards.css.scss
* navigation.css.scss
* &#95;naviation.erb
* awards.html.erb
* README.md

Gail:
* contact.css.scss
* index.css.scss
* contact.html.erb
* index.html.erb

Ariel:
* lab.css.scss
* site.css.scss
* lab.html.erb
* README.md


#### Testing
##### Test plans can be found under lib/testing
Mike:
* unit_testing_publication_scraper.rb

Channing:
* unit_testing_awards_scraper.rb

Ariel:
* unit testing index page
* unit testing publication page
* unit testing lab page

Gail:
* unit testing navigation bar partial/css
* unit testing contact page
* unit testing awards page

##### System testing conducted by all members

#### Meetings

* July 19th:
  * Stewart's page is chosen to be redesigned
  * HTML layout of each page is decided
  * middleman is setup
* July 20th:
  * CSS is added to each page and overall site styles are chosen
  * Layout file is created
  * Partials for naviation bar and footer are created
  * Scrapers for awards and publication data from original website created
* July 24th:
  * unit testing by all members
  * updates to css and erb files to remove hard coding
  * updates to documentation and README
* July 25th:
  * check validity
  * unit testing for each page
