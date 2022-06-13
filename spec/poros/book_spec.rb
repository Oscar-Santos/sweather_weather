require 'rails_helper'

RSpec.describe Book do
  it 'exists' do
    book = Book.new({
                    title: "Meet the Malones",
                    _version_: 1715079982862041089,
                    publisher: [
                        "original -Thomas Y. Crowell Co., 1943"
                    ]})

    expect(book).to be_a(Book)
  end

  it 'has attributes' do
    book = Book.new({
                    title: "Meet the Malones",
                    _version_: 1715079982862041089,
                    publisher: [
                        "original -Thomas Y. Crowell Co., 1943"
                    ]})


    expect(book.title).to eq("Meet the Malones")
    expect(book.isbn).to eq(1715079982862041089)
    expect(book.publisher).to eq([
        "original -Thomas Y. Crowell Co., 1943"
    ])
  end
end
