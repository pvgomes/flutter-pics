# pics
a pics flutter application


#### Virtual Emulator - Mac os environment 
Make sure to provide a internet connection to your mobile emulator


Access emulator path
`cd ~/Library/Android/sdk/emulator`

List your svds
`./emulator -list-avds`

Run according your desired device

`./emulator @AVDNAME -dns-server 8.8.8.8`
eg:
`./emulator @Nexus_5X_API_29 -dns-server 8.8.8.8`


Run flutter:
`./emulator @Nexus_5X_API_29 -dns-server 8.8.8.8`


You can also run for the web
`flutter run -d chrome`

