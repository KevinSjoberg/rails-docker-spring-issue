# Docker Spring Issue

Here's a minimal example that causes the issue I was describing.

```
$ docker-compose build
$ docker-compose up
```

In a new window or tab:

```
$ docker-compose exec web bash
$ bin/rails c
```

Press `C-d` to exit the console, press `C-d` again to exit the shell. Notice
how the `SIGHUP` signal is caught by the server process in the previous
window/tab.

```
web_1  | E, [2020-11-21T08:36:03.109876 #1] ERROR -- : reaped #<Process::Status: pid 15 SIGHUP (signal 1)> worker=unknown
```
