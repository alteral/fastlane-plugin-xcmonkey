<p align="center">
  <img src="/assets/images/xcmonkey.png"/>
</p>

<p align="center">
  <a href="https://rubygems.org/gems/xcmonkey"><img src="https://img.shields.io/gem/v/xcmonkey.svg?style=flat" /></a>
  <a href="https://rubygems.org/gems/fastlane-plugin-xcmonkey"><img src="https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg" /></a>
  <a href="/LICENSE"><img src="https://img.shields.io/badge/license-MIT-green.svg?style=flat" /></a>
</p>

## Description

This fastlane plugin is a wrapper for [xcmonkey](https://github.com/alteral/xcmonkey) - a tool for doing stress testing of iOS apps.

It replicates `xcmonkey test` command.

| Option | Description | Default |
| --- | --- | --- |
| `udid` | Set device UDID | |
| `bundle_id` | Set target bundle identifier | |
| `session_path` | Path where test session should be saved | |
| `event_count` | Set events count | `60` |
| `exclude_taps` | Exclude taps from gestures list | `false` |
| `exclude_swipes` | Exclude swipes from gestures list | `false` |
| `exclude_presses` | Exclude presses from gestures list | `false` |
| `disable_simulator_keyboard` | Disable simulator keyboard | `false` |
| `ignore_crashes` | Ignore app crashes | `false` |
| `throttle` | Fixed delay between events in milliseconds | `0` |

## Prerequisites

```bash
brew install facebook/fb/idb-companion
pip3.6 install fb-idb
```

## Getting Started

To get started with `xcmonkey`, add it to your project by running:

```bash
fastlane add_plugin xcmonkey
```

## Usage

```ruby
lane :test do
  bundle_id = 'com.apple.Maps'
  device = 'iPhone 14'
  sim = FastlaneCore::Simulator.all.filter { |d| d.name == device }.max_by(&:os_version)
  udid = sim.udid

  xcmonkey(udid: udid, bundle_id: bundle_id)
end
```
