# Peer Group Pair creator

This project takes Makers Peer Groups and assigns them randomly into pairs to facilitate a weekly Zoom with a different Peer Group.

Current output is text, which can be pasted into Slack weekly.

The pairing is seeded with the day of the week (currently Wednesday), so the pairing is the same for a particular Wednesday but changes each week.

The Sinatra app shows the pairings for the next Wednesday to occur.

## Usage

Set up the database using the commands in `db/migrations/01_create_and_populate_database.sql`

```
$ bundle install
$ ./run
```

This will open the default browser and load http://localhost:9292, probably before the server is running, so need to refresh to see page.

## Improvements

* Update logic so on a Wednesday, it shows the current Wednesday, not the next one
* Refactor this_wednesday to return any next day
* Refactor PeerGroupPairs to use Class method
* Find out how to pass rubocop with (seed = Time.now.to_i) default arguement for PeerGroupPairs.shuffle
* Use Zoom api to setup meetings
* Add copy button to copy text to clipboard
* Turn into Slack bot