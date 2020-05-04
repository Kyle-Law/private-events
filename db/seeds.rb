# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# rubocop:disable Metrics/LineLength, Style/StringLiterals

User.create!([
               { username: 'Kyle' },
               { username: 'Patricia' },
               { username: 'Stefan' },
               { username: 'Patrick' },
               { username: 'Alex' }
             ])

Event.create!([
                {
                  title: 'Fight for Covid',
                  description:
                  %(
        After the devastating events of Avengers: Infinity War, the universe
        is in ruins. With the help of remaining allies, the Avengers assemble
        once more in order to undo Thanos' actions and restore order to the universe.
      ).squish,
                  date: '2020-11-26',
                  creator_id: 1
                },
                {
                  title: 'Microverse DS and Algo Challenge',
                  description:
                  %(
        Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.
      ).squish,
                  date: '2020-03-08',
                  creator_id: 2
                },
                {
                  title: 'Stay at home online webinar',
                  description:
                  %(
        T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.
      ).squish,
                  date: '2020-02-16',
                  creator_id: 3
                },
                {
                  title: 'Productivity boost webinar',
                  description:
                  %(
        The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.
      ).squish,
                  date: '2020-11-27',
                  creator_id: 4
                },
                {
                  title: 'Deep work - transform your life',
                  description:
                  %(
        Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.
      ).squish,
                  date: '2020-06-17',
                  creator_id: 3
                },
                {
                  title: 'Kyle Law Concert',
                  description:
                  %(
        Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking ways. The four must learn to harness their new abilities and work together to save Earth from a former friend turned enemy.
      ).squish,
                  date: '2020-08-07',
                  creator_id: 5
                },
                {
                  title: 'Marval Cosplay Event',
                  description:
                  %(
        When wealthy industrialist Tony Stark is forced to build an
        armored suit after a life-threatening incident, he ultimately
        decides to use its technology to fight against evil.
      ).squish,
                  date: '2020-05-02',
                  creator_id: 1
                },
                {
                  title: "Adopt! Don't birth",
                  description:
                  %(
        An alien orphan is sent from his dying planet to Earth, where
        he grows up to become his adoptive home's first and greatest
        super-hero.
      ).squish,
                  date: '2020-12-15',
                  creator_id: 3
                },
                {
                  title: 'Say Hello',
                  description:
                  %(
        When bitten by a genetically modified spider, a nerdy, shy, and
        awkward high school student gains spider-like abilities that he
        eventually must use to fight evil as a superhero after tragedy
        befalls his family.
      ).squish,
                  date: '2020-05-03',
                  creator_id: 3
                },
                {
                  title: 'Match and Mate',
                  description:
                  %(
        The Dark Knight of Gotham City begins his war on crime with his
        first major enemy being the clownishly homicidal Joker.
      ).squish,
                  date: '2020-06-23',
                  creator_id: 2
                }
              ])

Registration.create!([
                       { event_id: 1, user_id: 1 },
                       { event_id: 2, user_id: 2 },
                       { event_id: 3, user_id: 3 },
                       { event_id: 4, user_id: 4 },
                       { event_id: 5, user_id: 5 },
                       { event_id: 1, user_id: 3 },
                       { event_id: 2, user_id: 3 },
                       { event_id: 5, user_id: 1 },
                       { event_id: 4, user_id: 1 },
                       { event_id: 4, user_id: 5 }
                     ])
# rubocop:enable Metrics/LineLength, Style/StringLiterals
