10.times do |blog|
  Blog.create!(
    title: "My blog post ##{blog + 1}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at quam vitae nibh rutrum maximus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla mattis auctor vulputate. Curabitur semper lacinia libero et consequat. Integer dolor quam, mattis fringilla nisl et, aliquet cursus lectus. In sit amet velit id sem vulputate posuere. Maecenas quis mauris mi. Aliquam porttitor massa at mauris malesuada, sed condimentum dolor rutrum. Curabitur ligula est, pulvinar a enim non, rutrum pulvinar ligula. Ut et metus eros. Phasellus gravida facilisis magna, et viverra erat volutpat eu. Curabitur tristique mollis maximus."
  )
end
puts "Created 10 blog posts"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end
puts "Created five skills"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "”http://placehold.it/350x150”" , 
    thumb_image: "http://placehold.it/600x400"
    )
end