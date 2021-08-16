
node default {
  $users = {
    'user1' => {
      username => 'userA',
      teamname => 'teamA',
    },
    'user2' => {
      username => 'userB',
      teamname => 'teamA',
    },
  }

  create_resources(users,$users)
}

