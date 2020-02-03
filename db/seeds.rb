# Articles
99.times do |n|
  Product.create({title: "Lorem #{n}", description: "blabalbala", price: n})
end
