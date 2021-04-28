# Photogram Industrial Auth 1

Our industrial-grade application is shaping up, but it's sorely lacking in one area: security. Right now, everyone can see everything and do everything (especially if they can guess URLs, which are easy to guess since we're following RESTful conventions and using sequential integer IDs).

Use what you've learned about:

 - [Filters](https://guides.rubyonrails.org/action_controller_overview.html#filters): `before_action` and `skip_before_action`
 - [Redirecting](https://api.rubyonrails.org/v6.1.0/classes/ActionController/Redirecting.html): `redirect_to` and `redirect_back`
 - Devise's `current_user` method.
 - Ruby's `if`/`else` statements.

To add some security to our application. A non-exhaustive list of things to do:

 - If I click delete on a photo that's not mine, I should be redirected back to the page I was on before.
 - If I click edit on a photo that's not mine, I should be redirected back to the page I was on before.
 - If I click delete on a comment that's not mine, I should be redirected back to the page I was on before.
 - If I click edit on a comment that's not mine, I should be redirected back to the page I was on before.
 - If I'm not a user's accepted follower, I can't see their posts (but I can visit their page, see their followers, and who they are following).
 - Only a user should be able to see their own Pending follow requests.
 - Is the application secure? Put on your [white hacker hat](https://en.wikipedia.org/wiki/White_hat_(computer_security)): can you think of any other attacks?
