# Thumbs Up

Thumbnails as a service or self-service (aka run it yourself). You give us
URL(s) and we'll return thumbnails. Pretty straight forward.

Thumbs Up can:

* Generate thumbnails of images
* Generate thumbnails of websites

## Requesting Thumbnails

**POST** thumbnails URL(s), [/thumbnail](https://www.thumbsup.io/thumbnail)

```js
[
  {
    url: 'http://zeke.sikelianos.com/image.jpg',
    height: '300',
    width: '400'
  },
  {
    id: 'unique_id', // optional pass-through properties
    url: 'http://zeke.sikelianos.com',
    height: '300',
    width: '400'
  }
]
```

Response once processing is done:

```js
[
  {
    url: 'http://zeke.sikelianos.com/image.jpg',
    height: '300',
    width: '400',
    thumbnail: 'https://s3.aws.amazon.com/some-url.png'
  },
  {
    id: 'unique_id', // optional pass-through properties
    url: 'http://zeke.sikelianos.com',
    height: '300',
    width: '400',
    thumbnail: 'https://s3.aws.amazon.com/some-url.png'
  }
]
```

## Todo

* Finish writing up API docs
* Draw the rest of the fucking owl
