puts "Seeding.............."
User.destroy_all
Movie.destroy_all
Review.destroy_all
Favorite.destroy_all

u1 = User.create!(full_name: "Sofia Versoza", username: "sof", password: "123sof", email: "sofversoza@gmail.com")
u2 = User.create!(full_name: "Tian Xu", username: "tian", password: "123tian", email: "tianxu@gmail.com")

   movies = Movie.create([
    {
      title: 'Suspiria',
      director: 'Dario Argento',
      cinematographer: 'Luciano Tovoli',
      genre: 'Horror, Thriller',
      duration: 92,
      release_year: 1977,
      description: "Suzy travels to Germany to attend ballet school. When she arrives, late on a stormy night, no one lets her in, and she sees Pat, another student, fleeing from the school. When Pat reaches her apartment, she is murdered. The next day, Suzy is admitted to her new school, but has a difficult time settling in. She hears noises, and often feels ill. As more people die, Suzy uncovers the terrifying secret history of the place.",
      starring: 'Jessica Harper, Daria Nicolodi, Alida Valli',
      awards: 'OFTA Film Hall of Fame in Motion Picture',
      image1: 'suspiria1.jpg',
      image2: 'suspiria2.jpg',
      image3: 'suspiria3.jpg',
      current_mood: ''
    },
    {
      title: 'The Shining',
      director: 'Stanley Kubrick',
      cinematographer: 'John Alcott',
      genre: 'Horror, Thriller',
      duration: 146,
      release_year: 1980,
      description: "Jack Torrance becomes winter caretaker at the isolated Overlook Hotel in Colorado, hoping to cure his writer's block. He settles in along with his wife, Wendy and his son Danny who is plagued by psychic premonitions. As Jack's writing goes nowhere and Danny's visions become more disturbing, Jack discovers the hotel's dark secrets and begins to unravel into a homicidal maniac hell-bent on terrorizing his family.",
      starring: 'Jack Nicholson, Shelley Duvall, Scatman Crothers, Danny Lloyd',
      awards: 'Saturn Awards Best DVD Collection & Best Supporting Actor, National Film Preservation Board, OFTA Film Hall of Fame Motion Picture',
      image1: 'shining1.jpeg',
      image2: 'shining2.jpeg',
      image3: 'shining3.jpg',
      current_mood: ''
    },
    {
      title: 'Trainspotting',
      director: 'Danny Boyle',
      cinematographer: 'Brian Tufano',
      genre: 'Drama, Contemporary',
      duration: 93,
      release_year: 1996,
      description: "Heroin addict Mark Renton stumbles through bad ideas and sobriety attempts with his unreliable friends -- Sick Boy, Begbie, Spud and Tommy. He also has an underage girlfriend, Diane, along for the ride. After cleaning up and moving from Edinburgh to London, Mark finds he can't escape the life he left behind when Begbie shows up at his front door on the lam, and a scheming Sick Boy follows.",
      starring: 'Ewan McGregor, Ewen Bremner, Jonny Lee Miller, Kevin McKidd',
      awards: "BAFTA Award for Best Adapted Screenplay, Empire Award for Best Director, NME Award for Best Film, Golden Space Needle Award for Best Director, Golden Space Needle Award for Best Film, Czech Lion Award for Best Foreign Film, Empire Award for Best British Film, Prism Award for Feature Film",
      image1: 'trainspotting1.jpg',
      image2: 'trainspotting2.jpeg',
      image3: 'trainspotting3.jpg',
      current_mood: ''
    },
    {
      title: 'Requiem for a Dream',
      director: 'Darren Aronofsky',
      cinematographer: 'Matthew Libatique',
      genre: 'Drama, Contemporary',
      duration: 102,
      release_year: 2000,
      description: "Imaginatively evoking the inner landscape of human beings longing to connect, to love and feel loved, the film is a parable of happiness gloriously found and tragically lost. Requiem for a Dream tells parallel stories that are linked by the relationship between the lonely, widowed Sara Goldfarb and her sweet but aimless son, Harry. The plump Sara, galvanized by the prospect of appearing on a TV game show, has started on a dangerous diet regimen to beautify herself for a national audience.",
      starring: 'Ellen Burstyn, Jared Leto, Jennifer Connelly, Marlon Wayans',
      awards: "Independent Spirit Award for Best Female Lead, Satellite Award for Best Actress in a Motion Picture for Drama, Boston Society of Film Critics Award for Best Actress, Southeastern Film Critics Association Award for Best Actress, Online Film Critics Society Award for Best Actress, Online Film Critics Society Award for Best Director, Chlotrudis Award for Best Film, Phoenix Film Critics Society Award for Best Film Editing, Online Film Critics Society Award for Best Editing, Independent Spirit Award for Best Cinematography, Chicago Film Critics Association Award for Best Actress, Las Vegas Film Critics Society Award for Best Actress, Phoenix Film Critics Society Award for Best Actress, Golden Trailer Award for Best of Show, Florida Film Critics Circle Award for Best Actress, Aluminum Horse for Best Actress, Online Film Critics Society Award for Best Original Score",
      image1: 'requiem1.jpg',
      image2: 'requiem2.jpg',
      image3: 'requiem3.jpg',
      current_mood: ''
    },
    {
      title: 'Atonement',
      director: 'Joe Wright',
      cinematographer: 'Seamus McGarvey',
      genre: 'Drama, Mystery, Romance',
      duration: 126,
      release_year: 2007,
      description: "This sweeping English drama, based on the book by Ian McEwan, follows the lives of young lovers Cecilia Tallis and Robbie Turner. When the couple are torn apart by a lie constructed by Cecilia's jealous younger sister, Briony, all three of them must deal with the consequences. Robbie is the hardest hit, since Briony's deception results in his imprisonment, but hope for Cecilia and her beau increases when their paths cross during World War II.",
      starring: 'James McAvoy, Keira Knightley, Saoirse Ronan',
      awards: "Oscar Best Achievement in Music Written for Motion Pictures Original Score, BAFTA Best Film & Best Production Design, Empire Award for Best Actor & Best Actress, Golden Globe Award for Best Motion Picture for Drama, London Film Critics Circle Award for British Actor of the Year, Best Performance by a Youth in a Leading or Supporting Role - Female, Irish Film and Television Award for Best Actress in a Supporting Role in a Feature Film, World Soundtrack Award for Best Original Score of the Year, Golden Trailer Award for Best Romance, San Diego Film Critics Society Award for Best Editing, Golden Globe Award for Best Original Score, Evening Standard Best Technical/Artistic Achievement, Rembrandt Award for Best International Actress, Phoenix Film Critics Society Award for Best Original Score, Las Vegas Film Critics Society Award for Youth in Film - Female, London Film Critics Circle Award for British Supporting Actress of the Year, Phoenix Film Critics Society Award for Best Cinematography, Irish Film and Television Award for Best Director of Photography",
      image1: 'atonement1.jpg',
      image2: 'atonement2.jpg',
      image3: 'atonement3.jpg',
      current_mood: ''
    }
  ])

  movies = Movie.create([
    {
      title: 'Dark Shadows',
      director: 'Tim Burton',
      cinematographer: 'Bruno Delbonnel',
      genre: 'Fantasy, Horror',
      duration: 103,
      release_year: 2012,
      description: "In 18th-century Maine, Barnabas Collins (Johnny Depp) presides over the town of Collinsport. A rich and powerful playboy, Barnabas seals his own doom when he breaks the heart of a witch named Angelique (Eva Green). Angelique turns Barnabas into a vampire and buries him alive. Two centuries later, Barnabas escapes from his tomb and finds 1972 Collinsport a very different place. His once-grand estate has fallen into ruin, and the dysfunctional remnants of his family have fared little better.",
      starring: 'Johnny Depp, Michelle Pfeiffer, Bella Heathcote, Eva Green',
      awards: 'BMI Film Music Award, Kids Choice Awards Favorite Movie Actor',
      image1: 'dshadows1.jpg',
      image2: 'dshadows2.jpg',
      image3: 'dshadows3.jpg',
      current_mood: ''
    },
    {
      title: 'Edward Scissorhands',
      director: 'Tim Burton',
      cinematographer: 'Stefan Czapsky',
      genre: 'Fantasy, Romance',
      duration: 105,
      release_year: 1990,
      description: "A scientist (Vincent Price) builds an animated human being -- the gentle Edward (Johnny Depp). The scientist dies before he can finish assembling Edward, though, leaving the young man with a freakish appearance accentuated by the scissor blades he has instead of hands. Loving suburban saleswoman Peg (Dianne Wiest) discovers Edward and takes him home, where he falls for Peg's teen daughter (Winona Ryder). However, despite his kindness and artistic talent, Edward's hands make him an outcast.",
      starring: ' Johnny Depp, Winona Ryder, Dianne Wiest',
      awards: "BAFTA Film Award Best Production Design, Felix Best Original Score, Felix Best Art Direction, Felix Best Costume Design, Felix Best Makeup, Saturn Award Best Fantasy Film, Hugo Awards Best Dramatic Presentation, Sant Jordi Awards Best Foreign Film & Best Foreign Actress",
      image1: 'edward1.jpg',
      image2: 'edward2.jpg',
      image3: 'edward3.jpg',
      current_mood: ''
    },
    {
      title: 'Romeo and Juliet',
      director: 'Raz Luhrmann',
      cinematographer: 'Donald McAlpine',
      genre: 'Drama, Romance',
      duration: 120,
      release_year: 1996,
      description: 'Baz Luhrmann helped adapt this classic Shakespearean romantic tragedy for the screen, updating the setting to a post-modern city named Verona Beach. In this version, the Capulets and the Montagues are two rival gangs. Juliet (Claire Danes) is attending a costume ball thrown by her parents. Her father Fulgencio Capulet (Paul Sorvino) has arranged her marriage to the boorish Paris (Paul Rudd) as part of a strategic investment plan. Romeo attends the masked ball and he and Juliet fall in love.',
      starring: 'Leonardo DiCaprio, Claire Danes, Paul Rudd, John Leguizamo',
      awards: "BAFTA Award for Best Original Score, Silver Bear for Best Actor, BAFTA Award for Best Direction, BAFTA Award for Best Adapted Screenplay, MTV Movie Award for Best Female Performance, BAFTA Award for Best Production Design, Satellite Award for Best Art Direction and Production Design, London Film Critics' Circle Award for Actress of the Year, Favorite Actor - Drama/Romance, Best Performance by a Young Actress in a Drama Film, Favorite Actress - Romance",
      image1: 'romeo1.jpg',
      image2: 'romeo2.jpg',
      image3: 'romeo3.jpg',
      current_mood: ''
    },
    {
      title: 'American Psycho',
      director: 'Marry Harron',
      cinematographer: 'Andrzej Sekula',
      genre: 'Comedy, Horror',
      duration: 101,
      release_year: 2000,
      description: "In New York City in 1987, a handsome, young urban professional, Patrick Bateman (Christian Bale), lives a second life as a gruesome serial killer by night. The cast is filled by the detective (Willem Dafoe), the fiance (Reese Witherspoon), the mistress (Samantha Mathis), the coworker (Jared Leto), and the secretary (Chloë Sevigny). This is a biting, wry comedy examining the elements that make a man a monster.",
      starring: 'Christian Bale, Bret Easton Ellis, Jared Leto, Reese Witherspoon, Chloë Sevigny, Willem Dafoe',
      awards: 'ACCA Best Actor in a Leading Role, Chlotrudis Award Best Adapted Screenplay & Best Actor, Fangoria Chainsaw Awards Best Wide-Release Film & Best Actor, Golden Train Award Best Actor, IHG Award Best Movie, National Board of Review Special Recognition.',
      image1: 'psycho1.jpg',
      image2: 'psycho2.jpg',
      image3: 'psycho3.jpg',
      current_mood: ''
    },
    {
      title: 'Kill Bill Vol. 1',
      director: 'Quentin Tarantino',
      cinematographer: 'Robert Richardson',
      genre: 'Action, Crime',
      duration: 101,
      release_year: 2003,
      description: 'A former assassin, known simply as The Bride (Uma Thurman), wakes from a coma four years after her jealous ex-lover Bill (David Carradine) attempts to murder her on her wedding day. Fueled by an insatiable desire for revenge, she vows to get even with every person who contributed to the loss of her unborn child, her entire wedding party, and four years of her life. After devising a hit list, The Bride sets off on her quest, enduring unspeakable injury and unscrupulous enemies.',
      starring: 'Uma Thurman, Lucy Liu, David Carradine',
      awards: 'MTV Movie Award for Best Villain, MTV Movie Award for Best Fight, MTV Movie Award for Best Female Performance',
      image1: 'killbill1.jpg',
      image2: 'killbill2.jpg',
      image3: 'killbill3.png',
      current_mood: ''
    }
  ])

  movies = Movie.create([
    {
      title: 'Fallen Angels',
      director: 'Wong Kar-wai',
      cinematographer: 'Christopher Doyle, Mark Lee Ping-bing, Chan Kwok-Hung',
      genre: 'Drama, Romance',
      duration: 95,
      release_year: 1995,
      description: "An assassin, his boss, an entrepreneur and two women cross paths in Hong Kong as their professional and love lives collide and influence each other, mostly without their knowledge.",
      starring: 'Leon Lai, Takeshi Kaneshiro, Michelle Reis, Charlie Yeung',
      awards: 'Hong Kong Film Awards Best Supporting Actress & Best Cinematography & Best Original Score, Golden Horse Awards Best Film Editing, Hong Kong Film Critics Society Awards Film of Merit, Golden Bauhinia Awards Best Supporting Actress & Best Cinematography.',
      image1: 'fallenA1.jpg',
      image2: 'fallenA2.jpg',
      image3: 'fallenA3.png',
      current_mood: ''
    },
    {
      title: 'The French Dispatch',
      director: 'Wes Anderson',
      cinematographer: 'Robert Yeoman',
      genre: 'Comedy, Romance',
      duration: 108,
      release_year: 2021,
      description: 'A love letter to journalists set in an outpost of an American newspaper in a fictional 20th-century French city that brings to life a collection of stories published in "The French Dispatch."',
      starring: ' Bill Murray, Timothée Chalamet, Owen Wilson, Tilda Swinton, Audrien Brody, Benicio del Toro, Léa Seydoux, Saoirse Ronan, Willem Dafoe, Kate Winslet',
      awards: 'AFCA Award Best Ensemble, CFCA Award Best Art Direction/Production Design & Best Editing, CIC Award Best Supporting Actor & Best Ensemble Cast, DFCS Award Best Comedy Film & Best Ensemble, FFCC Award Best Original Screenplay, NCFCA Award Best Editing, NDFS Award Best Production Design, NTFCA Award Best Supporting Actor & Best Supporting Actress & Gary Murray Award (Best Ensemble), OFCC Award Best Ensemble Cast, OFCS Award Best Production Design, PCA Award Best Male Supporting Role, SEFCA Best Ensemble, SLFCA Award Best Production Design.',
      image1: 'frenchdispatch1.png',
      image2: 'frenchdispatch2.png',
      image3: 'frenchdispatch3.jpg',
      current_mood: ''
    }
  ])

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
        image1: 'ttdyy1.jpeg',
        image2: 'ttdyy2.jpg',
        image3: 'ttdyy3.jpeg',
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
        image1: 'nacholibre1.jpeg',
        image2: 'nacholibre2.jpeg',
        image3: 'nacholibre3.jpeg',
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
        image1: 'lolita1.jpeg',
        image2: 'lolita2.jpeg',
        image3: 'lolita3.jpeg',
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
        image1: 'bigfish1.jpeg',
        image2: 'bigfish2.png',
        image3: 'bigfish3.jpeg',
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
        image1: 'persepolis1.jpeg',
        image2: 'persepolis2.jpeg',
        image3: 'persepolis3.png',
        current_mood:""
      }
    ])

    Movie.create(title:"Les Choristes", director: "Christophe Barratier ", cinematographer: "Carlo Varini", description:"The new teacher at a severely administered boys' boarding school works to positively affect the students' lives through music.",duration: 97, release_year: 1945,genre: "Drama, Musical", starring:"Gérard Jugnot, Francois Berleand, Jean-Baptiste Maunier",awards:"Austin Film Festival for Best Narrative Feature - Distributed, Bangkok International Film Festival for Best Director, César Awards France for Best Music Written for a Film & Best Sound, European Film Awards for European Composer, Ft. Lauderdale International Film Festival for Best Film, Heartland International Film Festival, Ljubljana International Film Festival, Lumiere Awards France for Best Film, National Board of Review for Top foreign films, Sant Jordi Awards for Best Foreign Film, Étoiles d'Or France for Best Composer",image1:"les-choristes1.jpeg",image2:"les-choristes2.jpeg",image3:"les-choristes3.png")

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
          image1: 'Flipped1.jpeg',
          image2: 'Flipped2.jpg',
          image3: 'Flipped3.jpeg',
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
          image1: "breakfast-at-tiffany's1.jpeg",
          image2: "breakfast-at-tiffany's2.jpg",
          image3: "breakfast-at-tiffany's3.jpeg",
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
          image1: 'the-wizard-of-oz1.jpeg',
          image2: 'the-wizard-of-oz2.jpeg',
          image3: 'the-wizard-of-oz3.jpeg',
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
          image1: '50-first-dates1.jpg',
          image2: '50-first-dates2.jpeg',
          image3: '50_first_dates3.jpeg',
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
          image1: '500daysofsummer1.jpeg',
          image2: '500daysofsummer2.jpeg',
          image3: '500daysofsummer3.jpeg',
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
          image1: 'daisy1.jpeg',
          image2: 'daisy2.png',
          image3: 'daisy3.jpeg',
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
          image1: 'le-petit-prince1.jpeg',
          image2: 'le-petit-prince2.jpg',
          image3: 'le-petit-prince3.jpeg',
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
          image1: 'girl-with-a-pearl-earring1.jpeg',
          image2: 'girl-with-a-pearl-earring2.jpeg',
          image3: 'girl-with-a-pearl-earring3.jpeg',
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
          image1: 'spirited-away1.jpeg',
          image2: 'spirited-away2.jpeg',
          image3: 'spirited-away3.jpeg',
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
          image1: 'life-of-pi1.jpg',
          image2: 'life-of-pi2.jpeg',
          image3: 'life-of-pi3.jpeg',
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
          image1: 'your-name1.jpeg',
          image2: 'your-name2.jpeg',
          image3: 'your-name3.jpeg',
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
          image1: 'the-shape-water1.jpeg',
          image2: 'the-shape-water2.jpeg',
          image3: 'the-shape-water3.jpeg',
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
          image1: 'coraline1.jpeg',
          image2: 'coraline2.jpeg',
          image3: 'coraline3.jpeg',
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
            image1: 'isle-of-dog1.jpeg',
            image2: 'isle-of-dogs2.jpeg',
            image3: 'isle-of-dogs3.jpeg',
            current_mood: ''
          }
      ])

      movies = Movie.create([
        {
          title: 'The Truman Show ',
          director: 'Peter Weir',
          cinematographer: 'Peter Biziou',
          genre: 'Drama, Sci-fi',
          duration: 103,
          release_year: 1998,
          description: "He doesn't know it, but everything in Truman Burbank's (Jim Carrey) life is part of a massive TV set. Executive producer Christof (Ed Harris) orchestrates 'The Truman Show,' a live broadcast of Truman's every move captured by hidden cameras. Cristof tries to control Truman's mind, even removing his true love, Sylvia (Natascha McElhone), from the show and replacing her with Meryl (Laura Linney). As Truman gradually discovers the truth, however, he must decide whether to act on it.",
          starring: 'Jim Carrey, Ed Harris, Laura Linney',
          awards: "Golden Globe Award for Best Supporting Actor Motion Picture, Golden Globe Award for Best Original Score, National Board of Review Award for Best Supporting Actor, BAFTA Award for Best Direction, Robert Award for Best American Film, Satellite Award for Best Art Direction and Production Design, London Film Critics' Circle Award for Director of the Year, Saturn Award for Best Writing, Blockbuster Entertainment Award for Favorite Supporting Actor - Drama, European Film Award for Best Non-European Film, Southeastern Film Critics Association Award for Best Supporting Actor, Bogey Award, Golden Globe Award for Best Actor – Motion Picture – Drama, MTV Movie Award for Best Male Performance, Hugo Award for Best Dramatic Presentation, BAFTA Award for Best Original Screenplay, BAFTA Award for Best Production Design, ASCAP Film and Television Music Award for Top Box Office Films, London Film Critics' Circle Award for Screenwriter of the Year, Best Fantasy Film, Chicago Film Critics Association Award for Best Original Score, Online Film Critics Society Award for Best Original Screenplay, Florida Film Critics Circle Award for Best Director",
          image1: 'truman1.jpg',
          image2: 'truman2.jpg',
          image3: 'truman3.jpg',
          current_mood: ''
        },
        {
          title: 'Eternal Sunshine of the Spotless Mind',
          director: 'Michel Gondry',
          cinematographer: 'Ellen Kuras',
          genre: 'Romance, Sci-fi',
          duration: 108,
          release_year: 2004,
          description: "After a painful breakup, Clementine (Kate Winslet) undergoes a procedure to erase memories of her former boyfriend Joel (Jim Carrey) from her mind. When Joel discovers that Clementine is going to extremes to forget their relationship, he undergoes the same procedure and slowly begins to forget the woman that he loved. Directed by former music video director Michel Gondry, the visually arresting film explores the intricacy of relationships and the pain of loss.",
          starring: 'Jim Carrey, Kate Winslet, Charlie Kaufman, Kirsten Dunst, Elijah Wood, Mark Ruffalo',
          awards: "BAFTA Award for Best Editing, Writers Guild of America Award for Best Original Screenplay, London Film Critics' Circle Award for Screenwriter of the Year, Bram Stoker Award for Best Screenplay, Toronto Film Critics Association Award for Best Screenplay, Best Original Screenplay, BAFTA Award for Best Original Screenplay, Toronto Film Critics Association Award for Best Director, Celebrate New York Award",
          image1: 'eternal1.jpg',
          image2: 'eternal2.jpg',
          image3: 'eternal3.jpg',
          current_mood: ''
        },
        {
          title: 'Matrix',
          director: 'Lana Wachowski, Lilly Wachowski',
          cinematographer: 'Bill Pope',
          genre: ' Action, Sci-fi ',
          duration: 136,
          release_year: 1999,
          description: 'Neo (Keanu Reeves) believes that Morpheus (Laurence Fishburne), an elusive figure considered to be the most dangerous man alive, can answer his question -- What is the Matrix? Neo is contacted by Trinity (Carrie-Anne Moss), a beautiful stranger who leads him into an underworld where he meets Morpheus. They fight a brutal battle for their lives against a cadre of viciously intelligent secret agents. It is a truth that could cost Neo something more precious than his life.',
          starring: 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss',
          awards: 'Academy Awards Best Film Editing, BAFTA Awards Best Sound & Best Achievement in Special Visual Effects, Saturn Award Best Science Fiction Film & Best Director, ACCA Best Film Editing & Best Sound & Best Visual Effects, Blockbuster Entertainment Award Favorite Actor & Favorite Supporting Actor, BMI Film & TV Awards, Bogey Awards Germany in Gold, Cinema Audio Society Outstanding Achievement in Sound Mixing for a Feature Film, Csapnivalo Awards Best Actress in a Leading Role & Best Actor in a Leading Role & Best Visual Effects, Empire Awards Best Film & Best Debut, Golden Trailer Awards Best of Show & Best Art and Commerce & Best Action & Best Edit, Jupiter Award Best International Film & Best International Director, Key Art Awards Best of Show – Audiovisual, Sierra Award Best Visual Effects & Best Screenplay – Original & Best Editing & Best Production Design, Mainichi Film Concours Best Foreign Language Film, Golden Reel Award Best Sound Editing – Effects & Foley, MTV Movie Award Best Movie & Best Male Performances & Best Fight, OFTA Film Hall of Fame Motion Picture, OFTA Film Award Best Sound Mixing & Best Visual Effects',
          image1: 'matrix1.jpg',
          image2: 'matrix2.jpg',
          image3: 'matrix3.jpg',
          current_mood: ''
        },
        {
          title: 'Annihilation',
          director: 'Alex Garland',
          cinematographer: 'Robert Hardy',
          genre: 'Sci-fi, Horror',
          duration: 120,
          release_year: 2018,
          description: "Lena, a biologist and former soldier, joins a mission to uncover what happened to her husband inside Area X -- a sinister and mysterious phenomenon that is expanding across the American coastline. Once inside, the expedition discovers a world of mutated landscapes and creatures, as dangerous as it is beautiful, that threatens both their lives and their sanity.",
          starring: 'Natalie Portman, Jennifer Jason Leigh, Gina Rodriguez, Tessa Thompson',
          awards: ' CFCA Award Best Use of Visual Effects, CinEuphoria Best Visual Effects & Best Art Direction, DFCS Award Best Science-Fiction/Horror Film, Golden Carp Film Award International Best Motion Picture of the Year, FFCC Award Best Visual Effects, Fright Meter Award Best Special Effects, GAFCA Award Best Original Score, Golden Schmoes Most Underrated Movie of the Year & Trippiest Movie of the Year, IGN Award Best Sci-Fi/Fantasy Movie, Special Crystal Pine Best Sound Editing, MCFCA Award Best Sound Integration, Odyssey Award Best Sci-Fi Film, OFCS Award Best Visual Effects, PCC Award Best Science Fiction Film, UFCA Award Best Original Score',
          image1: 'annihilation1.jpg',
          image2: 'annihilation2.jpeg',
          image3: 'annihilation3.jpeg',
          current_mood: ''
        },
        {
          title: 'Black Swan',
          director: 'Darren Aronofsky',
          cinematographer: 'Matthew Libatique',
          genre: 'Drama, Thriller',
          duration: 108,
          release_year: 2010,
          description: "Nina (Natalie Portman) is a ballerina whose passion for the dance rules every facet of her life. When the company's artistic director decides to replace his prima ballerina for their opening production of 'Swan Lake,' Nina is his first choice. She has competition with newcomer Lily (Mila Kunis) however. While Nina is perfect for the role of the White Swan, Lily personifies the Black Swan. As rivalry between the two dancers transforms into a twisted friendship, Nina's dark side begins to emerge.",
          starring: 'Natalie Portman, Vincent Cassel, Mila Kunis, Winona Ryder',
          awards: 'Academy Award for Best Actress, Golden Globe Award for Best Actress – Motion Picture – Drama, BAFTA Film Award Best Leading Actress, Screen Actors Guild Awards for Outstanding Performance by a Female Actor in a Leading Role, Award of the Argentinian Academy for Best Foreign Film, Saturn Award Best Actress & Best Supporting Actress, AFI Awards Movie of the Year, EDA Award Best Film Editing & Unforgettable Moment & Bravest Performance Award, Excellence in Production Design Award Contemporary Film, AFCA Award Best Film & Best Director & Best Actress & Best Original Screenplay & Best Cinematography, ACCA Best Performances by an Actress in a Leading Role, Davis Award Best Performances by an Actress in a Leading Role, Blue Ribbon Award Best Foreign Film, BSFC Award Best Actress, CFCA Award Best Actress & Best Original Score, CinEuphoria Top Ten of the Year - Audience Award & Best Supporting Actress - Audience Award & Best Actress - Audience Award & Top Ten of the Year - International Competition & Best Actress - International Competition, CDG Award Excellence in Contemporary Film, DFWFCA Award Best Actress, Fangoria Chainsaw Award Best Wide-Release Film, Best Actress, Best Screenplay, Best Score, Best Supporting Actress, Independent Spirit Award Best Female Lead & Best Director & Best Feature & Best Cinematography, Gold Derby Film Award Lead Actress of the Decade, Golden Globe Best Performance by an Actress in a Motion Picture - Drama, Golden Schmoes Best Performance by an Actress in a Supporting Role in a Motion Picture & Best Actress of the Year & Best Horror Movie of the Year, WFCC Worst Female Images in a Movie, Venice Film Festival Best Young Actor/Actress, SIYAD Award Best Foreign Film, SEFCA Award Best Actress, SFFCC Award Best Director, Russian National Movie Awards Best Foreign Drama of the Year, Prism Award Feature Film - Mental Health, NYFCC Award Best Cinematographer, LAFCA Award Best Cinematography.',
          image1: 'swan1.jpg',
          image2: 'swan2.jpg',
          image3: 'swan3.jpg',
          current_mood: ''
        }
      ])

      movies = Movie.create([
        {
          title: 'Se7en',
          director: 'David Fincher',
          cinematographer: 'Darius Khondji, Harris Savides',
          genre: 'Crime, Mystery',
          duration: 127,
          release_year: 1995,
          description: "When retiring police Detective William Somerset (Morgan Freeman) tackles a final case with the aid of newly transferred David Mills (Brad Pitt), they discover a number of elaborate and grizzly murders. They soon realize they are dealing with a serial killer (Kevin Spacey) who is targeting people he thinks represent one of the seven deadly sins. Somerset also befriends Mills' wife, Tracy (Gwyneth Paltrow), who is pregnant and afraid to raise her child in the crime-riddled city.",
          starring: 'Brad Pitt, Kevin Spacey, Morgan Freeman, Gwyneth Paltrow',
          awards: 'Academy Awards Oscar Best Film Editing, Felix Best Director, Saturn Award Best Writing & Best Make-up, ASCAP Award Top Box Office Films, ACCA Best Director & Best Cinematography & Best Film Editing, Blue Ribbon Award Best Foreign Language Film, Critics Choice Award Best Supporting Actor, CFCA Award Best Cinematography, DFWFCA Award Best Picture, Empire Award Best Film & Best Actor, Fangoria Chainsaw Award Best Supporting Actor, International Fantasy Film Award Best Film & Best Screenplay, Golden Trailer Award Best of the Decade, Hochi Film Award Best Foreign Language Film, ALFS Award Actor of the Year, MTV Movie Award Best Movie & Most Desirable Male Lead & Best Villain, NBR Award Best Supporting Actor, NYFCC Award Best Supporting Actor, OFTA Film Hall of Fame Motion Picture, Rosa de Sant Jordi Audience Award Best Foreign Film, Universe Reader’s Choice Award Best Horror Film.',
          image1: 'seven1.jpg',
          image2: 'seven2.jpeg',
          image3: 'seven3.jpg',
          current_mood: ''
        },
        {
          title: 'Hereditary',
          director: 'Ari Aster',
          cinematographer: 'Pawel Pogorzelski',
          genre: 'Horror, Drama',
          duration: 127,
          release_year: 2018,
          description: "When the matriarch of the Graham family passes away, her daughter and grandchildren begin to unravel cryptic and increasingly terrifying secrets about their ancestry, trying to outrun the sinister fate they have inherited.",
          starring: 'Toni Collete, Alex Wolff, Milly Shapiro',
          awards: 'Saturn Award Legion M Breakout Director, Blogos de Oro Best lead Actress, BOFCA Award Best Actress, CFCA Award Best Actress, CinEuphoria Best Film - Audience Award & Top Ten of the Year - Audience Award & Top Ten of the Year - International Competition & Best Original Music - International Competition & Best Supporting Actor - International Competition, DFCS Award Best Actress, Fangoria Chainsaw Awards Best Actress & Best Wide-Release Film & Best Director & Best Screenplay & Best Supporting Actor & Best Kill, Fright Meter Awards Best Horror Movie & Best Director & Best Actress & Best Supporting Actor & Best Screenplay & Best Cinematography, GAFCA Award Best Actress, Golden Schmoes Awards Best Actress of the Year, Golden Trailer Awards Best Sound Editing in a TV Spot, Gotham Independent Film Award Best Actress, HFCS Award Best Actress, HFCS Award Best Actress, IGN Award Best Lead Performer in a Movie & Best Horror Movie & Best Director, INOCA Awards Best Actress, IFCS Award Best Actress, LAOFCS Award Best Actress & Best Performance by an Actor 23 and Under, NFCS Award Best Actress, NTFCA Award Best Actress, Odyssey Award Best Lead Actress & Best Horror Film, OAFFC Award Breakthrough Filmmaker, OFCS Award Best Actress & Best Debut & Best Picture, PCC Best Horror Film, Rondo Hatton Classic Horror Awards Best Film, SFCS Awards Best Actress, SLFCA Award Best Actress, The BAM Award Best Actress',
          image1: 'hereditary1.jpg',
          image2: 'hereditary2.jpg',
          image3: 'hereditary3.jpg',
          current_mood: ''
        },
        {
          title: 'Midsommar',
          director: 'Ari Aster',
          cinematographer: 'Pawel Pogorzelski',
          genre: 'Mystery, Horror',
          duration: 148,
          release_year: 2019,
          description: "A couple travel to Sweden to visit their friend's rural hometown for its fabled midsummer festival, but what begins as an idyllic retreat quickly devolves into an increasingly violent and bizarre competition at the hands of a pagan cult.'",
          starring: 'Florence Pugh, Jack Reynor, William Jackson Harper, Will Poulter',
          awards: 'EDA Female Focus Award Best Breakthrough Performance, AFCA Awards Breakthrough Artist Award, CinEuphoria Top Ten of the Year - Audience Award, COFCA Award Best Actress, DFCS Award Breakthrough Lead, Fangoria Chainsaw Awards Best Wide-Release Film & Best Director & Best Screenplay & Best Score & Best Kill, Golden Carp Film Award - International Best Production Design, Pauline Kael Breakout Award, Fright Meter Awards Best Director & Best Costume Design, GAFCA Award Breakthrough Award Winner, Gold Derby Film Award Breakthrough Performer, Golden Schmoes Awards Trippiest Movie of the Year, Sierra Award Best Horror/Sci-Fi Film, ALFS Awards British/Irish Actress of the Year, Audience Award Room Service, NBR Award Top Ten Independent Films, NDFS Award Best Actress, Odyssey Award Breakthrough Star & Best Cinematography, OAFFC Award Breakthrough Performance, SDFCS Award Breakthrough Artist, SBIFF Virtuoso Award, Yoga Award Worst Foreign Film',
          image1: 'midsommar1.jpg',
          image2: 'midsommar2.jpg',
          image3: 'midsommar3.jpg',
          current_mood: ''
        },
        {
          title: 'Portrait of a Lady on Fire',
          director: 'Céline Sciamma',
          cinematographer: 'Claire Mathon',
          genre: 'Lgbtq+, Romance',
          duration: 122,
          release_year: 2019,
          description: "France, 1770. Marianne, a painter, is commissioned to do the wedding portrait of Héloïse, a young woman who has just left the convent. Héloïse is a reluctant bride to be and Marianne must paint her without her knowing. She observes her by day, to paint her secretly",
          starring: 'Adèle Haenel, Noémie Merlant',
          awards: 'EDA Female Focus Award Best Woman Director, Bodil Awards Best Non-American Film, BSFC Award Best Cinematography, Cannes Film Festival Best Screenplay & Queer Palm, CIFF Award Best Feature, Chlotrudis Awards Best Movie & Best Cinematography, CinEuphoria Awards Best Duo - International Competition & Top Ten of the Year - International Competition, César Awards France Best Cinematography, Danish Film Awards Best Non-English Language Film, DIFF Rare Pearl Award, DFCC Awards Best Film, European Film Award European Screenwriter, Golden Carp Film Award - International Best Performance by an Actress in a Supporting Role, Film by the Sea International Film Festival Best French Language Film, FFCC Award Best Foreign Language Film & Best Director, GALECA: The Society of LGBTQ Entertainment Critics - Dorian Award LGBTQ Film of the Year & Visually Striking Film of the Year, GWNYFCA Award Best Cinematography, Hamburg Film Festival Art Cinema Award Best Feature, ICS Cannes Awards Palme d’Or & Best Supporting Actress & Best Director, INOCA Awards Best Cinematography, Italian National Syndicate of Film Journalists Best Supporting Actress, Key West Film Festival Best LGBTQ Film, Ljubljana LGBT Film Festival - Pink Dragon Audience Award, ALFS Award Foreign Language Film of the Year, LFW Award Best Acting, LAFCA Award Best Cinematography, Lumiere Awards France Best Actress & Best Cinematography, Melbourne International Film Festival Best Narrative Feature, NBR Award Top Five Foreign Language Films, NSFC Award Best Cinematography, NMFC Award Best Actress, NYFCC Award Best Cinematographer, NYFCO Award Best Foreign Language Film, Norwegian Film Critics Award, Prêmio Guarani Best Foreign Film, Felix Award Best Fiction Film, Sant Jordi Awards Best Foreign Film, SESC Film Festival Brazil Best Foreign Film & Best Foreign Director, WFCC Award Best Movie About Women & Best Foreign Film by or About Women.',
          image1: 'portrait1.jpg',
          image2: 'portrait2.jpg',
          image3: 'portrait3.jpg',
          current_mood: ''
        },
        {
          title: 'Enter The Void',
          director: 'Gaspar Noe',
          cinematographer: 'Benoît Debie',
          genre: 'Drama, Fantasy',
          duration: 161,
          release_year: 2009,
          description: 'This psychedelic tour of life after death is seen entirely from the point of view of Oscar (Nathaniel Brown), a young American drug dealer and addict living in Tokyo with his prostitute sister, Linda (Paz de la Huerta). When Oscar is killed by police during a bust gone bad, his spirit journeys from the past -- where he sees his parents before their deaths -- to the present -- where he witnesses his own autopsy -- and then to the future, where he looks out for his sister from beyond the grave.',
          starring: 'Cyril Roy, Nathaniel Brown, Paz de la Huerta, Masato Tanno',
          awards: 'International Cinematographer’s Film Festival Winner, Narcisse Award Best Feature Film, Catalonian International Film Festival Best Cinematography & Special Prize of the Jury',
          image1: 'void1.jpg',
          image2: 'void2.jpg',
          image3: 'void3.jpg',
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
      reviews = Review.create([
        {
          rating: 4,
          comment: 'AWESOME!!!!!',
          movie: Movie.first,
          user: User.first
        },
        {
          rating: 4.5,
          comment: 'WOULD WATCH AGAIN!!!!',
          movie: Movie.last,
          user: User.first
        },
        {
          rating: 5,
          comment: 'REALLY ENJOYED IT!!!!',
          movie: Movie.first,
          user: User.last
        },
        {
          rating: 3.5,
          comment: 'It was okay',
          movie: Movie.last,
          user: User.last
        },
        {
          rating: 5,
          comment: 'PERFECT',
          movie: Movie.first,
          user: User.last
        },    
      ])
    
    
    puts 'Done seeding!!!!!!!!!!'

