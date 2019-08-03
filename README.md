# Trello Scripts

A collection of small utility trello scripts that make my work flows nicer.

## trello-bulk

A command line tool to add a collection of cards to the given board and list.

    trello-bulk --user dwilson --board 'Testy Board' --list TODO --cards card-sets/pip.yaml

To create the cards `trello-bulk` requires a `TRELLO_DEVELOPER_PUBLIC_KEY` and
`TRELLO_MEMBER_TOKEN` to be set in its environment. You can find these values
(and your trello username) from the
[Developer API Keys page](https://trello.com/app-key) and the "generate a Token"
link.

### Installing as a developer from GitHub

    git clone https://github.com/deanwilson/trello-scripts.git
    cd trello-scripts/trello-bulk

    bundle install

    ./trello-bulk --help

### Card sets

Each card set should be a valid YAML document containing an array of cards, each
with a title and description. This repo contains
[example card sets](/trello-bulk/card-sets/)

### Author

  [Dean Wilson](https://www.unixdaemon.net)

### License

 * Released under the GPLv2
