# Error Feature Test


### Error message


```
NameError: uninitialized constant DockingStation
	from (irb):1
	from /Users/Nomi/.rvm/rubies/ruby-2.3.0/bin/irb:11:in `<main>'
```
### Reason for Error message

We got this error message because we don't have a class called DockingStation set up.

### Breaking Down The Error

##### Type of error

The exception above is a type of error called NameError caused when the given name is invalid or undefined.

##### File path where error happened

/Users/Nomi/.rvm/rubies/ruby-2.3.0/bin/irb

##### The line number of the error

Line number: 1

##### Ruby documentation in regards to the error

The error is raised when the given name is invalid or undefined. In our case the name is undefined yet..

##### Solution to the above error

Create a class with the name DockingStation.
