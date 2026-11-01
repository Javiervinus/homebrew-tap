# Javiervinus Homebrew Tap

Homebrew casks for apps by [Javier Vinueza](https://github.com/Javiervinus).

## Install

```sh
brew install --cask javiervinus/tap/paperclip-dispatch
```

Or tap once and install by name:

```sh
brew tap javiervinus/tap
brew install --cask paperclip-dispatch
```

## Casks

| Cask | App | Requires |
| --- | --- | --- |
| `paperclip-dispatch` | [Paperclip Dispatch](https://github.com/Javiervinus/paperclip-dispatch), a native macOS app for [Paperclip](https://paperclip.ing) | macOS 26 Tahoe |

The app updates itself, so `brew upgrade` skips it unless you pass `--greedy`. To remove the app and its
data, use `brew uninstall --zap --cask paperclip-dispatch`.

## Maintenance

Each release of an app updates its cask from that app's release script (`version` and `sha256`), so the
casks here are not edited by hand.
