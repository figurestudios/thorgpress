# thorgpress
THE THORG SHOWS US HOW TO PRESS A SYSTEM TO ITS ABSOLUTE LIMITS, EVEN THOUGH ONE CAN NEVER BEAT THORG'S BENCH RECORD

## Run (on Windows)

* `yagna service run`
* Open a new command prompt
* `set YAGNA_APPKEY=<YOUR_APPKEY_HERE>` 

> (your app-key can be found with `yagna app-key list`)

* `yagna payment init --sender`
* `py requestor.py`

## Build
```sh
docker build -t thorgpress:latest .
gvmkit-build thorgpress:latest
gvmkit-build thorgpress:latest --push
```

## Credits
Idea from @DrPillow#1782 in the [Golem Discord](https://chat.golem.network/).
