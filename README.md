# The Story Collective

Remember 'The Exquisite Corpse' game from childhood? A piece of paper was folded into three, a head was drawn, then a body and then the legs. The sum of the parts was always a fun and interesting surprise. At General Assembly Melbourne, I referenced this idea and combined my passion for people, code and fiction to make a collaborative storytelling app.

I love the spirit of open source and wanted to incorporate the idea of democratised contributions. 'The Story Collective' contains stories – or flash fiction pieces – consisting of 10 parts from 10 different contributors.

Everyone can read finished works by a collective of writers. When users sign up or login to, they can write story parts of up to 100 characters. Once a part is submitted, the story moves forward until it reaches the end. This app is a social way to connect with other writers and users can even form groups to write with more like-minded writers.

- **[Live demo]()**

## Technologies used
- Ruby
- Ruby on Rails + ActiveRecord
- PostgreSQL
- HTML + CSS

## Installation instructions
```
bundle install
rails db:create
rails db:migrate
rails s
```

## Unsolved problems
- Likes functionality for story parts

## Future updates
- Add a likes-based scoring system to filter stories and populate the best results first
