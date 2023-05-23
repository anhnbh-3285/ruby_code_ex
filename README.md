# Rails 6 skeleton

## Development Environment
* Ruby version: 2.7.1
* Rails version: 6.0.3.1
* Mysql version: 5.7

## Prepare

### Add user deploy
  - `sudo adduser deploy`
  Add user deploy to sudo group and setting NOPASSWD
  - `sudo usermod -a -G sudo deploy`
  - `sudo visudo`
  Add `%sudo ALL=(ALL) NOPASSWD:ALL` to end of file

### Create folder rails
  - `sudo su - deploy`
  - `sudo mkdir -p /usr/local/rails_apps`
  - `sudo chown deploy:deploy /usr/local/rails_apps`

### Generating a new SSH key and Adding a new SSH key to your GitHub account

  https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

  - `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`
  - `eval $(ssh-agent -s)`
  - `ssh-add ~/.ssh/id_rsa`

  https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account
  - copy publickey to deploy key

### Install rvm and ruby
  https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rvm-on-ubuntu-18-04
#### RVM https://rvm.io/rvm/install
  - `gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`
  - `\curl -sSL https://get.rvm.io | bash`
  - `source "$HOME/.rvm/scripts/rvm"`

#### Ruby and bundler
  - `rvm install 2.7.1`
  - `gem install bundler -v '2.1.4'`

### Install JavaScript Runtime

  - `sudo apt install -y nodejs`

  - `sudo apt-get remove cmdtest`
  - `sudo apt-get remove yarn`
  - `curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -`
  - `echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list`
  - `sudo apt-get update`
  - `sudo apt-get install yarn`

### Install nginx
  https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-18-04
  - `sudo apt install nginx`

  Optionals
  - `sudo ufw app list`
  - `sudo ufw allow 'Nginx HTTP'`
  - `sudo ufw status`

  Remove default nginx config
  - `sudo rm /etc/nginx/sites-available/default`
  - `sudo rm /etc/nginx/sites-enabled/default`

#### Start, Stop, Status Nginx

  Use systemctl
  - `sudo systemctl restart nginx`
  - `sudo systemctl start nginx`
  - `sudo systemctl stop nginx`
  - `sudo systemctl status nginx`

  Use service
  - `sudo service nginx restart`
  - `sudo service nginx start`
  - `sudo service nginx stop`
  - `sudo service nginx status`

### Install aws cli, libmysqlclient-dev
  - `sudo apt-get install libmysqlclient-dev`
  - `sudo apt install awscli`
### Clone proj and deploy

#### Clone project and init bin deploy
  Note: change `rails6_skeleton` to your project folder
  - `git clone git@github.com:framgia/rails6_skeleton.git`
  - `cd rails6_skeleton/`
  - `chmod +x deploy_bin/
  - `echo 'export PATH="$PATH:$HOME/rails6_skeleton/deploy_bin"' >> ~/.bashrc`
  - `bundle install`
