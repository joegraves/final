User.delete_all
joe = User.create("first_name" => "Joe", "last_name" => "Graves", "email" => "joegraves@gmail.com", "password" => "cubbies", "zip_code" => 60202, "sex" => "Male", "birth_year" => 1984)
kelsey = User.create("first_name" => "Kelsey", "last_name" => "Graves", "email" => "graves.kelsey@gmail.com", "password" => "maya2010", "zip_code" => 60202, "sex" => "Female", "birth_year" => 1983)
jordan = User.create("first_name" => "Jordan", "last_name" => "Graves", "email" => "jdgraves3190@gmail.com", "password" => "vol4life", "zip_code" => 36330, "sex" => "Male", "birth_year" => 1990)
patrick = User.create("first_name" => "Patrick", "last_name" => "Kane", "email" => "patrickkane@gmail.com", "password" => "goalscorer", "zip_code" => 60611, "sex" => "Male", "birth_year" => 1988)
brandon = User.create("first_name" => "Brandon", "last_name" => "Saad", "email" => "brandonsaad@gmail.com", "password" => "speed", "zip_code" => 60611, "sex" => "Male", "birth_year" => 1992)

Dog.delete_all
maya = Dog.create("name" => "Maya", "sex" => "Female", "weight" => 55, "birth_year" => 2010, "breed" => "Labrador Retriever")
cairo = Dog.create("name" => "Cairo", "sex" => "Male", "weight" => 70, "birth_year" => 2014, "breed" => "Belgian Malinois")
jax = Dog.create("name" => "Jax", "sex" => "Male", "weight" => 70, "birth_year" => 2012, "breed" => "Labrador Retriever")
kaner = Dog.create("name" => "Kaner", "sex" => "Male", "weight" => 40, "birth_year" => 2011, "breed" => "Australian Cattle Dog")
beast = Dog.create("name" => "Beast", "sex" => "Female", "weight" => 80, "birth_year" => 2013, "breed" => "German Shepherd")

Relationship.delete_all
maya_dad = Relationship.create("user_id" => joe.id, "dog_id" => maya.id, "relationship" => "Maya's Dad")
cairo_dad = Relationship.create("user_id" => joe.id, "dog_id" => cairo.id, "relationship" => "Cairo's Dad")
maya_mom = Relationship.create("user_id" => kelsey.id, "dog_id" => maya.id, "relationship" => "Maya's Mom")
cairo_mom = Relationship.create("user_id" => kelsey.id, "dog_id" => cairo.id, "relationship" => "Cairo's Mom")
jax_dad = Relationship.create("user_id" => jordan.id, "dog_id" => jax.id, "relationship" => "Jax's Dad")
kaner_dad = Relationship.create("user_id" => patrick.id, "dog_id" => kaner.id, "relationship" => "Kaner's Dad")
beast_dad = Relationship.create("user_id" => brandon.id, "dog_id" => beast.id, "relationship" => "Beast's Dad")

Run.delete_all
Run.create("user_id" => joe["id"], "dog1_id" => maya["id"], "dog2_id" => cairo["id"], "date" => 2014-05-28, "distance" => 3, "time" => 30)
Run.create("user_id" => kelsey["id"], "dog1_id" => maya["id"], "dog2_id" => cairo["id"], "date" => 2014-05-29, "distance" => 5, "time" => 45)
Run.create("user_id" => joe["id"], "dog1_id" => maya["id"], "dog2_id" => nil, "date" => 2014-05-30, "distance" => 5, "time" => 40)
Run.create("user_id" => joe["id"], "dog1_id" => cairo["id"], "dog2_id" => nil, "date" => 2014-05-31, "distance" => 6, "time" => 50)
Run.create("user_id" => jordan["id"], "dog1_id" => jax["id"], "dog2_id" => nil, "date" => 2014-05-28, "distance" => 2, "time" => 24)
Run.create("user_id" => patrick["id"], "dog1_id" => kaner["id"], "dog2_id" => nil, "date" => 2014-05-31, "distance" => 10, "time" => 90)
Run.create("user_id" => brandon["id"], "dog1_id" => beast["id"], "dog2_id" => nil, "date" => 2014-05-31, "distance" => 5, "time" => 40)

Breed.delete_all
Breed.create("breed" => "Weimaraner", "build" => "Medium build, well-muscled hind quarters, not too heavy", "run_type" => "Long, steady runs", "run_distance" => "> 10 miles")
Breed.create("breed" => "German Shorthaired Pointer", "build" => "Medium build, well-muscled hind quarters, not too heavy", "run_type" => "Long, steady runs", "run_distance" => "> 10 miles")
Breed.create("breed" => "Vizsla", "build" => "Medium build, well-muscled hind quarters, not too heavy", "run_type" => "Long, steady runs", "run_distance" => "> 10 miles")
Breed.create("breed" => "Jack Russell Terrier", "build" => "Medium build, well-muscled hind quarters, not too heavy", "run_type" => "Long, steady runs", "run_distance" => "> 10 miles")
Breed.create("breed" => "Greyhound", "build" => "Muscular, lean build with a mind for sprinting", "run_type" => "Brisk, shorter runs", "run_distance" => "< 10-K")
Breed.create("breed" => "Pit Bull", "build" => "Muscular, lean build with a mind for sprinting", "run_type" => "Brisk, shorter runs", "run_distance" => "< 10-K")
Breed.create("breed" => "English Setter", "build" => "Muscular, lean build with a mind for sprinting", "run_type" => "Brisk, shorter runs", "run_distance" => "< 10-K")
Breed.create("breed" => "Beagle", "build" => "Muscular, lean build with a mind for sprinting", "run_type" => "Brisk, shorter runs", "run_distance" => "< 10-K")
Breed.create("breed" => "Golden Retriever", "build" => "Muscular, lean build with a mind for sprinting", "run_type" => "Brisk, shorter runs", "run_distance" => "< 10-K")
Breed.create("breed" => "Labrador Retriever", "build" => "Muscular, lean build with a mind for sprinting", "run_type" => "Brisk, shorter runs", "run_distance" => "< 10-K")
Breed.create("breed" => "Whippet", "build" => "Muscular, lean build with a mind for sprinting", "run_type" => "Brisk, shorter runs", "run_distance" => "< 10-K")
Breed.create("breed" => "Cathoula", "build" => "Bigger body that can handle distance at a slow pace", "run_type" => "Long, slow runs", "run_distance" => "< 10 miles")
Breed.create("breed" => "Standard Poodle", "build" => "Bigger body that can handle distance at a slow pace", "run_type" => "Long, slow runs", "run_distance" => "< 10 miles")
Breed.create("breed" => "Dalmation", "build" => "Bigger body that can handle distance at a slow pace", "run_type" => "Long, slow runs", "run_distance" => "< 10 miles")
Breed.create("breed" => "Rhodesian Ridgeback", "build" => "Long nose, short, sleek coat and svelte body", "run_type" => "Runs in hot weather", "run_distance" => "< 10 miles")
Breed.create("breed" => "Airedale Terrier", "build" => "Long nose, short, sleek coat and svelte body", "run_type" => "Runs in hot weather", "run_distance" => "< 10 miles")
Breed.create("breed" => "Fox Terrier", "build" => "Long nose, short, sleek coat and svelte body", "run_type" => "Runs in hot weather", "run_distance" => "< 10 miles")
Breed.create("breed" => "Malamute", "build" => "Thick coat and stockier body", "run_type" => "Runs in cold weather", "run_distance" => "> 10 miles")
Breed.create("breed" => "German Shepherd", "build" => "Thick coat and stockier body", "run_type" => "Runs in cold weather", "run_distance" => "> 10 miles")
Breed.create("breed" => "Swiss Mountain Dog", "build" => "Thick coat and stockier body", "run_type" => "Runs in cold weather", "run_distance" => "> 10 miles")
Breed.create("breed" => "Siberian Husky", "build" => "Thick coat and stockier body", "run_type" => "Runs in cold weather", "run_distance" => "> 10 miles")
Breed.create("breed" => "Border Collie", "build" => "Sure-footed and quick to react", "run_type" => "Trail runs with obstacles", "run_distance" => "< 10 miles")
Breed.create("breed" => "Belgian Malinois", "build" => "Sure-footed and quick to react", "run_type" => "Trail runs with obstacles", "run_distance" => "< 10 miles")
Breed.create("breed" => "Australian Cattle Dog", "build" => "Sure-footed and quick to react", "run_type" => "Trail runs with obstacles", "run_distance" => "< 10 miles")
Breed.create("breed" => "Australian Shepherd", "build" => "Sure-footed and quick to react", "run_type" => "Trail runs with obstacles", "run_distance" => "< 10 miles")


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
