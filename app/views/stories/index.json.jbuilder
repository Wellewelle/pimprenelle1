json.stories @stories.each do |story|
  json.id story.id
  json.title story.title
  json.photo render(partial: "photo", formats: :html, locals: {key: story.photo.key})
end
