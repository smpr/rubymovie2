User.destroy_all
Movie.destroy_all

users = []
movies = []


    users << User.create(
        email: "FFaker@Internet.email",
        password: 'generic',
        password_confirmation: 'generic'
    )

movies << Movie.create(
    title: "Test Movie",
    genre: "Action",
    year: 1999,
    synopis: "Something Something Darkside",
    picture: "Picture"
)

