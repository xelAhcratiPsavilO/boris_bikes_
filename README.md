# Boris Bikes

### Project

Build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on).

### Goals

<dl>
  <dt>I can TDD anything</dt>
  * Test-drive a simple program using objects and methods
  <dt>I can program fluently</dt>
  * Describe some basic OO principles like encapsulation, SRP
  <dt>I can debug anything</dt>
  * Follow an effective debugging process

### User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```

```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

### Functional Representation

Objects  | Messages
------------- | -------------
Person  |
DockingStation  | release_bike
Bike  | working?

### Diagram

```
CLASS               -->  METHOD           -->  OUTPUT
DockingStation      -->  release_bike     -->  Bike.new
Bike                -->  working?         -->  true/false
```
