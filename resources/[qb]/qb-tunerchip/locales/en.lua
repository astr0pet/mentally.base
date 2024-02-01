Locale = Locale or {}

Locale.new = function(data)
    local self = {}
    self.phrases = data.phrases or {}
    self.warnOnMissing = data.warnOnMissing or false
    return self
end

local Translations = {
    success = {
        this_vehicle_has_been_tuned = "This Vehicle Has Been Tuned",
    },
    text = {
        this_is_not_the_idea_is_it = "This is not the idea, is it?",
        connecting_nos = "Connecting NOS...",
    },
    error = {
        tunerchip_vehicle_tuned = "Vehicle Tuned!",
        this_vehicle_has_not_been_tuned = "This Vehicle Has Not Been Tuned",
        no_vehicle_nearby = "No Vehicle Nearby",
        tunerchip_vehicle_has_been_reset = "Vehicle has been reset!",
        you_are_not_in_a_vehicle = "You Are Not In A Vehicle",
        you_cannot_do_that_from_this_seat = "You cannot do that from this seat!",
        you_already_have_nos_active = "You Already Have NOS Active",
        canceled = "Canceled",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
