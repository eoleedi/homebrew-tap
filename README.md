![eoleedi/tap banner](assets/homebrew-tap-banner.png)

# eoleedi/homebrew-tap

[![homebrew tap eoleedi](https://img.shields.io/badge/brew%20tap-eoleedi%2Ftap-orange?logo=homebrew&color=FBB040)](https://github.com/eoleedi/homebrew-tap)

[@eoleedi](https://github.com/eoleedi)'s custom formulae and casks for the [Homebrew package manager](https://brew.sh).

## What is this?

This is a [Homebrew tap](https://docs.brew.sh/Taps) containing tools that are not available in the main Homebrew repositories or are packaged here for convenience.

## How to enable this tap?

Just type:

```bash
brew tap eoleedi/tap
```

This will allow you to install formulae and casks from this tap.

You can also install a package directly with:

```bash
brew install eoleedi/tap/<formula>
brew install --cask eoleedi/tap/<cask>
```

## Available formulae

<details>
  <summary>Formulae list</summary>
  <ul>
    <li><a href="#timetree-exporter">timetree-exporter</a></li>
    <li><a href="#wifi-loc-control">wifi-loc-control</a></li>
  </ul>
</details>

### `timetree-exporter`

[![Source](https://img.shields.io/badge/eoleedi-TimeTree--Exporter-grey?logo=github&color=181717)](https://github.com/eoleedi/TimeTree-Exporter) [![Formula](https://img.shields.io/badge/Formula-timetree--exporter-grey?logo=ruby&color=FBB040&logoColor=CC342D)](Formula/timetree-exporter.rb)

Tool for exporting TimeTree Calendar and converting to iCal format (`.ics`).

```bash
brew install eoleedi/tap/timetree-exporter
```

### `wifi-loc-control`

[![Source](https://img.shields.io/badge/vborodulin-wifi--loc--control-grey?logo=github&color=181717)](https://github.com/vborodulin/wifi-loc-control) [![Formula](https://img.shields.io/badge/Formula-wifi--loc--control-grey?logo=ruby&color=FBB040&logoColor=CC342D)](Formula/wifi-loc-control.rb)

Change macOS network location based on the Wi-Fi network name (SSID).

```bash
brew install eoleedi/tap/wifi-loc-control
```

To start `wifi-loc-control` now and restart at login:

```bash
brew services start wifi-loc-control
```

## Available casks

<details>
  <summary>Casks list</summary>
  <ul>
    <li><a href="#flow-translate">flow-translate</a></li>
  </ul>
</details>

### `flow-translate`

[![Source](https://img.shields.io/badge/huang422-EdgeAI--Flow--Translate-grey?logo=github&color=181717)](https://github.com/huang422/EdgeAI-Flow-Translate) [![Cask](https://img.shields.io/badge/Cask-flow--translate-grey?logo=ruby&color=FBB040&logoColor=CC342D)](Casks/flow-translate.rb)

Local real-time bilingual captions, transcripts, and meeting summaries.

```bash
brew install --cask eoleedi/tap/flow-translate
```

## Credits

README Design Inspiration from [cdalvaro/homebrew-tap](https://github.com/cdalvaro/homebrew-tap)
