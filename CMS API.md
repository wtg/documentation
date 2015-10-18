# Club Management System API

This document contains information on how to use the CMS API and all queries relevant to WebTech.

## Step 0: Getting the CMS API KEY
David will continue his super awesome CMS documentation and get this in there as soon as possible.

### Get RCS ID
Query: `http://cms.union.rpi.edu/api/users/view_rcs/[RCS_ID]/`

Example result:
```javascript
{
  "entity_id": [int],
  "student_id": [string], // RIN
  "username": [string], // RCS ID
  "email": [string], // full RPI Email
  "first_name": [string], // first name
  "preferred_name": [string], // preferred first name (could be null if unset)
  "middle_name": [string], // middle name
  "last_name": [string], // last name
  "greek_affiliated": [boolean], // is a member of a fraternity or sorority
  "entry_date": [string], // full date, format: YYYY-MM-DD
  "class_by_credit": [string], // class name, i.e. Sophomore
  "grad_date": [string], // full date, format: YYYY-MM-DD
  "user_type": [string] // user’s status, usually “Student” or “Employee"
}
```

### Get RIN
Query: `http://cms.union.rpi.edu/api/users/view_rin/[RIN]/`

Example result:
```javascript
{
  "entity_id": [int],
  "student_id": [string], // RIN
  "username": [string], // RCS ID
  "email": [string], // full RPI Email
  "first_name": [string], // first name
  "preferred_name": [string], // preferred first name (could be null if unset)
  "middle_name": [string], // middle name
  "last_name": [string], // last name
  "greek_affiliated": [boolean], // is a member of a fraternity or sorority
  "entry_date": [string], // full date, format: YYYY-MM-DD
  "class_by_credit": [string], // class name, i.e. Sophomore
  "grad_date": [string], // full date, format: YYYY-MM-DD
  "user_type": [string] // user’s status, usually “Student” or “Employee"
}
```

### Check RnE Status
Query: `http://cms.union.rpi.edu/api/users/get_if_rne/[RCS_ID]/`

Example result:
```javascript
{
  "result": [boolean] // whether or not the RCS is on RnE’s CMS page
}
```

### Get CMS Organizations for a User
Query: `http://cms.union.rpi.edu/api/users/get_all_orgs/[RIN]/`

Example result:
```javascript
[
  {
    "entity_id": [int], // unique club ID
    "name": [string], // club name 
    "description": [string], // description
    "organization_type": [string], // type of club
    "union_recognized": [boolean], // is a recognized club?
    "election_term": [string], // fall or spring
    "foapal_fund": [string],
    "foapal_org": [string]
  }, ...
]
```

Note: This query includes all clubs that a user is listed as a member of on CMS. For organizations that a user is officer of, see the next query.

### Get CMS Organizations where User is Officer
Query: `http://cms.union.rpi.edu/api/users/get_orgs/[RIN]/`

Example result:
```javascript
[
  {
    "entity_id": [int], // unique club ID
    "name": [string], // club name 
    "description": [string], // description
    "organization_type": [string], // type of club
    "union_recognized": [boolean], // is a recognized club?
    "election_term": [string], // fall or spring
    "foapal_fund": [string],
    "foapal_org": [string]
  }, ...
]
```
