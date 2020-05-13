# workshop
A GitHub Action to upload items to the Steam Workshop

## Use it
You'll need to upload your addon using the Workshop tools of the game/app you're looking to submit to first. Then, create a `.github/workflows/main.yml` with something that resembles the following:

```yaml
name: "Upload to Workshop"

on:
  - push

jobs:
  upload:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: AnarkisGaming/workshop@v1
        with:
          appID: 727570
          publishedFileID: 2095592756
        env:
          STEAM_ACCOUNT_NAME: ${{ secrets.accountname }}
          STEAM_PASSWORD: ${{ secrets.password }}
```

## Arguments
### `appID`
The App ID of the game/app to upload to. If the game/app's Workshop page is `https://steamcommunity.com/app/727570/workshop`, you would enter `727570` here.

### `publishedFileID`
The Workshop ID of the item to update. If your item's Workshop page is `https://steamcommunity.com/sharedfiles/filedetails/?id=2074694717`, you would enter `2074694717` here.

### `path`
The path to the content to upload, relative to your repository's root. Omit to use your repository's root.

### `changelog`
An optional note to accompany your update. This is shown on your item's "Change Notes" page.

## License
```
Copyright 2020 Anarkis Gaming/Cutie Café

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```