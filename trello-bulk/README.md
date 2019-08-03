# trello-bulk

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

### Due Dates

It's possible to specify relative due dates in the card set with the addition of a
`due` to the YAML hash. This represents the number of days in the future

    > cat card-sets/thing-steps.yaml
    cards:
      - title: Place order
        description: Order the thing - due 3 days after you run `trello-bulk`
        due: +3
      - title: Deploy
        description: Deploy - due 6 days after running `trello-bulk` and 3 days after 'Place order'
        due: +6

This is currently quite a blunt approach that does not allow specifying times or
any interval other than whole days.

### Namespacing / Making card contents less static

`trello-bulk` has very basic support for templating a literal string in the
title and description fields of the cards. This allows you to easily
substitute details like a project name, incident ID or system title. You
invoke this substitution from the command line with the `--replace`
argument and two `==` separated strings:

    --replace 'ORIGINAL_TEXT==REPLACEMENT_TEXT'

    --replace '%%incident_id%%==Orders_incident 004'

And add the `ORIGINAL_TEXT` in your card set where ever you would like the
replacement to happen.

    > cat card-sets/replaceable-things.yaml
    cards:
      - title: "Initiate incident report for %%incident_id%%"
        description: "We should have an incident report for %%incident_id%%"

The code internally uses `==` as the separator so avoid that in the text
arguments given to the `--replace` option.

### Author

  [Dean Wilson](https://www.unixdaemon.net)

### License

 * Released under the GPLv2
