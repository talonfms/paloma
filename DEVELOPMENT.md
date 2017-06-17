# Development

## Testing

1. Go to `test_app`
1. Comment out `turbolinks.js` on `application.js`
1. Run `bundle exec rails s`.
1. Open your browser and visit [http://localhost:3000/specs](http://localhost:3000/specs).
1. Run `bundle exec rake spec:units`.
1. Run `bundle exec rake spec:integration`.
