Achievement = require 'app/sdk/achievements/achievement'
moment = require 'moment'
GiftCrateLookup = require 'app/sdk/giftCrates/giftCrateLookup'
i18next = require('i18next')

class MemorialDayLoginAchievement extends Achievement
  @id: "memorialDayLoginAchievement"
  @title: "HAPPY MEMORIAL DAY"
  @description: "HERE'S 3 CORE ORBS TO CELEBRATE"
  @progressRequired: 1
  @rewards:
    giftChests: [GiftCrateLookup.MemorialDayLogin]

  @enabled: true

  @progressForLoggingIn: (currentLoginMoment) ->
    if currentLoginMoment != null && currentLoginMoment.isAfter(moment.utc("2018-05-25T11:00-07:00")) and currentLoginMoment.isBefore(moment.utc("2018-06-01T11:00-07:00"))
      return 1
    else
      return 0

  @getLoginAchievementStartsMoment: () ->
    return moment.utc("2018-05-25T11:00-07:00")

module.exports = MemorialDayLoginAchievement
