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

```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
```

```
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
```

```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```

```
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
```

```
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
```

```
As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```

```
As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.
```

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.
```

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.
```

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.
```

### Functional Representation

Objects  | Messages
------------- | -------------
Person  |
DockingStation  | release_bike
DockingStation  | dock(Bike)
DockingStation  | bike
Bike  | working?
Bike  | report_broken
Van  | take_broken_bikes_from(DockingStation)
Van  | deliver_broken_bikes_to(Garage)
Van  | take_working_bikes_from(Garage)
Van  | deliver_working_bikes_to(DockingStation)
Garage  |  store(Bike)
Garage  |  fix([bike1, bike2])

### Diagram

```
CLASS               -->  METHOD                                   -->  OUTPUT
DockingStation      -->  release_bike                             -->  Bike
DockingStation      -->  doc(Bike)                                -->  [Bike1, Bike2]
DockingStation      -->  bike                                     -->  Bike
Bike                -->  working?                                 -->  boolean
Bike                -->  report_broken                            -->  false
Van                 -->  take_broken_bikes_from(DockingStation)   -->  [Bike1, Bike2]
Van                 -->  deliver_broken_bikes_to(Garage)          -->  Bike
Van                 -->  take_working_bikes_from(Garage)          -->  [Bike1, Bike2]
Van                 -->  deliver_working_bikes_to(DockingStation) -->  Bike
Garage              -->  store(Bike)                              -->  Bike
Garage              -->  fix(bikes)                               -->  [Bike1, Bike2]
```
