require './caesar_cipher.rb'

describe "#caesar_cipher" do
  describe "string correctly based on the number of shifts" do
    it "basic example" do
      expect(caesar_cipher("abcdefg",2)).to eql("cdefghi")
    end
    it "uppercase and lowercase not affected" do
      expect(caesar_cipher("WoWiE ZowIe",2)).to eql("YqYkG BqyKg")
    end
    it "the odin project's example" do
      expect(caesar_cipher("What a string",5)).to eql("Bmfy f xywnsl")
    end
    it "works with punctuations" do
      expect(caesar_cipher("What&'(-) a# st,ring!",5)).to eql("Bmfy&'(-) f# xy,wnsl!")
    end
    it 'works with negative shift' do
      expect(caesar_cipher('Ee', -83)).to eql('Zz')
    end
    it "edge-case example" do
      expect(caesar_cipher("xyz",2)).to eql("zab")
    end
    it "another edge-case example example" do
      expect(caesar_cipher("Xavier!",3)).to eql("Adylhu!")
    end
  end
  
end