## Blog app

Demonstrates nested routes, use of partials to share code, and separating public stuff from administrator stuff.

The public side has:

* `/posts` - shows posts for the blog
* `/posts/1` - shows post with the id of 1 - also shows comments
* `/posts/1/comments` - shows comments for post with the id of 1
* `posts/1/comments/1` - shows a specific comment for a specific post.

The admin side has

* `/admin/posts/` - shows the posts with ability to add, edit, and delete posts
* `admin/posts/1` - shows the post with the id of 1 and shows comments with edit/delete
* `admin/posts/1/comments` - shows the comments for the post, with edit/delete option
* `admin/posts/1/comments/1` - shows the specific comment for the post

## Setup

Clone this

Then change to the folder and run

```
rake db:setup
```

This migrates the database and loads a blog post with two comments.

## License

MIT.

Don't use this for anything other than learning.

