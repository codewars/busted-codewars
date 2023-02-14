-- Example from https://lunarmodules.github.io/busted/
describe("Busted unit testing framework", function()
  describe("should be awesome", function()
    it("should be easy to use", function()
      assert.truthy("Yup.")
    end)

    it("should have lots of features", function()
      -- deep check comparisons!
      assert.are.same({ table = "great"}, { table = "great" })

      -- or check by reference!
      assert.are_not.equal({ table = "great"}, { table = "great"})

      assert.truthy("this is a string") -- truthy: not false or nil

      assert.True(1 == 1)
      assert.is_true(1 == 1)

      assert.falsy(nil)
      assert.has_error(function() error("Wat") end, "Wat")
    end)

    it("should provide some shortcuts to common functions", function()
      assert.are.unique({{ thing = 1 }, { thing = 2 }, { thing = 3 }})
    end)

    it("should present failed assertions with FAILED", function()
      assert.falsy(0)
    end)

    it("should present failed assertions with custom message", function()
      assert.are.same(13, 42, "Incorrect answer for input n=10")
    end)

    describe("should present errors in IT with LOG", function()
      it("IT with an error", function()
        local nilobj = nil
        nilobj.test()
        assert.falsy(0)
      end)
    end)
    
    describe("should present errors in describe with ERROR", function()
    
      local nilobj = nil
      nilobj.test()
      
      it("dummy IT", function()
        assert.falsy(0)
      end)
    end)
    
    describe("should present errors in IT titles with ERROR", function()
      local nilobj = nil
      it("it block with ERROR" .. nilobj.test(), function()
        assert.falsy(0)
      end)
    end)
  end)
  
  describe("Should support newlines\nin group titles", function()
    it("Should support newlines\nin test titles", function()
      assert.truthy(0, "Should support newlines\nin assertion messages")
    end)
    it("Should support newlines\nin errors", function()
      error("Error message with...\n    a newline")
      assert.truthy(0)
    end)
  end)
end)
