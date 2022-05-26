require "phone_book"

RSpec.describe PhoneBook do
  context "with no entries" do
    it "has an empty list" do
      phone_book = PhoneBook.new
      expect(phone_book.list).to eq []
    end
  end

  context "given an entry with a number only" do
    it "stores the number" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("07777000000")
      expect(phone_book.list).to eq ["07777000000"]
    end
  end

  context "given an entry with a number in it" do
    it "stores the number" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("I called 07777000000 today")
      expect(phone_book.list).to eq ["07777000000"]
    end
  end
  
  context "given an entry with 2 numbers in it" do
    it "stores both numbers" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("My faves: 07777000000, 08777000000")
      expect(phone_book.list).to eq ["07777000000", "08777000000"]
    end
  end

    context "given an entry with no numbers" do
      it "stores nothing" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("My faves: ")
        expect(phone_book.list).to eq []
      end
    end

    context "given two entries with numbers" do
      it "stores all the numbers" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("Mine is 07777000000")
        phone_book.extract_numbers("Sam is: 08777000000")
        expect(phone_book.list).to eq ["07777000000", "08777000000"]
      end
    end

    context "given an entry with a number with too few digits" do
      it "does not store the number" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("Mine is 077770000")
        expect(phone_book.list).to eq []
      end
    end

    context "given entries that have duplicate numbers" do
      it "only stores unique numbers" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("Mine is 07777000000")
        phone_book.extract_numbers("Sam is: 07777000000")
        expect(phone_book.list).to eq ["07777000000"]
      end
    end
end