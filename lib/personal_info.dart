import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
   // List of people
  final List<Person> people = [
    Person(name: 'John Doe', country: 'USA', gender: 'Male', age: 30),
    Person(name: 'Jane Smith', country: 'UK', gender: 'Female', age: 25),
    Person(name: 'Carlos Gonzalez', country: 'Spain', gender: 'Male', age: 35),
    Person(name: 'Aisha Mohammed', country: 'Nigeria', gender: 'Female', age: 28),
    Person(name: 'Owuraku', country: 'Ghana', gender: 'Female', age: 22),
    Person(name: 'Kwame', country: 'Chile', gender: 'Female', age: 24),
    Person(name: 'Kofi', country: 'Luxemborg', gender: 'Female', age: 25),
    Person(name: 'Kyeiwaa', country: 'Ghana', gender: 'Female', age: 54),
    Person(name: 'Emma', country: 'USA', gender: 'Male', age: 24),
  ];
   PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: people.length, // Number of items in the list
        itemBuilder: (context, index) {
          // Builds each item in the list
          return ListTile(
            title: Text(people[index].name), // Display the person's name
            subtitle: Text(
              'Country: ${people[index].country}, Gender: ${people[index].gender}, Age: ${people[index].age}',
            ), // Display the person's details
          );
        },
      ),
    );
  }
}

// A simple class to represent a person
class Person {
  final String name;
  final String country;
  final String gender;
  final int age;

  Person({
    required this.name,
    required this.country,
    required this.gender,
    required this.age,
  });
}