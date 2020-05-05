# Peer Group Pair creator

This project takes Makers Peer Groups and assigns them randomly into pairs to facilitate a weekly Zoom with a different Peer Group.

Current output is text, which can be pasted into Slack weekly.

The pairing is seeded with the day of the week (currently Wednesday), so the pairing is the same for each Wednesday.

The Sinatra app shows the pairings for the next Wednesday to occur.

## Usage

```
1. $ bundle install
2. $ ./run
```

## Improvements

* Refactor this_wednesday to return any next day
* Seed shuffle method with nil and then assign Time.now.to_i to pass rubocop?
* Use Zoom api to setup meetings
* Add copy button to copy text to clipboard
* Turn into Slack bot