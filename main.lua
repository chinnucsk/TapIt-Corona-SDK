------------------------------------------------------------
------------------------------------------------------------
-- TapIt Corona SDK
--
-- a module to use TapIt ads on your corona applications
-- by Deniz Aydinoglu
--
-- he2apps.com
--
-- GitHub repository and documentation:
-- https://github.com/deniza/TapIt-Corona-SDK
------------------------------------------------------------
------------------------------------------------------------

local tapit = require("tapit")

local function adClicked(result)

    -- for alert ads; result will be true if user clicked on "affirmative" alert button
    -- for all other ad types; result will be always true
    print("adClicked:", result)

end

-- If you would like to receive a banner ad from TapIt, simply call the function below.
--
-- zoneId is your active zoneId that you create on tapit control panel.
-- x and y are onscreen ad display positions.
-- onClick parameter is an optional callback function. It will be called when users click
-- on a banner.
-- You can use zoneId=3644 as a test mode until your actual zoneId will be approved by tapit.

tapit.requestBannerAds({zoneId=3644, x=0, y=0, onClick=adClicked})

-- If you would like to refresh banner ads automatically, please use the code below:
-- timer.performWithDelay( 60*1000, function() tapit.requestBannerAds({zoneId=3644, x=0, y=0, onClick=adClicked}) end, 0) 

-- TapIt also provides Alert Ads. If you comment out the code below, you will get
-- an alert popup.
-- swapButtons: set this parameter true to swap alert popup confirmation buttons.
-- This parameter is for compatibility purposes between android and ios platforms.

-- tapit.requestAlertAds({zoneId=3644, swapButtons=false, onClick=adClicked})


-- TapIt also supports full screen interstitial ads (wall ads)

-- tapit.requestInterstitialAds({zoneId=3644, x=0, y=0, onClick=adClicked})

-- you can also call the function below to close an already opened interstitial ads window
-- tapit.closeInterstitialAds()
