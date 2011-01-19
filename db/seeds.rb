User.create({
  :email    => "jahmanbrahman@gmail.com",
  :login    => "admin",
  :password => "password",
  :password_confirmation => "password",
  :role     => "admin",
})

About.create([
  { :title => "Jahman Brahman",
    :description => "Jahman Brahman is a five-member collaboration originating from Columbus, Ohio in 2003, and currently residing in the mountains of Asheville, NC. The musical intuition of each member overcomes the restrictions of any particular genre as they pioneer the musical trail with a sound completely their own. The name Jahman Brahman emerged from each member’s goal to achieve the ultimate state of musical cohesion; each instrument connected to one another to create a piece of music from the heart of one. They’ve described their particular style as shred ‘n’ flow, a dynamic sound with a wide breath of influence, but a focus on rich, fluid, progressions of energy. Providing the low end, Nate “Brother” Brown brings his own style of funked out and super fresh bass grooves. Layered on top are Josh Loffer’s transcendent key strokes and myriad of effects, which highlight Justin Brown’s full and conscious lyrics. Drummer Rowdy Keelor gives the sound its steady concrete pulse providing the heartbeat for Casey Chanatry's riveting guitar-work. Combined, Jahman Brahman leaves the listener with a message on life, love, and the wonders experienced being part of an extraordinary musical family. Each member holds a unique passion toward many different audio paths, with influences ranging from classic rock to electronica; from punk to jazz. Instead of conforming, they ascend music through the coalescence of their diverse styles, taking risks that unfold into powerful jams and creative compositions."
  },
])


ContactInformation.create([
  { :title => 'Email',
    :description => 'JahmanBrahman@gmail.com'
  },
  { :title => 'Phone',
    :description => '(937) 554-9194'
  }
])

NewsStory.create([
  { :title => 'October 23 Double CD Release Party',
    :description => "This just in: October 23rd at The Newport is now scheduled to be a double CD release party with The Werks releasing their set from The Werk Out as a live CD. We have our CD's ordered and a few close friends will hopefully be picking them up from New Jersey Oct. 22nd. See you at The Newport!"},
  { :title => 'Conquering the Crest',
    :description => 'A look back at a student band as they continue to grow outside of Ohio. http://uweekly.com/newsmag/08-18-2010/15361/conquering-the-crest'},
  { :title => 'Greetings from Weaverville, North Carolina!',
    :description => "<p>We have been working hard in our new retreat harnessing the power of the mountains and thunder to bring y'ins (a new word we learned down here, equivalent to y'all) some special new tunes when we make it back to Ohio this weekend.  One tune reminds us of a vast landscape waiting to be filled (think paint by numbers), another of a New Orleans get down, another of a mystical journey into the land of cosmic castles.  Needless to say, we are refreshed and eager to play this new stuff live!
                    </p><p>Here is a quick update of what each member is doing:
                    </p><p>Rowdy has found a dream job working at a hand drum/exotic instrument store called Skinny Beats in downtown Asheville.  He lives with his lover in a nice cottage about a mile from downtown.  He is learning African rhythms as well as tuning/wrapping drum heads. Very exciting stuff for this guy.
                    </p><p>Nate transferred to a plasma center down here and even got a raise!  He is working to wow you with his new slap funk technique and is very please with the new beer selection at our local Ingles.  Nate lives in the Weaverville mountain retreat with the other three band members, Justin, Josh, and Casey.
                    </p><p>Justin is once again in charge of today's youth at Asheville City Schools! He starts in October and until then he is taking this time to change old habits and write new songs.  Listen for a new vocal style (think Stevie Ray Mayer) and improved chops.
                    </p><p>Josh is head over heels in love with a girl and the music is pouring out of him.  We even caught him singing!  Big changes for this guy.  Listen for a classical twist in his playing as well as some more synth slay-age.  
                    </p><p>Casey is taking well to the new peaceful surroundings and using the free time to work on his craft.  Jam sessions with local musicians have helped hone his style. He is even picking up some dance moves from some local guitarists! No job yet but he is applying at various music stores and plans to continue teaching lessons."}
   
  ])

Venue.create([
  { :name => 'Venue1', :address_attributes => {:line1 => '19 Wavecrest Ave.', :city => 'Venice', :state => 'CA', :zip => '90291'} },
  { :name => 'Venue2', :address_attributes => {:line1 => '19 Wavecrest Ave.', :city => 'Venice', :state => 'CA', :zip => '90291'} }
  ])

Band.create([
  { :name => 'Band1' },
  { :name => 'Band2' }
  ])
