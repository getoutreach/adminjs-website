# Installation

AdminJS is a self-contained Ember.js application. The two main files are `adminjs.js` and `adminjs.css`. Both of these files need to be included in the page along with [Ember.js](http://ember.js.com) and [EPF](http://epf.io):

```html
<html>
  <head>
    <link href="adminjs.css" media="screen" rel="stylesheet" type="text/css" />
    <script src="ember.js" type="text/javascript"></script>
    <script src="epf.js" type="text/javascript"></script>
    <script src="adminjs.js" type="text/javascript"></script>
  </head>
  <body>
  </body>
</html>
```

### Creating an Application

All AdminJS applications require a subclass of `AJS.Application` to be created:

```javascript
window.App = AJS.Application.create();
```

### Defining Models

AdminJS uses [EPF](http://epf.io). All models within Epf are subclasses of `Ep.Model`. For example:

```javascript
App.Post = Ep.Model.extend({
  title: Ep.attr('string'),
  body: Ep.attr('string'),

  comments: Ep.hasMany(App.Comment),
  user: Ep.belongsTo(App.User)
});
```

Consult the [EPF website](http://epf.io) for further documentation.

### Configuration

Once a model has been defined, AdminJS must told to manage it:

```javascript
App.configure(function() {
  this.manage('post');
});
```

### Summary

Bringing this all together, a simple AdminJS application would look like the following:

```html
<html>
  <head>
    <link href="adminjs.css" media="screen" rel="stylesheet" type="text/css" />
    <script src="ember.js" type="text/javascript"></script>
    <script src="epf.js" type="text/javascript"></script>
    <script src="adminjs.js" type="text/javascript"></script>
    <script>
App = AJS.Application.create();

App.Post = Ep.Model.extend({
  title: Ep.attr('string'),
  body: Ep.attr('string'),

  comments: Ep.hasMany(App.Comment),
  user: Ep.belongsTo(App.User)
});

App.configure(function() {
  this.manage('post');
});
    </script>
  </head>
  <body>
    
  </body>
</html>
```

### Backend

AdminJS will work out of the box with any backend that supports EPF. Please consult the [documentation](http://epf.io) for more information.