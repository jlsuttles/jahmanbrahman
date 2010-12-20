# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

User.create({
  :email    => "jlsuttles@gmail.com",
  :login    => "admin",
  :password => "Password1",
  :password_confirmation => "Password1",
  :role     => "admin",
})

About.create([
  { :title => 'Jahman Brahman',
    :description => '<p>Jahman Brahman is a genre bending band based out of Columbus, Ohio. With a diverse lineup of unique personalities, they attempt to leave no musical stone unturned. From December 2005 until December 2008 Jahman Brahman was four members: Casey Chanatry on guitar/vocals, Justin Brown on guitar/vocals, Nathan Brown on bass/vocals, and Rowdy Keelor on drums/vocals. With the recent addition of Josh Loffer on keys, Jahman Brahman has finally taken its complete shape. Wasting no time, they have been busy playing action-packed shows all around Central Ohio. 
                    </p><p>With a love for both songwriting and improvisation, JB shows satisfy the masses with epic musical adventures as well as songs anyone could sing along to. Their influences range from Notorious B.I.G. to Ekoostik Hookah. From Barry White to Carlos Santana; from classic rock to electronica. A Jahman Brahman show offers a high-energy, interactive experience for all.'},
  { :title => 'Jahman Brahman Family',
    :description => '<p>Jahman Brahman is far more than five people, it is a family. It is the people they see at every show and the new friends they make every time. It is the people who travel with them and the people they travel to play for. With a mission to spread positive energy to as many people as possible, things are starting to come together for Jahman Brahman. We will be working hard to make each show a special party, but can\'t do it without you all! Spread the word and we will see you there.
                    </p>'}
  ])


ContactInformation.create([
  { :title => 'Email',
    :description => 'JahmanBrahman@gmail.com'},
  { :title => 'Phone',
    :description => '(937) 554-9194'}
  ])

NewsStory.create([
  { :title => 'October 23 Double CD Release Party',
    :description => "This just in: October 23rd at The Newport is now scheduled to be a double CD release party with The Werks releasing their set from The Werk Out as a live CD. We have our CD's ordered and a few close friends will hopefully be picking them up from New Jersey Oct. 22nd. See you at The Newport!"},
  { :title => 'Conquering the Crest',
    :description => 'A look back at a student band as they continue to grow outside of Ohio. http://uweekly.com/newsmag/08-18-2010/15361/conquering-the-crest'},
  { :title => 'Greetings from Weaverville, North Carolina!',
    :description => "<p>We have been working hard in our new retreat harnessing the power of the mountains and thunder to bring y'ins (a new word we learned down here, equivalent to y'all) some special new tunes when we make it back to Ohio this weekend.  One tune reminds us of a vast landscape waiting to be filled (think paint by numbers), another of a New Orleans get down, another of a mystical journey into the land of cosmic castles.  Needless to say, we are refreshed and eager to play this new stuff live!
                    </p><p>Here is a quick update of what each member is doing:
                    </p><p>- Rowdy has found a dream job working at a hand drum/exotic instrument store called Skinny Beats in downtown Asheville.  He lives with his lover in a nice cottage about a mile from downtown.  He is learning African rhythms as well as tuning/wrapping drum heads. Very exciting stuff for this guy.
                    </p><p>- Nate transferred to a plasma center down here and even got a raise!  He is working to wow you with his new slap funk technique and is very please with the new beer selection at our local Ingles.  Nate lives in the Weaverville mountain retreat with the other three band members, Justin, Josh, and Casey.
                    </p><p>- Justin is once again in charge of today's youth at Asheville City Schools! He starts in October and until then he is taking this time to change old habits and write new songs.  Listen for a new vocal style (think Stevie Ray Mayer) and improved chops.
                    </p><p>- Josh is head over heels in love with a girl and the music is pouring out of him.  We even caught him singing!  Big changes for this guy.  Listen for a classical twist in his playing as well as some more synth slay-age.  
                    </p><p>- Casey is taking well to the new peaceful surroundings and using the free time to work on his craft.  Jam sessions with local musicians have helped hone his style. He is even picking up some dance moves from some local guitarists! No job yet but he is applying at various music stores and plans to continue teaching lessons."}
   
  ])

