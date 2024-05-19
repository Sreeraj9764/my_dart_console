void main() {
  List roles = [
    {
      "branchId": "6197ae0d772ffa1f66588b8e",
      "isPrimaryBranch": "Yes",
      "userRoles": [
        {
          "name": "SALES",
          "id": "62da4adfb25648b680f26855",
          "createdOn": "2022-07-22T06:59:43.466Z",
          "updatedOn": "2022-07-22T06:59:43.466Z",
          "__index": 0
        },
        {
          "name": "SUPER USER",
          "id": "64b9532d343e2ccb0c24abd6",
          "updatedOn": "2024-01-25T07:42:47.944Z",
          "__index": 1
        }
      ],
      "id": "6197af24772ffa1f665891f9",
      "createdBy": "619747cb90022e490083bbfe",
      "createdOn": "2021-11-19T14:05:24.087Z",
      "updatedBy": "619747cb90022e490083bbfe",
      "updatedOn": "2024-01-25T11:00:29.01Z",
      "branchName": "LabourNet Bangalore",
      "branchIdNumber": "2021 1119 1359 1205"
    },
    {
      "branchId": "6197ae0d772ffa1f66588b8e",
      "isPrimaryBranch": "No",
      "userRoles": [
        {
          "name": "SALES MANAGER",
          "id": "62da4adfb25648b680f26855",
          "createdOn": "2022-07-22T06:59:43.466Z",
          "updatedOn": "2022-07-22T06:59:43.466Z",
          "__index": 0
        },
        {
          "name": "SUPER USER",
          "id": "64b9532d343e2ccb0c24abd6",
          "updatedOn": "2024-01-25T07:42:47.944Z",
          "__index": 2
        }
      ],
      "id": "6197af24772ffa1f665891f9",
      "createdBy": "619747cb90022e490083bbfe",
      "createdOn": "2021-11-19T14:05:24.087Z",
      "updatedBy": "619747cb90022e490083bbfe",
      "updatedOn": "2024-01-25T11:00:29.01Z",
      "branchName": "LabourNet Bangalore",
      "branchIdNumber": "2021 1119 1359 1205"
    }
  ];
  bool isContain = roles.any((element) => (element["userRoles"] as List).any(
      (item) => ["MANAGER", "SALE"].contains(item["name"])));

  print(isContain);
}
///////
// Thing person = CurrentPerson(age: 20);
// final personName =
//     person.getTypeMatch((CurrentPerson e) => e.age) ?? "Unknown";
// print(personName);
// extension<T> on T {
//   R? getTypeMatch<E, R>(R Function(E) f) {
//     final shadow = this;
//     if (shadow is E) {
//       return f(shadow);
//     }
//     return null;
//   }
// }
////////

// T divider<T extends num>(T lhs, T rhs) {
//   if (lhs is int && rhs is int) {
//     return lhs ~/ rhs as T;
//   }
//   return lhs / rhs as T;
// }
/////////

