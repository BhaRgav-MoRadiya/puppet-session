
# node default {
#   $users = {
#     'user1' => {
#       username => 'userA',
#       teamname => 'teamA',
#     },
#     'user2' => {
#       username => 'userB',
#       teamname => 'teamA',
#     },
#   }

#   create_resources(users,$users)
# }

node default {

  create_resources(users,lookup('users'))
#  create_resources(users,lookup('users',{merge => 'deep'}))
}
