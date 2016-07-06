# User Story Breakdown


### User Story 1
Nouns: Person, Bike, Docking Station

Verbs: Use, Release

### User Story 2
Nouns: Person, Bike

Verbs: Use, See

### Functional Representation

| Objects        |  Messages      |
| -------------  | :-------------:|
| Person         |  				 |
| Bike	         |  working?     |
| DockingStation|  release_bike     |


### Object Message Communication 
* Bike <-- available? --> true/false
* Bike <-- bike_is_working? --> true/false
* Docking Station <-- release_a_bike --> A bike 