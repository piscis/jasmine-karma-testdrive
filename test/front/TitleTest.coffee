"use strict"
assert = require("assert")

describe "we can access google", ->

  it "checks if page has a title with google in it", (done) ->

    browser.url("http://www.google.de").getTitle((err, title) ->
      assert title.indexOf("Google") isnt -1
      return
    )
    .pause(1000)
    .call(done)
    return