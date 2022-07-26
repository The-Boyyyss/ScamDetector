<img src="logo/logo2.jpg">

## Scam Detector
A SwiftUI application that provides relevant information on scammers, their methods, and how to protect yourself by going through a series of questions. Essentially performing a self-assessment for yourself or your loved ones.

## Features
- Written in 100% SwiftUI
- No databases used in storing personal information
- No registration required
- Mobile compatible with most IOS devices
- Able to make phone calls
- Simple and effective questions

## Installation
Must have an IOS device that can run the XCode application.

### Option 1: Clone using HTTPS
```
$ git clone https://github.com/The-Boyyyss/ScamDetector.git
```

### Option 2: Clone using SSH
```
$ git clone git@github.com:The-Boyyyss/ScamDetector.git
```

### File Structure
- Scam-Detector (root)
    - Controllers (contains functions that are used to manage data to the views)
        - QuestionTree
        - ...
    - Data (contains raw data files that are in json format)
    - Utilities (contains reusable features that are common in some views)
        - Enums
        - Component
        - ProgressBar
        - ...
    - Models (contains all the schemas for modeling the data)
        - Result
        - ...
    - Views (all the screens for displaying the views to the application)
        - EmergencyContact
        - MoreInfo
        - ScamDetect
        - ...


## Credits
Software used in this project:
- [Swift](https://www.swift.org/)
- [XCode](https://developer.apple.com/xcode/)

Many of symbols and imagery are from SF symbols:
- [SF Symbols](https://sfsymbols.com/)

Resources used for writing the questions and possible solutions can be found in this document:
- [Document](https://docs.google.com/document/d/1xPldZtW0jv-biDFJtSytTEAWaTzccLYtXDuxeBcHyUQ/edit)

## Authors
* Matt Caballero
* Phillip Chadwick
* Danny Deng
* Varun Sidhu

## License
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
