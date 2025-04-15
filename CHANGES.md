# bw2 docker image CHANGELOG

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 2025-04-15

### Changed

+ Previous image tags indicated if the install was compatible or not with a certain ecoinvent release.
  With the addition of ecoinvent_interface to the dependencies, this limit has been removed, so the image tags don't include ecoinvent version anymore.
