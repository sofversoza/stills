puts "Seeding.............."
 User.destroy_all
Movie.destroy_all
Review.destroy_all
Favorite.destroy_all

u1 = User.create!(full_name: "Sofia Versoza", username: "sof", password: "123sof", email: "sofversoza@gmail.com")
u2 = User.create!(full_name: "Tian Xu", username: "tian", password: "123tian", email: "tianxu@gmail.com")

 m1 = Movie.create(title:"Les Choristes", director: "Christophe Barratier ", cinematographer: "Carlo Varini", description:"The new teacher at a severely administered boys' boarding school works to positively affect the students' lives through music.
     ",duration: 97, release_year: 1945,genre: "Drama, Musical", starring:"Gérard Jugnot, Francois Berleand, Jean-Baptiste Maunier
   ",awards:"Austin Film Festival for Best Narrative Feature - Distributed, Bangkok International Film Festival for Best Director, César Awards France for Best Music Written for a Film & Best Sound, European Film Awards for European Composer, Ft. Lauderdale International Film Festival for Best Film, Heartland International Film Festival, Ljubljana International Film Festival, Lumiere Awards France for Best Film, National Board of Review for Top foreign films, Sant Jordi Awards for Best Foreign Film, Étoiles d'Or France for Best Composer",image1:"./images/les-choristes1.jpeg",image2:"public/images/les-choristes2.jpeg",image3:"public/images/les-choristes3.jpeg")

 movies = Movie.create([
      {
        title: 'Nuovo Cinema Paradiso',
        director: 'Giuseppe Tornatore',
        cinematographer: 'Blasco Giurato',
        genre: 'Drama, Romance',
        duration: 155,
        release_year: 1988,
        description: 'A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinemas projectionist. A boy who grew up in a native Sicilian Village returns home as a famous director after receiving news about the death of an old friend. Told in a flashback, Salvatore reminiscences about his childhood and his relationship with Alfredo, a projectionist at Cinema Paradiso. Under the fatherly influence of Alfredo, Salvatore fell in love with filmmaking, with the duo spending many hours discussing films and Alfredo painstakingly teaching Salvatore the skills that became a stepping stone for the young boy into the world of filmmaking. The film brings the audience through the changes in cinema and the dying trade of traditional filmmaking, editing, and screening. It also explores a young boys dream of leaving his little town to foray into the world outside',
        starring: 'Gérard Jugnot, Francois Berleand, Jean-Baptiste Maunie',
        awards: 'BAFTA Film Award for Best Actor & Best Actor in a Supporting Role & Best Film Not in the English Language & Best Original Film Score & Best Screenplay - Original, Felix for Best Foreign Film & Best Cinematography, Silver Condor for Best Foreign Film, ASECAN Award for Best Foreign Film, Grand Prize of the Jury, Cleveland International Film Festival for Best Film, Cesar Award for Best Poster, DFWFCA Award for Best Foreign Language Film, Danish Film Awards for Best Foreign Film, David di Donatello Awards for Best Music, European Film Awards for European Actor of the Year & Special Prize of the Jury, Golden Globes(USA) for Best foreign film, KCFCC Award for best foreign film, ALFS Award for Actor of the year & Foreign Language Film Of the Year, Mainichi Film Concours for Best Foreign Language Film, OFTA Film Hall of Fame for Motion Picture, Young Artist Awards for Best Young Actor Under Nine Appearing in a Foreign Film',
        image1: 'public/images/ttdyy1.jpeg',
        image2: 'public/images/ttdyy2.jpeg',
        image3: 'public/images/ttdyy3.jpeg',
        current_mood:""
    },
      {
        title: 'Nacho Libre',
        director: 'Jared Hess',
        cinematographer: 'Xavier Perez Grobet',
        genre: 'Comedy/Family',
        duration:92 ,
        release_year: 2006,
        description: 'Ignacio (Jack Black), or Nacho to his friends, works as a cook in the Mexican monastery where he grew up. The monastery is home to a host of orphans whom Nacho cares for deeply, but there is not much money to feed them properly. Nacho decides to raise money for the children by moonlighting as a Lucha Libre wrestler with his partner Esqueleto (Héctor Jiménez), but since the church forbids Lucha, Nacho must disguise his identity.',
        starring: 'Jack Black, Ana de la Reguera, Hector Jimenez ',
        awards: 'BMI Film Music Award for Film Music',
        image1: 'public/images/nacholibre1.jpeg',
        image2: 'public/images/nacholibre2.jpeg',
        image3: 'public/images/nacholibre3.jpeg',
        current_mood:""
    },
      {
        title: 'Lolita',
        director: 'Adrian Lyne',
        cinematographer: 'Oswald Morris',
        genre: 'Drama, Romance',
        duration:137 ,
        release_year: 1962,
        description: "Adrian Lyne's adaptation of Nabokov's controversial novel, the classic tale of a man's inappropriate obsession with a beautiful young girl.",
        starring: 'Jeremey  Irons, Dominique Swain',
        awards: 'Golden Globes for Most Promising Newcomer',
        image1: 'public/images/lolita1.jpeg',
        image2: 'public/images/lolita2.jpeg',
        image3: 'public/images/lolita3.jpeg',
        current_mood:""
      },
      {
        title: 'Big Fish',
        director: 'Tim Burton',
        cinematographer: 'Philippe Rousselot',
        genre: 'Drama, Fantasy',
        duration:125 ,
        release_year:2003 ,
        description: "When Edward Bloom (Albert Finney) becomes ill, his son, William (Billy Crudup), travels to be with him. William has a strained relationship with Edward because his father has always told exaggerated stories about his life, and William thinks he's never really told the truth. Even on his deathbed, Edward recounts fantastical anecdotes. When William, who is a journalist, starts to investigate his father's tales, he begins to understand the man and his penchant for storytelling.",
        starring: 'Ewan McGregor, Albert Finney, Helena Bonham Carter',
        awards: "",
        image1: 'public/images/bigfish1.jpeg',
        image2: 'public/images/bigfish2.jpeg',
        image3: 'public/images/bigfish3.jpeg',
        current_mood:""
      },
      {
        title: 'Persepolis',
        director: 'Marjane Satrapi, Winshluss',
        cinematographer:"",
        genre: 'Drama, War',
        duration:96 ,
        release_year: 2007,
        description: "Based on Satrapi's graphic novel about her life in pre and post-revolutionary Iran and then in Europe. The film traces Satrapi's growth from a child to a rebellious, punk-loving teenager in Iran. In the background are the growing tensions of the political climate in Iran in the 70s and 80s, with members of her liberal-leaning family detained and then executed, and the background of the disastrous Iran/Iraq war.",
        starring: 'Chiara Mastroianni, Catherine Deneuve',
        awards: "Alliance of Women Film Journalists for Outstanding Achievement by a Woman in the Film Industry & Cultural Crossover Award, Argentinean Film Critics Association Awards for Best Foreign Film, Not in the Spanish Language, Cannes Film Festival, Cinemanila International Film Festival, César Awards France for Best Adapted Screenplay & Best First Film, Faro Island Film Festival for Best Newcomer, French Syndicate of Cinema Critics for Best First Film, Globes de Cristal Awards France for Best Film, Golden Trailer Awards for Most Original Foreign Trailer, International Cinephile Society Awards for Best Animated Film, Italian Online Movie Awards (IOMA), Jerusalem Film Festival for Best Feature, Los Angeles Film Critics Association Awards for Best Animation, National Board of Review USA, New York Film Critics Circle Award for Best Animated Film, New York Film Critics Online for Best Foreign Language Film, Rotterdam International Film Festival, Stockholm Film Festival,São Paulo International Film Festival for Best Foreign Feature Film, Vancouver International Film Festival, Women Film Critics Circle Awards for Best Foreign Film by or About Women, Étoiles d'Or France for Best First Work ",
        image1: 'public/images/persepolis1.jpeg',
        image2: 'public/images/persepolis2.jpeg',
        image3: 'public/images/persepolis3.jpeg',
        current_mood:""
      }
    ])
    movies = Movie.create([
        {
          title: 'Flipped',
          director: 'Rob Reiner',
          cinematographer: 'Thomas Del Ruth',
          genre: 'Romance, Comedy',
          duration: 90,
          release_year: 2010,
          description: "When they meet in second grade, Juli Baker falls instantly in love with her neighbor, Bryce Loski. Bryce, however, does not feel the spark. From that day forward, he (Callan McAuliffe) tries hard to keep brash and unpredictable Juli (Madeline Carroll) at bay. After six years, she begins to feel that she was wrong about him being the love of her life. Unfortunately, that is just about the time that Bryce begins to think he was wrong about Juli, too.",
          starring: 'Callan McAuliffe, Madeline Carroll',
          awards: 'Heartland Film for Truly Moving Picture Award, YoungArtist Awards',
          image1: 'public/images/Flipped1.jpeg',
          image2: 'public/images/Flipped2.jpeg',
          image3: 'public/images/Flipped3.jpeg',
          current_mood: ''
        },
        {
          title: "Breakfast at Tiffany's",
          director: 'Blake Edwards',
          cinematographer: 'Philip H. Lathrop',
          genre: 'Romance, Comedy',
          duration: 115,
          release_year: 1961,
          description: "Based on Truman Capote's novel, this is the story of a young woman in New York City who meets a young man when he moves into her apartment building. He is with an older woman who is very wealthy, but he wants to be a writer. She works as an expensive escort and searches for a rich, older man to marry.",
          starring: 'Audrey Hepburn, George Peppard',
          awards: 'Academy Awards USA for Best Music & Original Song & Best Music & Scoring of a Dramatic or Comedy Picture, David di Donatello Awards for Best Foreign Actress, Grammy Awards for Best Soundtrack Album or Recording of Score from Motion Picture or Television & Record of the Year, Laurel Awards for Top Song, National Film Preservation Board USA, Online Film & Television Association for Songs, Online Film & Television Association for Motion Picture, Writers Guild of America USA for Best Written American Comedy',
          image1: "public/images/breakfast-at-tiffany's1.jpeg",
          image2: "public/images/breakfast-at-tiffany's2.jpeg",
          image3: "public/images/breakfast-at-tiffany's3.jpeg",
          current_mood:''
        },
        {
          title: 'The Wizard of Oz',
          director: 'Victor Fleming',
          cinematographer: 'Harold Rosson',
          genre: 'Musical, Fantasy',
          duration:112 ,
          release_year: 1939,
          description: "When a tornado rips through Kansas, Dorothy (Judy Garland) and her dog, Toto, are whisked away in their house to the magical land of Oz. They follow the Yellow Brick Road toward the Emerald City to meet the Wizard, and en route, they meet a Scarecrow (Ray Bolger) that needs a brain, a Tin Man (Jack Haley) missing a heart, and a Cowardly Lion (Bert Lahr) who wants courage. The wizard asks the group to bring him the broom of the Wicked Witch of the West (Margaret Hamilton) to earn his help.",
          starring: 'Judy Garland, RayBolger, Bert Lahr, Jack Haley',
          awards: 'Academy Awards for Best Music & Original Song & Original Score, Academy of Science Fiction, Fantasy for Best Classic Film DVD Release, Faro Island Film Festival for Outstanding Artistic Contribution & Best Feature Film, Las Vegas Film Critics Society Awards for Best DVD, National Film Preservation Board, Online Film & Television Association for Songs & Character, Online Film & Television Association for Motion Picture, Satellite Awards for Best Youth DVD, Satellite Awards for Outstanding Classic DVD, Young Artist Awards',
          image1: 'public/images/the-wizard-of-oz1.jpeg',
          image2: 'public/images/the-wizard-of-oz2.jpeg',
          image3: 'public/images/the-wizard-of-oz3.jpeg',
          current_mood: ''
        },
        {
          title: '50 First Dates',
          director: 'Peter Segal',
          cinematographer: 'Jack N. Green',
          genre: 'Romance, Comedy',
          duration: 106,
          release_year:2004,
          description: "Playboy vet Henry sets his heart on romancing Lucy, but she has short-term memory loss; she can't remember anything that happened the day before. So every morning, Henry has to woo her again. Her friends and family are very protective, and Henry must convince them that he's in it for love.",
          starring: 'Adam Sandler, Drew Barrymore, Rob Schneider, Sean Astin',
          awards: "BMI Film & TV Awards, Kids' Choice Awards for Favorite Movie Actor, MTV Movie + TV Awards for Best On-Screen Team, People's Choice Awards for Favorite On-Screen Chemistry, Teen Choice Awards for Choice Movie - Date Movie & Choice Movie Actor - Comedy",
          image1: 'public/images/50_first_dates1.jpeg',
          image2: 'public/images/50_first_dates2.jpeg',
          image3: 'public/images/50_first_dates3.jpeg',
          current_mood:''
        },
        {
          title: '500 Days Of Summer',
          director: 'Marc Webb',
          cinematographer: 'Eric Steelberg',
          genre: 'Romance, Drama',
          duration: 95,
          release_year: 2009 ,
          description: "Tom (Joseph Gordon-Levitt), greeting-card writer and hopeless romantic, is caught completely off-guard when his girlfriend, Summer (Zooey Deschanel), suddenly dumps him. He reflects on their 500 days together to try to figure out where their love affair went sour, and in doing so, Tom rediscovers his true passions in life.",
          starring: 'Joseph Gordon-Levitt, Zooey Deschanel, Chloe Grace Moretz',
          awards: " Alliance of Women Film Journalists for Best Writing, Original Screenplay, California on Location Awards for Location Professional of the Year, Florida Film Critics Circle Awards for Best Screenplay, Hollywood Film Awards for Screenwriter of the Year, Internet Film Critic Society for Best Comedy, Las Vegas Film Critics Society Awards for Best Screenplay, National Board of Review, New York Film Critics for Best Debut as Director, Oklahoma Film Critics Circle Awards for Best Original Screenplay, Online Film & Television Association for Best Writing, Screenplay Written Directly for the Screen, San Diego Film Critics Society Awards for Best Editing, Satellite Awards for Best Original Screenplay, St. Louis Film Critics Association for Best Screenplay",
          image1: 'public/images/500daysofsummer1.jpeg',
          image2: 'public/images/500daysofsummer2.jpeg',
          image3: 'public/images/500daysofsummer3.jpeg',
          current_mood: ''
        }
      ])
      movies = Movie.create([
        {
          title: 'Daisy',
          director: 'Andrew Lau',
          cinematographer: 'Andrew Lau',
          genre: 'Romance, Drama',
          duration: 125,
          release_year: 2006,
          description: "A beautiful painter, Hye-young, juggles two mysterious suitors -- one is a hitman, and the other is an Interpol officer chasing the killer.",
          starring: 'Jun Ji-hyun, Jung Woo-sung, Lee Sung-jae',
          awards: 'Verona Love Screens Film Festival',
          image1: 'public/images/daisy1.jpeg',
          image2: 'public/images/daisy2.jpeg',
          image3: 'public/images/daisy3.jpeg',
          current_mood: ''
        },
        {
          title: 'Le Petit Prince',
          director: 'Mark Osborne',
          cinematographer: '',
          genre: 'Adventure, Family',
          duration: 110 ,
          release_year: 2015,
          description: "The Aviator introduces a girl to a world where she rediscovers her childhood and learns that it's human connections that matter most and that it is only with the heart that one can see rightly; what is essential is invisible to the eye. ",
          starring: 'Jeff Bridges, Riley Osborne',
          awards: "Annie Awards for Outstanding Achievement in Music in an Animated Feature Production, Behind the Voice Actors Awards for Best Vocal Ensemble in a TV Special/Direct-to-DVD Title or Short & Best Female Vocal Performance in a TV Special/Direct-to-DVD Title or Short & Best Male Vocal Performance in a TV Special/Direct-to-DVD Title or Short, British Academy Children's Awards for Feature Film, César Awards for Best Animated Film, Faro Island Film Festival for Special Mention & Animation Competition",
          image1: 'public/images/le-petit-prince1.jpeg',
          image2: 'public/images/le-petit-prince2.jpeg',
          image3: 'public/images/le-petit-prince3.jpeg',
          current_mood: ''
        },
        {
          title: 'Girl with a pearl earring',
          director: 'Peter Webber',
          cinematographer: 'Eduardo Serra',
          genre: 'Romance, Drama',
          duration:100 ,
          release_year: 2003,
          description: "This film, adapted from a work of fiction by author Tracy Chevalier, tells a story about the events surrounding the creation of the painting 'Girl With a Pearl Earring' by 17th-century Dutch master Johannes Vermeer. Little is known about the girl in the painting, it is speculated that she was a maid who lived in the house of the painter along with his family and other servants, though there is no historical evidence. This masterful film attempts to recreate the mysterious girl's life. Griet, played by Scarlett Johansson, is a maid in the house of painter Johannes Vermeer, played by British actor Colin Firth. Vermeer's wealthy patron and sole means of support, Van Ruijven, commissions him to paint Griet with the intent that he will have her for himself before it is finished. She must somehow secretly pose for the crucial painting without the knowledge of Vermeer's wife, avoid Van Ruijven's grasp, and protect herself from the cruel gossip of the world of a 17th-century servant.",
          starring: 'Scarlett Johansson, Colin Firth, Essie Davis',
          awards: ' Academy Awards for Best Cinematography & bet Art Direction-Set Decoration & Best Costume Design, Camerimage, Central Ohio Film Critics Association for Best Cinematography, Dinard British Film Festival, European Film Awards for European Cinematographer, Gold Derby Awards for Cinematography, Los Angeles Film Critics Association Awards for Best Cinematography, National Board of Review for excellence in filmmaking, New York Film Critics for Best Cinematography, Palm Springs International Film Festival, Polish Film Awards for Best European Film, San Diego Film Critics Society Awards for Best Cinematography, San Sebastián International Film Festival, Sant Jordi Awards for Best Foreign Actress',
          image1: 'public/images/girl-with-a-pearl-earring1.jpeg',
          image2: 'public/images/girl-with-a-pearl-earring2.jpeg',
          image3: 'public/images/girl-with-a-pearl-earring3.jpeg',
          current_mood: ''
        },
        {
          title: 'Spirited Away',
          director: 'Hayao Miyazaki',
          cinematographer: 'Atsushi Okui',
          genre: 'Fantasy, Drama',
          duration: 125 ,
          release_year: 2001,
          description: "Chihiro and her parents are moving to a small Japanese town in the countryside, much to Chihiro's dismay. On the way to their new home, Chihiro's father makes a wrong turn and drives down a lonely one-lane road that dead-ends in front of a tunnel. Her parents decide to stop the car and explore the area. They go through the tunnel and find an abandoned amusement park on the other side, with its little town. When her parents see a restaurant with great-smelling food but no staff, they decide to eat and pay later. However, Chihiro refuses to eat and decides to explore the theme park a bit more. She meets a boy named Haku who tells her that Chihiro and her parents are in danger and must leave immediately. She runs to the restaurant and finds that her parents have turned into pigs. In addition, the theme park turns out to be a town inhabited by demons, spirits, and evil gods. At the center of the town is a bathhouse where these creatures go to relax. The bathhouse owner is the evil witch Yubaba, who intends to keep all trespassers as captive workers, including Chihiro. Chihiro must rely on Haku to save her parents in hopes of returning to their world.",
          starring: 'Rumi Hiiragi, Miyu Irino',
          awards: "Academy Awards for Best Animated Feature, AARP Movies for Grownups Awards for Best Movie for Grownups Who Refuse to Grow Up, Academy of Science Fiction, Fantasy & Horror Films for Best Animated Film, Amsterdam Fantastic Film Festival, Annie Awards for Outstanding Achievement in an Animated Theatrical Feature & Outstanding Directing in an Animated Feature Production & Outstanding Music in an Animated Feature Production & Outstanding Writing in an Animated Feature Production, Awards Circuit Community Awards for Best Animated Feature Film, Awards of the Japanese Academy for Best Film & Best Song, Berlin International Film Festival, Blue Ribbon Awards for Best Film, Boston Society of Film Critics Awards for artistic contribution to the field of animation, Broadcast Film Critics Association Awards for Broadcast Film Critics Association Awards, Cambridge Film Festival for Best Film, Christopher Awards for Film",
          image1: 'public/images/spirited-away1.jpeg',
          image2: 'public/images/spirited-away2.jpeg',
          image3: 'public/images/spirited-away3.jpeg',
          current_mood: ''
        },
        {
          title: 'Life of Pi',
          director: 'Ang Lee',
          cinematographer: 'Claudio Miranda',
          genre: 'Adventure, Drama',
          duration: 127,
          release_year: 2012 ,
          description: "n Canada, a writer visits the Indian storyteller Pi Patel and asks him to tell his life story. Pi tells the story of his childhood in Pondicherry, India, and the origin of his nickname. One day, his father, a zoo owner, explains that the municipality is no longer supporting the zoo and he has hence decided to move to Canada, where the animals the family owns would also be sold. They board on a Japanese cargo ship with the animals and out of the blue, there is a storm, followed by a shipwreck. Pi survives in a lifeboat with a zebra, an orangutan, a hyena, and a male Bengal tiger nicknamed Richard Parker. They are adrift in the Pacific Ocean, with aggressive hyena and Richard Parker getting hungry. Pi needs to find a way to survive.",
          starring: 'Suraj Sharma, Irrfan Khan, Tabu',
          awards: "Academy Awards for Best Achievement in Directing & Best Achievement in Cinematography & Best Achievement in Music Written for Motion Pictures & Original Score & Best Achievement in Visual Effects, BAFTA Awards for Best Cinematography & Best Special Visual Effects, 3D Creative Arts Awards for Best International 3D Feature & Best Stereography, Academy of Science Fiction, Fantasy & Horror Films for Best Fantasy Film & Best Performance by a Younger Actor, Golden Globes for Best Original Score - Motion Pictures, Hollywood Post Alliance for Outstanding Color Grading - Feature Film, IGN Summer Movie Awards for Best Fantasy Movie & Best 3D Movie & Best Fantasy Movie, International Film Music Critics Award (IFMCA) for Film Score of the Year, International Online Cinema Awards for Best Cinematography & Best Visual Effects",
          image1: 'public/images/life-of-pi1.jpg',
          image2: 'public/images/life-of-pi2.jpg',
          image3: 'public/images/life-of-pi3.jpg',
          current_mood: ''
        }
      ])
      movies = Movie.create([
        {
          title: 'Your Name',
          director: 'Makoto Shinkai',
          cinematographer: 'Makoto Shinkai',
          genre: 'Fantasy, Adventure',
          duration: 106,
          release_year: 2016,
          description: "Mitsuha is the daughter of the mayor of a small mountain town. She's a straightforward high school girl who lives with her sister and her grandmother and has no qualms about letting it be known that she's uninterested in Shinto rituals or helping her father's electoral campaign. Instead, she dreams of leaving the boring town and trying her luck in Tokyo. Taki is a high school boy in Tokyo who works part-time in an Italian restaurant and aspires to become an architect or an artist. Every night he has a strange dream where he becomes...a high school girl in a small mountain town.",
          starring: 'Ryunosuke Kamiki, Mone Kamishiraishi',
          awards: "Asian Film Critics Association Awards for Best Original Score, Awards of the Japanese Academy for Best Music Score & Best Screenplay & Most Popular Film, Behind the Voice Actors Awards for Best Female Vocal Performance in an Anime Feature Film/Special in a Supporting Role & Best Female Lead Vocal Performance in an Anime Feature Film/Special & Best Female Vocal Performance in an Anime Feature Film/Special in a Supporting Role & Best Vocal Ensemble in an Anime Feature Film/Special, Blue Ribbon Awards, Crunchyroll Anime Awards for Best Film, Hochi Film Awards, Los Angeles Film Critics Association Awards for Best Animation, Mainichi Film Concours for Best Animation Film & Best Film, Sitges - Catalonian International Film Festival for Best Animated Feature Film, Tokyo Anime Award for Film Category",
          image1: 'public/images/your-name1.jpeg',
          image2: 'public/images/your-name2.jpeg',
          image3: 'public/images/your-name3.jpeg',
          current_mood: ''
        },
        {
          title: 'The shape of water',
          director: 'Guillermo del Toro',
          cinematographer: 'Dan Laustsen',
          genre: 'Romance, Fantasy',
          duration: 123,
          release_year: 2017,
          description: "From master storyteller,Guillermo del Toro comes THE SHAPE OF WATER, an otherworldly fable set against the backdrop of Cold War era America circa 1962. In the hidden high-security government laboratory where she works, lonely Elisa (Sally Hawkins) is trapped in a life of isolation. Elisa's life is changed forever when she and co-worker Zelda (Octavia Spencer) discover a secret classified experiment. Rounding out the cast are Michael Shannon, Richard Jenkins, Michael Stuhlbarg, and Doug Jones. ",
          starring: 'Sally Hawkins, Michael Shannon, Doug Jones, Octavia Spencer',
          awards: 'Academy Awards for Best Achievement in Directing & Best Motion Picture of the Year & Best Achievement in Music Written for Motion Pictures & Best Achievement in Production Design, BAFTA Awards for Best Production Design & Original Music, AARP Movies for Grownups Awards for Best Supporting Actor, Academy of Science Fiction, Fantasy & Horror Films for Best Fantasy Film, AFI Awards for Movie of the Year, Alliance of Women Film Journalists for Best Pictures & Best Director & Bravest Performance, Art Directors Guild, Atlanta Film Critics Circle for Best Actress, Austin Film Critics Association for Best Director & Best Score & Top Ten Films, Golden Globes for Best Director & Best Original Score',
          image1: 'public/images/the-shape-water1.jpeg',
          image2: 'public/images/the-shape-water2.jpeg',
          image3: 'public/images/the-shape-water3.jpeg',
          current_mood: ''
        },
        {
          title: 'Coraline',
          director: 'Henry Selick',
          cinematographer: 'Pete Kozachik',
          genre: 'Family, Fantasy',
          duration: 100,
          release_year: 2009,
          description: "When Coraline moves to an old house, she feels bored and neglected by her parents. She finds a hidden door with a bricked-up passage. During the night, she crosses the passage and finds a parallel world where everybody has buttons instead of eyes, with caring parents and all her dreams coming true. When the Other Mother invites Coraline to stay in her world forever, the girl refuses and finds that the alternate reality where she is trapped is only a trick to lure her.",
          starring: 'Henry Selick, Dakota Fanning, Teri Hatcher',
          awards: 'BAFTA Awards for Best Feature Film, AFI Awards for Movie of the Year, Alliance of Women Film Journalists for Best Animated Female, Annecy International Animated Film Festival for Best Feature, Annie Awards for Character Design in a Feature Production, Music in Feature Production, Production Design ina Feature Production, ASCAP Film Television Music Awards for Top Box Office Films',
          image1: 'public/images/coraline1.jpeg',
          image2: 'public/images/coraline2.jpeg',
          image3: 'public/images/coraline3.jpeg',
          current_mood: ''
        },
        {
            title: 'Isle of Dogs',
            director: 'Wes Anderson',
            cinematographer: 'Tristan Oliver',
            genre: 'Comedy, Adventure',
            duration: 102,
            release_year: 2018,
            description: "An outbreak of dog flu has spread through the city of Megasaki, Japan, and Mayor Kobayashi has demanded all dogs to be sent to Trash Island. On the island, a young boy named Atari sets out to find his lost dog, Spots, with the help of five other dogs... with many obstacles along the way.",
            starring: "Bill Murray, Bryan Cranston, Tilda Swinton",
            awards: "Annie Awards for Outstanding Achievement for Voice Acting in an Animated Feature Production, Art Directors Guild for Animated Film, Atlanta Film Critics Circle for Best Animated Film, Berlin International Film Festival for Best Director, Boston Society of Film Critics Awards for Best Animated Film, Casting Society of America for Outstanding Achievement in Casting, Cinema Audio Society for Outstanding Achievement in Sound Mixing for Motion Pictures, CinEuphoria Awards for Best Animated Character & Best Animated Film, Dallas-Fort Worth Film Critics Association Awards for Best Animated Film & Best Musical Score, Golden Trailer Awards for Best Animation/Family & Best Motion Poster, Hawaii Film Critics Society for Best Vocal/Motion Capture Performance, Hollywood Music In Media Awards for Best Original Score, Houston Film Critics Society Awards for Best Animated Film, Imagine Film Festival for Audience Award, International Cinephile Society Awards for Best Animated Film, Best Animated Film for Best Animated Feature ",
            image1: 'public/images/isle-of-dog1.jpeg',
            image2: 'public/images/isle-of-dog2.jpeg',
            image3: 'public/images/isle-of-dog3.jpeg',
            current_mood: ''
          }
       
      ])
      reviews = Review.create([
        {
          rating:4.8 ,
          comment: 'My fav',
          movie: Movie.first,
          user: User.first
        },
        {
          rating: 3.6,
          comment: 'Meh',
          movie: Movie.second,
          user: User.second
        },
        {
          rating: 5,
          comment: '5 out of 5',
          movie: Movie.third,
          user: User.third
        }
      ])

      reviews = Review.create([
        {
          rating: 4.0,
          comment: 'Wow',
          movie: Movie.first,
          user: User.second
        },
        {
          rating:4.5 ,
          comment: 'I like it',
          movie: Movie.fourth,
          user: User.third
        },
        {
          rating:3.5 ,
          comment: 'Not my fave',
          movie: Movie.second,
          user: User.first
        }
      ])

      users = User.create([
        {
          full_name: 'Lola',
          username: 'Lolalo',
          password: '123lola',
          email: 'lola@gmail.com'
        },
        {
          full_name: 'Sky',
          username: 'Skylar',
          password: '123sky',
          email: 'sky@gmail.com'
        },
        {
          full_name: 'Kevin',
          username: 'theRat',
          password: '123kevin',
          email: 'kevin@gmail.com'
        }
      ])

      favorites = Favorite.create([
        {
          movie: Movie.first,
          user: User.second
        },
        {
          movie: Movie.second,
          user: User.first
        },
        {
          movie: Movie.third,
          user: User.first
        }
      ])


puts 'Done seeding!!!!!!!!!!'
