-- Specifies the manifest version. 'cerulean' is the latest for current game builds.
fx_version 'cerulean'

-- Defines the game this resource is for. 'gta5' is Grand Theft Auto V.
game 'gta5'

-- The author of the resource, for informational purposes.
author 'Red Line Development'

-- A short description of what the resource does.
description 'Red Line: Cayo Perico Anomaly Loading Screen'

-- The version number of the resource.
version '1.1.0'

-- This directive tells FiveM that this resource is a loading screen.
loadscreen 'html/index.html'

-- This table lists all the files that need to be sent to the client.
-- The server needs to know about every file the HTML page uses.
files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/assets/music.mp3'
}

-- This specifies the main client-side script to run.
client_script 'client.lua'