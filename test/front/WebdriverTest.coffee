chai = require("chai")
assert = chai.assert
expect = chai.expect
fs = require "fs"

describe "Github tests", ->

  it "checks if title contains the search query", (done) ->

    browser.url("http://www.github.com").getTitle((err, title) ->
      assert title.indexOf("GitHub") isnt -1
      return
    )
    .pause(3000)
    .call done

    return

  it "Github test", (done) ->

    browser.url("http://www.github.com/").getElementSize(".header-logo-wordmark", (err, result) ->
      assert.equal null, err
      assert.strictEqual result.height, 26
      assert.strictEqual result.width, 89
      return
    )
    .pause(3000)
    .getTitle((err, title) ->
      assert.equal null, err
      assert.strictEqual title, "GitHub · Build software better, together."
      return
    )
    .pause(3000)
    .getCssProperty("a[href=\"/plans\"]", "color", (err, result) ->
      assert.equal null, err
      assert.strictEqual result, "rgba(65,131,196,1)"
      return
    ).saveScreenshot("/tmp/test.png")
    .pause(3000)
    .call done

    return