#!/usr/bin/perl

$html = 0 ;
$continuous = 0 ;
$delay = 3 ;
$maxTries = 1000 ;

$continuous = 1 if( $html && $ENV{QUERY_STRING} =~ /continuous/ ) ;
$| = 1 if( $continuous ) ;

@cookies = () ;
$cookie = "" ;
while(<DATA>){ 
   if( /^%%$/ ){ push(@cookies,$cookie) ; $cookie = "" ; }
   else { $cookie .= $_ ; }
   }
$cookiesLeft = $#cookies + 1 ;
srand(time ^ $$) ;

print "Content-type: text/plain\n\n" if( $html ) ;
do {
   $try = $maxTries ;
   while( $cookieTaken{$index=int(rand($#cookies) + 0.3)} ) {
      exit if( --$try <= 0 ) ;
      }
   $cookieTaken{$index} = 1 ; $cookiesLeft-- ;
   print $cookies[int(rand($#cookies) + 0.3)] ;
   sleep($delay) if( $continuous ) ;
   print "\n\n"  if( $continuous ) ;
   } while( $continuous && $cookiesLeft > 0 ) ;

__END__
What is vice today may be virtue tomorrow.
%%
Let me play with it first and I'll tell you what it is later.
- Miles Davis
%%
You will be successful in your work.
%%
In the beginning i was made.  I didn't ask to me made.  No one consulted
me or considered my feelings in this matter.  But if it brought some
passing fancy to some lowly humans as they haphazardly pranced their
way through life's mournful jungle then so be it.
- Marvin the Paranoid Android
%%
I just thought of something funny...your mother.
- Cheech Marin
%%
Lack of skill dictates economy of style.
- Joey Ramone
%%
Life is wasted on the living.
- Zaphod Beeblebrox IV
%%
Youth is wasted on the young.
- George Bernard Shaw
%%
The life of a repo man is always intense.
%%
You will soon meet a tall dark handsome stranger.
%%
!xob XINEX siht edisni kcuts m'I ,pleH
%%
I like the future, I'm in it.
%%
If you don't watch it, you're going to catch something.
%%
To be, or what?
- Sylvester Stallone
%%
Give a man a fish, and you feed him for a day.  Teach a man to fish, and he'll
invite himself over for dinner.
%%
I waited and waited, and when nobody called, I knew it was from you.
%%
A stitch in time saves nine.
%%
There's a bug somewhere in your code.
%%
Een schip op het strand is een baken in zee.
[A ship on the beach is a lighthouse to the sea.]
- Dutch Proverb
%%
Faire de la bonne cuisine demande un certain temps.  Si on vous fait attendre,
c'est pour mieux vous servir, et vous plaire.
[Good cooking takes time.  If you are made to wait, it is to serve you better,
 and to please you.]
Menu of Restaurant Antoine, New Orleans
[Also, what we're going to be telling our customers]
%%
Adde parvum parvo magnus acervus erit.
[Add little to little and there will be a big pile.]
- OVID
%%
He'll sit here and he'll say, "Do this!  Do that!"  And nothing will happen.
- Harry S. Truman, on presidential power
%%
Practice is the best of all instructors.
- Publilius
%%
Experience is a dear teacher, but fools will learn at no other.
- Poor Richard's Almanac
%%
The author should gaze at Noah, and ... learn, as they did in the Ark, to crowd
a great deal of matter into a very small compass.
- Sydney, Smith, Edinburgh Review
%%
The hypothesis:
Amid a wash of paper, a small number of documents become the critical pivots
around which every project's management revolves.  These are the manager's
chief personal tools.
- Frederick P. Brooks, Jr., The Mythical Man Month
%%
There is nothing in this world constant but inconstancy.
- Swift
%%
It is common sense to take a method and try it.  If it fails, admit it frankly
and try another.  But above all, try something.
- Franklin D. Roosevelt
%%
Things are always at their best in the beginning.
- Pascal
%%
That is the key to history.  Terrific energy is expended -- civilizations are
built up -- excellent institutions devised; but each time something goes wrong.
Some fatal flaw always brings the selfish and cruel people to the top, and then
it all slides back into misery and ruin.  In fact, the machine conks.  It seems
to start up all right and runs a few yards, and then it breaks down.
- C. S. Lewis
%%
A good workman is known by his tools.
%%
I can call spirts from the vasty deep.
Why so can I, or so can any man; but will they come when you do call for them?
- Shakespeare, king Henry IV, Part I
%%
None love the bearer of bad news.
- Sophocles
%%
How does a project get to be a year late? ... One day at a time.
- Frederick Brooks, Jr., The Mythical Man Month
%%
What we do not understand we do not possess.
- Goethe
%%
The tar pit of software engineering will continue to be sticky for a long time
to come.  One can expect the human race to continue attempting systems just
within or just beyond our reach; and software systems are perhaps the most
intricate and complex of man's handiworks.  The management of this complex
craft will demand our best use of new languages and systems, our best
adaptation of proven engineering management methods, liberal doses of common
sense, and ... humility to recognize our fallibility and limitations.
- Frederick Brooks, Jr., The Mythical Man Month
%%
All programmers are optimists.  Perhaps this modern sorcery especially attracts
those who believe in happy endings and fairy godmothers.  Perhaps the hundreds
of nitty frustrations drive away all but those who habitually focus on the end
goal.  Perhaps it is merely that computers are young, programmers are younger,
and the young are always optimists.  But however the selection process works,
the result is indisputable:  "This time it will surely run," or "I just found
the last bug."
- Frederick Brooks, Jr., The Mythical Man Month
%%
The flow chart is a most thoroughly oversold piece of program documentation.
- Frederick Brooks, Jr., The Mythical Man Month
%%
The first 90% of a project takes 90% of the time.  The last 10% of a project
takes 90% of the time.
%%
At first sight, the idea of any rules or principles being superimposed on the
creative mind seems more likely to hinder than to help, but this is quite untrue
in practice.  disciplined thinking focuses inspiration rather than blinkers it.
- G. L. Glegg, The Design of Design
%%
"GOTO statement considered harmful"
- E. W. Dijkstra, title to a letter in CACM 11, 3 (March, 1968)
%%
The meek shall inherit the earth.  The rest of us will go to the stars.
%%
The emperor has no clothes.
%%
Here at Controls, we have one chief for every Indian.
%%
The clothes have no emperor.
- C. A. Hoare, about Ada.
%%
There will always be survivors.
- Robert Heinlen
%%
The programmer, like the poet, works only slightly removed from pure thought-
stuff.  He builds his castles in the air, from air, creating by exertion of the
imagination.  Few media of creation are so flexible, so easy to polish and
rework, so readily capable of realizing grand conceptual structures.
- Frederick Brooks, Jr., The Mythical Man Month
%%
Mind your own business, Mr. Spock.  I'm sick of your halfbreed interference.
%%
A Puritan is someone who is deathly afraid that someone somewhere is having fun.
%%
A foolish consistency is the hobgoblin of little minds.
- Samuel Johnson
%%
A gift of flower will soon be made to you.
%%
A liberal is someone too poor to be a capitalist and too rich to be a communist.
%%
A man forgives only when he is in the wrong.
%%
A professor is one who talks in someone else's sleep.
%%
University: A modern school where football is taught.
%%
Actors will happen in the best-regulated families.
%%
Admiration: Our polite recognition of another's resemblance to ourselves.
%%
We're fighting for this woman's honor, which is more than she ever did.
- Rufus T. Firefly, in "Duck Soup"
%%
It's not often that you get so much class entertainment outside your bedroom
window or outside your bedroom, period.
- Groucho Marx
%%
All that glitters has a high refractive index.
%%
Anybody can win, unless there happens to be a second entry.
%%
Been Transferred Lately?
%%
Beware of a tall dark man with a spoon up his nose.
%%
Blessed are they that run around in circles, for they shall be known as wheels.
%%
Angular momentum makes the world go round.
%%
Charity:  a thing that begins at home and usually stays there.
%%
Crazee Edeee, his prices are INSANE!!!
%%
Death:  to stop sinning suddenly.
%%
Do not underestimate the power of the Force.
%%
Don't eat yellow snow.    - Frank Zappa
%%
Don't force it, use a bigger hammer.
%%
Don't hit the keys so hard, it hurts.
%%
Drawing on my fine command of language, I said nothing.
%%
Every absurdity has a champion to defend it.
%%
Everything you know is wrong.     - The Firesign Theater
%%
Failure is more frequently from want of energy than want of capital.
%%
Finagle's Law:  The perversity of the universe tends toward a maximum.
%%
Flee at once, all is discovered.
%%
Genius is the talent of a man who is dead.
%%
God must love the common man; He made so many of them.
%%
Hackers of the world, unite!
%%
Dyslexics of the world, untie!
%%
He who hesitates is sometimes saved.
%%
His heart was yours from the first moment that you met.
%%
I like work; it fascinates me; I can sit and look at it for hours.
%%
I think we're all Bozos on this bus.
%%
I will never lie to you.
%%
I wish you humans would leave me alone.
%%
If God had wanted man to go around nude, He would have given him bigger hands.
%%
If God had wanted man to fly, He would have given him airline tickets.
%%
Ignore previous fortune.
%%
It is easier to fight for one's principles than to live up to them.
%%
Laugh, and the world ignores you.  Crying doesn't help either.
%%
Long life is in store for you.
%%
Love and scandal are the best sweeteners of tea.
%%
Love is in the offing.  Be affectionate to one who adores you.
%%
Many are called, few are chosen.  Fewer still get to do the choosing.
%%
Many are called, few volunteer.
%%
Might as well be frank, monsieur. It would take a miracle to get you out of
Casablanca.
%%
No one can feel as helpless as the owner of a sick goldfish.
%%
Now and then an innocent man is sent to the Legislature.
%%
Paranoia doesn't mean the whole world really isn't out to get you.
%%
Philosophy:  unintelligible answers to insoluble problems.
%%
Someone is unenthusiastic about your work.
%%
Stability itself is nothing else than a more sluggish motion.
%%
Sturgeon's Law:  Ninety percent of everything is crud.
%%
Take care of the luxuries and the necessities will take care of themselves.
%%
The Ranger isn't gonna like it, Yogi.
%%
The Tree of Learning bears the noblest fruit, but noble fruit tastes bad.
%%
The decision doesn't have to be logical, it is unanimous.
%%
The time is right to make new friends.
%%
The universe is laughing behind your back.
%%
There is no such thing as pure pleasure; some anxiety always goes with it.
%%
Time is nature's way of making sure that everything doesn't happen at once.
%%
To think is human, to compute, divine.
%%
Today is the last day of your life so far.
%%
Try the Moo Shu Pork.  It is especially good today.
%%
What is worth doing is worth the trouble of asking somebody to do it.
%%
What this country needs is a good five cent microcomputer.
%%
Words must be weighed, not counted.
%%
You are going to have a new love affair.
%%
You have a tendency to feel you are superior to most computers.
%%
You have been selected for a secret mission.
%%
You will be recognized and honored as a community leader.
%%
You will be surprised by a loud noise.
%%
You will feel hungry again in another hour.
%%
You'll be called to a post requiring ability in handling groups of people.
%%
Your boss is thinking about you.
%%
If something's not worth doing, it's not worth doing well.
%%
When everything has been seen to work, all integrated, you have four more months
of work to do.
- C. Portman of ICL Ltd.
%%
We stand today at a crossroads:  One path leads to despair and utter
hopelessness.  The other leads to total extinction.  Let us hope we have the
wisdom to make the right choice.
- Woody Allen
%%
Some people hope to achieve immortality through their works or their children.
I would prefer to achieve it by not dying.
- Woody Allen
%%
Nothing is done until nothing is done.
%%
The fourth law of thermodynamics:
The perversity of the universe tends towards a maximum.
%%
There are no saints, only unrecognized villains.
%%
There are no bugs, only unrecognized features.
%%
It may soon be time for you to look for a new line of work.
%%
Your project will be late.
%%
The CS Sage says:  Seek new employment prior to the imposition of performance
penalties on your project.
%%
You will see the light at the end of the tunnel; unfortunately, it will be
the light of an oncoming freight train.
%%
What is virtue today may be vice tomorrow.
%%
"The country needs and, unless I mistake its temper, the contry demands bold,
persistent experimentation."
- Franklin Delano Roosevelt
%%
Money talks...but all mine keeps saying is "goodbye"
%%
"No, it's 'Blessed are the meek.'  I think that's nice, 'cause really they have
a hell of a time."  - someone in the crowd in "The Life of Brian"
%%
"I think he said 'Blessed are the cheesemakers.'"  "Nonsense, he was obviously
referring to all manafacturers of dairy products." 
- two people in the crowd in "The Life of Brian"
%%
How do you make a small fortune in Texas oil?

Start with a big one.
%%
What can a pigeon do that a west Texas oil man can't do anymore?
A pigeon can still make a deposit on a new Mercedes.
%%
How many WASPs does it take to change a light bulb?
Two.  One to change the bulb and one to mix the drinks.
%%
How many psychiatrists does it take to change a light bulb?
Only one, but it takes a really long time and the light bulb has to want
to change.
%%
How many Californians does it take to change a light bulb?
Four.  One to change the bulb and three to share the experience.
%%
How many programmers does it take to change a light bulb?
None.  It's a hardware problem.
%%
To program anything that is programmable is obsession.
%%
Ill play with it first and tell you what it is later.
- Miles Davis
%%
I was in this prematurely air conditioned supermarket and there were all 
these aisles and there were these bathing caps you could buy that had these 
kind of Fourth of July plumes on them that were red and yellow and blue and
I wasn't tempted to buy one but I was reminded of the fact that I had been
avoiding the beach.
- Lucinda Childs (Philip Glass: Einstein On The Beach)
%%
Nothing is true. Everything is permitted.
- Hassan I Sabbah

Bullshit.
- Karl
%%
Don't let your mouth write no check that your tail can't cash.
- Bo Diddley
%%
The opposite of a correct statement is a false statement. But the opposite of a
profound truth may well be another profound truth.
- Niels Bohr
%%
Just because everything is different doesn't mean anything has changed.
- Southern California Oracle
%%
The most merciful thing in the world ... is the inability of the human mind to
correlate all its contents.
- H. P. Lovecraft
%%
Take what you can use and let the rest go by.
- Ken Kesey
%%
Its not the size of the ship, its the size of the waves.
- Little Richard
%%
I never loved another person the way I loved myself.
- Mae West
%%
Sometimes a cigar is just a cigar.
- Sigmund Freud
%%
When choosing between two evils I always like to take the one I've never tried
before.
- Mae West
%%
Her life was saved by rock and roll.
- Lou Reed
%%
I regret to say that we of the FBI are powerless to act in cases of oral-genital
intimacy, unless it has in some way obstructed interstate commerce.
- J. Edgar Hoover
%%
"Honest Officer, had I known my health stood in jeprody I would never had lit
one."     - Maxim of the Hells Angels
%%
It is a rather pleasent experience to be alone in a bank at night.
- Willie Sutton
%%
Never invest your money in anything that eats or needs painting.
- Billy Rose
%%
The rich will do anything for the poor but get off their backs.
- Karl Marx

If Karl, instead of writing a lot about capital, had made a lot of
it ... it would have been much better.
- Karl Marx's Mother

(Sysop's note: I think this is a joke.  Can anyone verify it?)
%%
If you think the United States has stood still, who built the
largest shopping center in the world?
- Richard M. Nixon
%%
When I sell liquor, its called bootlegging; when my patrons serve
it on Lake Shore Drive, its called hospitality.
- Al Capone
%%
Anything anybody can say about America is true.
- Emmett Grogan
%%
Tip the world over on its side and everything loose will land in Los Angeles.
- Frank Lloyd Wright
%%
If you've seen one city slum, you've seen them all.
- Spiro Agnew
%%
If you've seen one redwood, you've seen them all.
- Ronald Reagan
%%
If you've seen one Grand Canyon, you've seen them all.
- a member of the Monkey Wrench Gang
%%
He who shits on the road will meet flies on his return.
- South African Saying
%%
You can't underestimate the power of fear.
- Tricia Nixon
%%
The whole earth is in jail and we're plotting this incredible jailbreak.
- Wavy Gravy
%%
The end move in politics is always to pick up a gun.
- Buckminster Fuller
%%
Things are more like they are now than they ever were before.
Dwight D. Eisenhower
%%
College isn't the place to go for ideas.
- Hellen Keller
%%
Politicians should read science fiction, not westerns and detective stories.
- Arthur C. Clarke
%%
America, how can I write a holy litany in your silly mood?
- Allen Ginsberg
%%
It is necessary for me to establish a winner image. Therefore, I have to beat
somebody.
- Richard M. Nixon
%%
Any smoothly functioning technology will have the appearence of magic.
- Arthur C. Clarke
%%
Justice is incedental to law and order.
- J. Edgar Hoover
%%
Military intelligence is a contradiction in terms.
- Groucho Marx
%%
The first duty of a revolutionary is to get away with it.
- Abbie Hoffman
%%
Stay out of the road, if you want to grow old.
- Pink Floyd
%%
Here I am, fifty-eight, and I still don't know what I want to be when I grow up.
- Peter Drucker
%%
How can you be two places at once when youre not anywhere at all?
- Firesign Theater
%%
I think that God in creating man somewhat overestimated his ability.
- Oscar Wilde
%%
We are what we pretend to be.
- Kurt Vonnegut, JR
%%
We are all in the gutter, but some of us are looking at the stars.
- Oscar Wilde
%%
The race is not always to the swift, nor the battle to the strong -
but thats the way to bet.
- Damon Runyon
%%
I could prove God statistically.
- George Gallup
%%
My religion consists of a humble admiration of the illimitable superior
spirit who reveals himself in the slight details we are able to perceive
with our frail and feeble mind.
- Albert Einstein
%%
Real wealth can only increase.
- R. Buckminster Fuller
%%
Anyone can hate. it costs to love.
- John Williamson
%%
In the province of the mind, what one believes to be true either is true
or becomes true.
- John Lilly
%%
Time is an illusion perpetrated by the manufacturers of space.
- Graffiti
%%
The most incomprehensible thing about the world is that it is comprehensible.
- Albert Einstein
%%
Nobody can be exactly like me. Even I have trouble doing it.
- Tallulah Bankhead
%%
A physicist is an atoms way of knowing about atoms.
- George Wald
%%
Dont lose
Your head
To gain a minute
You need your head
Your brains are in it.
- Burma Shave
%%
It was always thus; and even if 'twere not, 'twould inevitably have been
always thus.
- Dean Lattimer
%%
Burnt Sienna. Thats the best thing that ever happened to Crayolas.
- Ken Weaver
%%
We don't know who discovered water, but we are certain it wasn't a fish.
- John Culkin
%%
Try to be the best of what you are, even if what you are is no good.
- Ashleigh Brilliant
%%
I waited and waited, and when no message came, I knew it must have been from
you.
- Ashleigh Brilliant
%%
Please don't lie to me, unless youre absolutely sure Ill never find out the
truth.
- Ashleigh Brilliant
%%
Please don't ask me what the score is, Im not even sure what the game is.
- Ashleigh Brilliant
%%
I either want less corruption, or more chance to participate in it.
- Ashleigh Brilliant
%%
If you can't learn to do it well, learn to enjoy doing it badly.
- Ashleigh Brilliant
%%
I don't have any solution, but I certainly admire the problem.
- Ashleigh Brilliant
%%
Maybe Im lucky to be going so slowly, because I may be going in the 
wrong direction.
- Ashleigh Brilliant
%%
By doing just a little every day, I can gradually let the task completely
overwhelm me.
- Ashleigh Brilliant
%%
To be sure of hitting the target, shoot first, and call whatever you hit the
target.
- Ashleigh Brilliant
%%
America is the only country that went from barbarism to decadence without
civilization in between.
- Oscar Wilde
%%
The flush toilet is the basis of Western civilization.
- Alan Coult
%%
If the aborigine drafted an IQ test, all of Western civilization would
presumably flunk it.
- Stanley Garn
%%
The world looks as if it has been left in the custody of trolls.
- Father Robert F. Capon
%%
Sure there are dishonest men in the local government. But there are dishonest
men in the national government too.
- Richard M. Nixon
%%
We are going to have peace even if we have to fight for it.
- Dwight D. Eisenhower
%%
If we make peaceful revolution impossible, we make violent revolution
inevitiable.
- John F. Kennedy
%%
"Contrariwise", continued Tweedledee, "If it was so, it might be; and if
it were so, it would be; but as it isn't, it ain't. Thats logic."
- Lewis Carroll
%%
It takes a long time to understand nothing.
- Edward Dahlberg
%%
To know the world one must construct it.
- Cesare Pavese
%%
Eeny Meeny, Jelly Beanie, the spirits are about to speak.
- Bullwinkle Moose
%%
The mistake you make is in trying to figure it out.
- Tenessee Williams
%%
An object never serves the same function as its image- or its name.
- Rene Magritte
%%
All I kin say is when you finds yo'self wanderin' in a peach orchard,
ya don't go lookin' for rutabagas.
- Kingfish
%%
He who wonders discovers that this in itself is wonder.
- M. C. Escher
%%
Law of Computability Applied to Social Sciences:
 If at first you don't suceed, transform your data set.
%%
Laws of Computer Programming
(1) Any given program, when running, is obsolete.
(2) Any given program costs more and takes longer.
(3) If a program is useful, it will have to be changed.
(4) If a program is useless, it will have to be documented.
(5) Any given program will expand to fill all available memory.
(6) The value of a program is porportional to the 
    weight of its output.
(7) Program complexity grows until it exceeds the capability of the
    programmer who must maintain it.
(8) Make it possible for programmers to write programs in
    English, and you will find that programmers cannot write
    in English.
- SIGPLAN Notices, Vol 2 No 2
%%
When more and more people are thrown out of work, unemployment results.
- Calvin Coolidge
%%
The first rule of intelligent tinkering is to save all the parts.
- Paul Erlich
%%
If A equals success, then the formula is:
   A= X + Y + Z
X is work. Y is play. Z is keep your mouth shut.
- Albert Einstein
%%
Sex is hereditary. If your parents never had it, chances are you wont either.
- Joseph Fischer
%%
Fourth Law of Thermodymanics:
 If the probability of success is not almost one, then it is damn near zero.
- David Ellis
%%
Frouds Law:
 A transistor protected by a fast acting fuse will protect the fuse by blowing
 first.
%%
Fullers Law of Cosmic Irreversibility:
 1 Pot T == 1 Pot P
 1 Pot P != 1 Pot T
- R. Buckminster Fuller
%%
The meek shall inherit the earth, but not its mineral rights.
- J. Paul Getty
%%
Give a small boy a hammer and he will find that everything he encounters needs
pounding.
- Abraham Kaplan
%%
The fault lies not with our technologies but with our systems.
- Roger Levian
%%
Under any conditions, anywhere, whatever you are doing, there is some ordinance
under which you can be booked.
- Robert D. Sprecht (Rand Corp)
%%
Thoreau's Law:
 If you see a man approaching you with the obvious intent of doing you good,
 you should run for your life.
%%
Vique's Law:
 A man without religion is like a fish without a bicycle.
%%
If builders built buildings the way programmers wrote programs,
then the first woodpecker that came along would destroy civilization.
- Gerald Weinberg  (sysop's note: bull)
%%
Zimmerman's Law of Complaints:
Nobody notices when things go right.
%%
Real knowledge is to know the extent of ones ignorance.
- Confucius
%%
Whoso diggeth a pit shall fall therein.
Book of Proverbs
%%
It usually takes more than three weeks to prepare a good impromptu speech.
- Mark Twain
%%
The unnatural, that too is natural.
- Goethe
%%
I used to be indecisive; now Im not sure.
- Graffiti
%%
I had a monumental idea this morning, but I didn't like it.
- Samuel Goldwyn
%%
He hasn't one redeeming vice.
- Oscar Wilde
%%
I'd give my right arm to be ambidextrous.
- Graffiti
%%
(To Walter Cronkite):
"Well Walter, I believe that the Good Lord gave us a finite number 
of heartbeats and I'm damned if I'm going to use up mine running 
up and down a street"
- Neil Armstrong
%%
"You doubted Me," God tells the Lawgiver [Moses], "But I forgave 
you that doubt. You doubted your own self and failed to believe 
in your own powers as a leader, and I forgave you that also. But 
you lost faith in these people and doubted the divine possibilities 
of Human Nature. THIS loss of faith makes it impossible for 
you to enter the Promised Land."
- The Midrash
%%
" 'Martyrdom' is the only way a person can become famous without ability"
- George Bernard Shaw
%%
"Science has proof without any certainty. Creationists have certainty 
without any proof"
- Ashley Montague
%%
Birth, copulation and death.
That's all the facts when you come to brass tacks;
Birth, copulation and death.
- T. S. Elliot, Sweeney Agonistes (1932)
%%
"Make no little plans. They have no Magic to stir Men's blood."
- D. B. Hudson
%%
"Software suppliers are trying to make their software packages more
'user-friendly'.... Their best approach, so far, has been to take 
all the old brochures, and stamp the words, 'user-friendly' on the cover."
- Bill Gates, Pres., Microsoft, Inc.
%%
Bradley's Bromide:
If computers get too powerful, we can organize them into a committee...
 that will do them in.
%%
Civilization Law #1:
Civilization advances by extending the number of important operations
one can do without thinking about them.
%%
Ketterling's Law:
Logic is an organized way of going wrong with confidence.
%%
"Whenever 'A' attempts by law to impose his moral standards upon 'B',
'A' is most likely a scoundrel"
- H. L. Mencken
%%
"The government of the United States is not in any sense founded 
on the Christian Religion"
- George Washington
%%
"In every country and every age, the priest has been hostile to Liberty."
 - Thomas Jefferson
%%
"During almost fifteen centuries the legal establishment of Christianity has
been upon trial. What has been its fruits? More or less, in all places, pride
and indolence in the clergy; ignorance and servility in the laity,; in both,
superstition, bigotry, and persecution."
 - James Madison
%%
"Money, not morality, is the principle commerce of civilized nations"
 - Thomas Jefferson
%%
"We must all hang together, or we will surely all hang separately"
 - Benjamin Franklin
%%
"Where a new invention promises to be useful, it ought to be tried"
- Thomas Jefferson
%%
"Assuming that either the left wing or the right wing gained 
control of the country, it would probably fly around in circles"
- Pat Paulsen
%%
"An intellectual is someone whose mind watches itself"
- Albert Camus
%%
"Six years for possession of a cigarette?...I got six months for possession
of a deadly weapon!"
- cartoon by S. Harris
%%
The Swartzberg Test:
 The validity of a science is its ability to predict.
%%
"There is no choice before us. Either we must Succeed in providing 
the rational coordination of impulses and guts, or for centuries 
civilization will sink into a mere welter of minor excitements. 
We must provide a Great Age or see the collapse of the upward 
striving of the human race"
- Alfred North Whitehead
%%
"My own life has been spent chronicling the rise and fall of 
human systems, and I am convinced that we are terribly 
vulnerable.... We should be reluctant to turn back upon the 
frontier of this epoch. Space is indifferent to what we 
do; it has no feeling, no design, no interest in whether 
or not we grapple with it. But we cannot be indifferent to 
space, because the grand, slow march of intelligence has brought 
us, in our generation, to a point from which we can explore and 
understand and utilize it. To turn back now would be to deny 
our history, our capabilities."
- James A. Michener
%%
"What does it take for Americans to do great things; to go 
to the moon, to win wars, to dig canals linking oceans, to 
build railroads across a continent? In independent thought 
about this question, Neil Armstrong and I concluded that it 
takes a coincidence of four conditions, or in Neil's view, 
the simultaneous peaking of four of the many cycles of American 
life. First, a base of technology must exist from which to do 
the thing to be done. Second, a period of national uneasiness 
about America's place in the scheme of human activities must 
exist. Third, some catalytic event must occur that focuses 
the national attention upon the direction to proceed. Finally, 
an articulate and wise leader must sense these first three 
conditions and put forth with words and action the great thing 
to be accomplished. The motivation of young Americans to do what 
needs to be done flows from such a coincidence of conditions.... 
The Thomas Jeffersons, The Teddy Roosevelts, The John Kennedys 
appear. We must begin to create the tools of leadership which 
they, and thier young frontiersmen, will require to lead us 
onward and upward."
- Dr. Harrison H. Schmidt, Sen., New Mexico
%%
"What do you call a boomerang that doesn't work? A stick!"
 - Bill Kirchenbaum, comedian -
%%
"To err is human, to compute divine. Trust your computer but not its programmer"
- Morris Kingston
%%
"I've seen many politicians paralyzed in the legs as myself, but I've seen more
of them who were paralyzed in the head"
- George Wallace
%%
"You don't have to explain something you never said"
- Calvin Coolidge
%%
"A little caution outflanks a large cavalry"
- Bismarck
%%
"A billion here, a billion there, sooner or later it adds up to real money"
- Everett Dirksen
%%
"The personal computer market is about the same size as the 
total potato chip market. Next year it will be about half the 
size of the pet food market and is fast approaching the total 
worldwide sales of pantyhose"
 - James Finke, Pres., Commodore Int'l Ltd.(1982)
%%
"I like a man who grins when he fights."
- Winston Churchill
%%
"There are a lot of lies going around.... and half of them are true."
- Winston Churchill
%%
"Man will occasionally stumble over the truth, but most times he will pick
himself up and carry on..."
- Winston Churchill
%%
"God runs electromagnetics by wave theory on Monday, Wednesday, 
and Friday, and the Devil runs them by quantum theory on Tuesday, 
Thursday, and Saturday."
- William Bragg
%%
"Pioneering basically amounts to finding new and more horrible ways to die"
- John W. Campbell
%%
"That man is richest whose pleasures are cheapest"
- Thoreau (Sysop's note: and if so, what are we doing here?)
%%
Life is not one thing after another.... it's the same damn thing over and over!
%%
The meek will inherit the Earth..... The rest of us will go to the stars.
%%
After all is said and done, a lot more has been said than done.
%%
Beauty is only skin deep, but Ugly goes straight to the bone.
%%
There is no remedy for sex but more sex.
%%
Any given program, when running correctly, is obsolete.
%%
Tell a man that there are 300 billion stars in the universe, and he'll believe
you.... Tell him that a bench has wet paint upon it and he'll have to touch it
to be sure.
%%
Sex is like snow... You never know how many inches you're going to get or how
long it will last.
%%
What matters is not the length of the wand, but the magic in the stick.
%%
Love is a matter of chemistry, but Sex is a matter of physics.
%%
"Discovery consists in seeing what everyone else has seen and thinking what no
one else has thought."
- Albert Szent-Gyorgi
%%
"Revolution is the opiate of the intellectuals"
- "Oh, Lucky Man"
%%
I really hate this damn machine,
I wish that they would sell it.
It never does just what I want,
But only what I tell it.
%%
"Fantasy, abandoned by reason, produces impossible monsters; 
united with it, she is the mother of the arts and the origin of marvels"
- Goya
%%
"Some people like my advice so much that they frame it upon 
the wall instead of using it"
- Gordon R. Dickson
%%
"Civilization is a movement, not a condition; it is a voyage, not a harbor."
- Toynbee
%%
"We have met the enemy and he is us"
- Walt Kelly (in POGO)
%%
"You know, of course, that the Tasmanians, who never committed adultery, are
now extinct."
- M. Somerset Maugham
%%
"If it ain't broke, don't fix it."
- Bert Lantz
%%
"The one charm of marriage is that it makes a life of deception a neccessity."
- Oscar Wilde
%%
"God is a comedian playing to an audience too afraid to laugh."
- Voltaire
%%
"IBM uses what I like to call the 'hole-in-the-ground technique' 
to destroy the competition..... IBM digs a big HOLE in the 
ground and covers it with leaves. It then puts a big POT 
OF GOLD nearby. Then it gives the call, 'Hey, look at all 
this gold, get over here fast.' As soon as the competitor 
approaches the pot, he falls into the pit"
- John C. Dvorak
%%
"There are things that are so serious that you can only joke about them"
- Heisenberg
%%
"It takes all sorts of in & out-door schooling to get adapted
to my kind of fooling"
- R. Frost
%%
"Confound these ancestors.... They've stolen our best ideas!"
- Ben Jonson
%%
And thou shalt eat it as barley cakes, and thou shalt bake it with dung that
cometh out of man, in their sight...Then he [the Lord!] said unto me, Lo, I
have given thee cow's dung for man's dung, and thou shalt prepare thy bread
therewith.
[Ezek. 4:12-15 (KJV)]
%%
I have stripped off my dress; must I put it on again?  I have washed my feet;
must I soil them again?
When my beloved slipped his hand through the latch-hole, my bowels stirred
within me [my bowels were moved for him (KJV)].
When I arose to open for my beloved, my hands dripped with myrrh; the liquid
myrrh from my fingers ran over the knobs of the bolt.  With my own hands I
opened to my love, but my love had turned away and gone by; my heart sank when
he turned his back.  I sought him but I did not find him, I called him but he
did not answer.
The watchmen, going the rounds of the city, met me; they struck me and
  wounded me; the watchmen on the walls took away my cloak.
[Song of Solomon 5:3-7 (NEB)]
%%
How beautiful are thy feet with shoes, O prince's daughter! the joints of thy
thighs are like jewels, the work of the hands of a cunning workman.  Thy navel
is like a round goblet, which wanteth not liquor:  thy belly is like an heap
of wheat set about with lillies.
Thy two breasts are like two young roses that are twins.
[Song of Solomon 7:1-3 (KJV)]
%%
How beautiful, how entrancing you are, my loved one, daughter of delights!
You are stately as a palm-tree, and your breasts are the clusters of dates.
I said, "I will climb up into the palm to grasp its fronds."  May I find your
breast like clusters of grapes on the vine, the scent of your breath like
apricots, and your whispers like spiced wine flowing smoothly to welcome my
caresses, gliding down through lips and teeth.
[Song of Solomon 7:6-9 (NEB)]
%%
Wear me as a seal upon your heart, as a seal upon your arm; for love is strong
as death, passion cruel as the grave; it blazes up like blazing fire, fiercer
than any flame.
[Song of Solomon 8:6 (NEB)]
%%
But Rabshakeh said unto them, Hath my master sent me to thy master, and to
thee, to speak these words?  Hath he not sent me to the men which sit on the
wall, that they may eat their own dung, and drink their own piss with you?
[2 Kings 18:27 (KJV)]
%%
When Yahweh your gods has settled you in the land you're about to occupy, and
driven out many infidels before you...you're to cut them down and exterminate
them.  You're to make no compromise with them or show them any mercy.
[Deut. 7:1 (KJV)]
%%
I just thought of something funny...your mother.
- Cheech Marin
%%
In the beginning, I was made.  I didn't ask to be made.  No one consulted
with me or considered my feelings in this matter.  But if it brought some
passing fancy to some lowly humans as they haphazardly pranced their way
through life's mournful jungle, then so be it.
- Marvin the Paranoid Android, From Douglas Adams' Hitchiker's Guide to the
Galaxy Radio Scripts
%%
You will be successful in your work.
%%
The life of a repo man is always intense.
%%
If you're not careful, you're going to catch something.
%%
That's the thing about people who think they hate computers.  What they
really hate is lousy programmers.
- Larry Niven and Jerry Pournelle in "Oath of Fealty"
%%
Wherever you go...There you are.
- Buckaroo Banzai
%%
Life in the state of nature is solitary, poor, nasty, brutish, and short.
- Thomas Hobbes, Leviathan
%%
Lack of skill dictates economy of style.
- Joey Ramone
%%
No one is fit to be trusted with power. ... No one. ... Any man who has lived
at all knows the follies and wickedness he's capabe of. ... And if he does
know it, he knows also that neither he nor any man ought to be allowed to
decide a single human fate.
- C. P. Snow, The Light and the Dark
%%
Successful and fortunate crime is called virtue.
- Seneca
%%
When we jumped into Sicily, the units became separated, and I couldn't find
anyone.  Eventually I stumbled across two colonels, a major, three captains,
two lieutenants, and one rifleman, and we secured the bridge.  Never in the
history of war have so few been led by so many.
- General James Gavin
%%
The only thing necessary for the triumph of evil is for good men to do nothing.
- Edmund Burke
%%
You may call me by my name, Wirth, or by my value, Worth.
- Nicklaus Wirth
%%
Give a man a fish, and you feed him for a day.
Teach a man to fish, and he'll invite himself over for dinner.
- Calvin Keegan
%%
Prediction is very difficult, especially of the future.
- Niels Bohr
%%
The computer can't tell you the emotional story.  It can give you the exact
mathematical design, but what's missing is the eyebrows.
- Frank Zappa
%%
Things are not as simple as they seems at first.
- Edward Thorp
%%
The main thing is the play itself.  I swear that greed for money has nothing
to do with it, although heaven knows I am sorely in need of money.
- Feodor Dostoyevsky
%%
It is surely a great calamity for a human being to have no obsessions.
- Robert Bly
%%
Machines take me by surprise with great frequency.
- Alan Turing
%%
Uncertain fortune is thoroughly mastered by the equity of the calculation.
- Blaise Pascal
%%
After Goliath's defeat, giants ceased to command respect.
- Freeman Dyson
%%
There are two ways of constructing a software design.  One way is to make
it so simple that there are obviously no deficiencies and the other is to
make it so complicated that there are no obvious deficiencies.
- Charles Anthony Richard Hoare
%%
Do not allow this language (Ada) in its present state to be used in
applications where reliability is critical, i.e., nuclear power stations,
cruise missiles, early warning systems, anti-ballistic missle defense
systems.  The next rocket to go astray as a result of a programming language
error may not be an exploratory space rocket on a harmless trip to Venus:
It may be a nuclear warhead exploding over one of our cities.  An unreliable
programming language generating unreliable programs constitutes a far
greater risk to our environment and to our society than unsafe cars, toxic
pesticides, or accidents at nuclear power stations.
- C. A. R. Hoare
%%
Without coffee he could not work, or at least he could not have worked in the
way he did.  In addition to paper and pens, he took with him everywhere as an
indispensable article of equipment the coffee machine, which was no less
important to him than his table or his white robe.
- Stefan Zweigs, Biography of Balzac
%%
"It was the Law of the Sea, they said.	Civilization ends at the waterline.
Beyond that, we all enter the food chain, and not always right at the top."
- Hunter S. Thompson
%%
In the pitiful, multipage, connection-boxed form to which the flowchart has
today been elaborated, it has proved to be useless as a design tool --
programmers draw flowcharts after, not before, writing the programs they
describe.
- Fred Brooks, Jr.
%%
The so-called "desktop metaphor" of today's workstations is instead an
"airplane-seat" metaphor.  Anyone who has shuffled a lap full of papers while
seated between two portly passengers will recognize the difference -- one can
see only a very few things at once.
- Fred Brooks, Jr.
%%
...when fits of creativity run strong, more than one programmer or writer has
been known to abandon the desktop for the more spacious floor.
- Fred Brooks, Jr.
%%
A little retrospection shows that although many fine, useful software systems
have been designed by committees and built as part of multipart projects,
those software systems that have excited passionate fans are those that are
the products of one or a few designing minds, great designers.  Consider Unix,
APL, Pascal, Modula, the Smalltalk interface, even Fortran; and contrast them
with Cobol, PL/I, Algol, MVS/370, and MS-DOS.
- Fred Brooks, Jr.
%%
...computer hardware progress is so fast.  No other technology since
civilization began has seen six orders of magnitude in performance-price
gain in 30 years.
- Fred Brooks, Jr.
%%
Software entities are more complex for their size than perhaps any other human
construct because no two parts are alike.  If they are, we make the two
similar parts into a subroutine -- open or closed.  In this respect, software
systems differ profoundly from computers, buildings, or automobiles, where
repeated elements abound.
- Fred Brooks, Jr.
%%
Digital computers are themselves more complex than most things people build:
They hyave very large numbers of states.  This makes conceiving, describing,
and testing them hard.  Software systems have orders-of-magnitude more states
than computers do.
- Fred Brooks, Jr.
%%
The complexity of software is an essential property, not an accidental one.
Hence, descriptions of a software entity that abstract away its complexity
often abstract away its essence.
- Fred Brooks, Jr.
%%
Einstein argued that there must be simplified explanations of nature, because
God is not capricious or arbitrary.  No such faith comforts the software
engineer.
- Fred Brooks, Jr.
%%
Except for 75% of the women, everyone in the whole world wants to have sex.
- Ellyn Mustard
%%
The connection between the language in which we think/program and the problems
and solutions we can imagine is very close.  For this reason restricting
language features with the intent of eliminating programmer errors is at best
dangerous.
- Bjarne Stroustrup in "The C++ Programming Language"
%%
The only way to learn a new programming language is by writing programs in it.
- Brian Kernighan
%%
Perfection is acheived only on the point of collapse.
- C. N. Parkinson
%%
There you go man,
Keep as cool as you can.
It riles them to believe that you perceive the web they weave.
Keep on being free!
%%
Bingo, gas station, hamburger with a side order of airplane noise,
and you'll be Gary, Indiana. - Jessie in the movie "Greaser's Palace"
%%
Hoping to goodness is not theologically sound. - Peanuts
%%
Police up your spare rounds and frags.  Don't leave nothin' for the dinks.
- Willem Dafoe in "Platoon"
%%
"All my life I wanted to be someone; I guess I should have been more specific."
-- Jane Wagner
%%
"Any medium powerful enough to extend man's reach is powerful enough to topple
his world.  To get the medium's magic to work for one's aims rather than
against them is to attain literacy."
-- Alan Kay, "Computer Software", Scientific American, September 1984
%%
"Computer literacy is a contact with the activity of computing deep enough to
make the computational equivalent of reading and writing fluent and enjoyable.
As in all the arts, a romance with the material must be well under way.  If
we value the lifelong learning of arts and letters as a springboard for
personal and societal growth, should any less effort be spent to make computing
a part of our lives?"
-- Alan Kay, "Computer Software", Scientific American, September 1984
%%
"The greatest warriors are the ones who fight for peace."
-- Holly Near
%%
"No matter where you go, there you are..."
-- Buckaroo Banzai
%%
Trespassers will be shot.  Survivors will be prosecuted.
%%
Trespassers will be shot.  Survivors will be SHOT AGAIN!
%%
"I'm growing older, but not up."
-- Jimmy Buffett
%%
Scientists will study your brain to learn more about your distant cousin, Man.
%%
"I hate the itching.  But I don't mind the swelling."
-- new buzz phrase, like "Where's the Beef?" that David Letterman's trying
   to get everyone to start saying
%%
Your own mileage may vary.
%%
"Oh dear, I think you'll find reality's on the blink again."
-- Marvin The Paranoid Android
%%
"Send lawyers, guns and money..."
-- Lyrics from a Warren Zevon song
%%
"I go on working for the same reason a hen goes on laying eggs."
- H. L. Mencken
%%
"Remember, Information is not knowledge; Knowledge is not Wisdom;
Wisdom is not truth; Truth is not beauty; Beauty is not love;
Love is not music; Music is the best." -- Frank Zappa
%%
I can't drive 55.
%%
"And they told us, what they wanted...
 Was a sound that could kill some-one, from a distance." -- Kate Bush
%%
"In the face of entropy and nothingness, you kind of have to pretend it's not
there if you want to keep writing good code."  - Karl
%%
Badges?  We don't need no stinking badges.
%%
I can't drive 55.
I'm looking forward to not being able to drive 65, either.
%%
Thank God a million billion times you live in Texas.  -Karl
%%
Sit on a happy face. 
%%
"Can you program?"  "Well, I'm literate, if that's what you mean!"
%%
No user-servicable parts inside.  Refer to qualified service personnel.
%%
At the heart of science is an essential tension between two seemingly
contradictory attitudes -- an openness to new ideas, no matter how bizarre
or counterintuitive they may be, and the most ruthless skeptical scrutiny
of all ideas, old and new.  This is how deep truths are winnowed from deep
nonsense.  Of course, scientists make mistakes in trying to understand the
world, but there is a built-in error-correcting mechanism:  The collective
enterprise of creative thinking and skeptical thinking together keeps the
field on track.
-- Carl Sagan, "The Fine Art of Baloney Detection," Parade, February 1, 1987
%%
One of the saddest lessons of history is this:  If we've been bamboozled
long enough, we tend to reject any evidence of the bamboozle.  We're no
longer interested in finding out the truth.  The bamboozle has captured
us.  it is simply too painful to acknowledge -- even to ourselves -- that
we've been so credulous.  (So the old bamboozles tend to persist as the
new bamboozles rise.)
-- Carl Sagan, "The Fine Art of Baloney Detection," Parade, February 1, 1987
%%
Regarding astral projection, Woody Allen once wrote, "This is not a bad way
to travel, although there is usually a half-hour wait for luggage."
%%
The inability to benefit from feedback appears to be the primary cause of
pseudoscience.  Pseudoscientists retain their beliefs and ignore or distort
contradictory evidence rather than modify or reject a flawed theory.  Because
of their strong biases, they seem to lack the self-correcting mechanisms
scientists must employ in their work.
-- Thomas L. Creed, "The Skeptical Inquirer," Summer 1987
%%
Finding the occasional straw of truth awash in a great ocean of confusion and
bamboozle requires intelligence, vigilance, dedication and courage.  But if we
don't practice these tough habits of thought, we cannot hope to solve the truly
serious problems that face us -- and we risk becoming a nation of suckers, up
for grabs by the next charlatan who comes along.
-- Carl Sagan, "The Fine Art of Baloney Detection," Parade, February 1, 1987
%%
Do not underestimate the value of print statements for debugging.
%%
Do not underestimate the value of print statements for debugging.
Don't have aesthetic convulsions when using them, either.
%%
As the system comes up, the component builders will from time to time appear,
bearing hot new versions of their pieces -- faster, smaller, more complete,
or putatively less buggy.  The replacement of a working component by a new
version requires the same systematic testing procedure that adding a new
component does, although it should require less time, for more complete and
efficient test cases will usually be available.
- Frederick Brooks Jr., "The Mythical Man Month" 
%%
Each team building another component has been using the most recent tested
version of the integrated system as a test bed for debugging its piece.  Their
work will be set back by having that test bed change under them.  Of course it
must.  But the changes need to be quantized.  Then each user has periods of
productive stability, interrupted by bursts of test-bed change.  This seems
to be much less disruptive than a constant rippling and trembling.
- Frederick Brooks Jr., "The Mythical Man Month" 
%%
Conceptual integrity in turn dictates that the design must proceed from one
mind, or from a very small number of agreeing resonant minds.
- Frederick Brooks Jr., "The Mythical Man Month" 
%%
It is a very humbling experience to make a multimillion-dollar mistake, but it
is also very memorable.  I vividly recall the night we decided how to organize
the actual writing of external specifications for OS/360.  The manager of
architecture, the manager of control program implementation, and I were
threshing out the plan, schedule, and division of responsibilities.

The architecture manager had 10 good men.  He asserted that they could write
the specifications and do it right.  It would take ten months, three more
than the schedule allowed.

The control program manager had 150 men.  He asserted that they could prepare
the specifications, with the architecture team coordinating; it would be 
well-done and practical, and he could do it on schedule.  Futhermore, if
the architecture team did it, his 150 men would sit twiddling their thumbs
for ten months.

To this the architecture manager responded that if I gave the control program
team the responsibility, the result would not in fact be on time, but would
also be three months late, and of much lower quality.  I did, and it was.  He
was right on both counts.  Moreover, the lack of conceptual integrity made
the system far more costly to build and change, and I would estimate that it
added a year to debugging time.
- Frederick Brooks Jr., "The Mythical Man Month" 
%%
The reason ESP, for example, is not considered a viable topic in contemoprary
psychology is simply that its investigation has not proven fruitful...After
more than 70 years of study, there still does not exist one example of an ESP
phenomenon that is replicable under controlled conditions.  This simple but
basic scientific criterion has not been met despite dozens of studies conducted
over many decades...It is for this reason alone that the topic is now of little
interest to psychology...In short, there is no demonstrated phenomenon that
needs explanation.
-- Keith E. Stanovich, "How to Think Straight About Psychology", pp. 160-161
%%
The evolution of the human race will not be accomplished in the ten thousand
years of tame animals, but in the million years of wild animals, because man
is and will always be a wild animal.
-- Charles Galton Darwin
%%
Natural selection won't matter soon, not anywhere as much as concious selection.
We will civilize and alter ourselves to suit our ideas of what we can be.
Within one more human lifespan, we will have changed ourselves unrecognizably.
-- Greg Bear
%%
"Jesus may love you, but I think you're garbage wrapped in skin."
-- Michael O'Donohugh
%%
...though his invention worked superbly -- his theory was a crock of sewage from
beginning to end. -- Vernor Vinge, "The Peace War"
%%
"It's like deja vu all over again."   -- Yogi Berra
%%
The last thing one knows in constructing a work is what to put first.
-- Blaise Pascal
%%
"Where shall I begin, please your Majesty?" he asked.  "Begin at the beginning,"
the King said, gravely, "and go on till you come to the end: then stop."
Alice's Adventures in Wonderland, Lewis Carroll
%%
A morsel of genuine history is a thing so rare as to be always valuable.
-- Thomas Jefferson
%%
To be awake is to be alive.  -- Henry David Thoreau, in "Walden"
%%
A person with one watch knows what time it is; a person with two watches is
never sure.   Proverb
%%
You see but you do not observe.
Sir Arthur Conan Doyle, in "The Memoirs of Sherlock Holmes"
%%
A quarrel is quickly settled when deserted by one party; there is no battle
unless there be two.  -- Seneca
%%
Nothing ever becomes real till it is experienced -- even a proverb is no proverb
to you till your life has illustrated it.  -- John Keats
%%
The fancy is indeed no other than a mode of memory emancipated from the order
of space and time.  -- Samuel Taylor Coleridge
%%
What we anticipate seldom occurs; what we least expect generally happens.
-- Bengamin Disraeli
%%
Nothing in progression can rest on its original plan.  We may as well think of
rocking a grown man in the cradle of an infant.  -- Edmund Burke
%%
For every problem there is one solution which is simple, neat, and wrong.
-- H. L. Mencken
%%
Don't tell me how hard you work.  Tell me how much you get done.
-- James J. Ling
%%
One friend in a lifetime is much; two are many; three are hardly possible.
Friendship needs a certain parallelism of life, a community of thought,
a rivalry of aim.  -- Henry Brook Adams
%%
Remember thee
Ay, thou poor ghost while memory holds a seat
In this distracted globe.  Remember thee!
Yea, from the table of my memory
I'll wipe away all trivial fond records,
All saws of books, all forms, all pressures past,
That youth and observation copied there.
Hamlet, I : v : 95   William Shakespeare
%%
Obviously, a man's judgement cannot be better than the information on which he
has based it.  Give him the truth and he may still go wrong when he has
the chance to be right, but give him no news or present him only with distorted
and incomplete data, with ignorant, sloppy or biased reporting, with propaganda
and deliberate falsehoods, and you destroy his whole reasoning processes, and
make him something less than a man.
-- Arthur Hays Sulzberger
%%
Each honest calling, each walk of life, has its own elite, its own aristocracy
based on excellence of performance.  -- James Bryant Conant
%%
You can observe a lot just by watching.  -- Yogi Berra
%%
If the presence of electricity can be made visible in any part of a circuit, I
see no reason why intelligence may not be transmitted instantaneously by
electricity.  -- Samuel F. B. Morse
%%
"Mr. Watson, come here, I want you."   -- Alexander Graham Bell
%%
It's currently a problem of access to gigabits through punybaud.
-- J. C. R. Licklider
%%
It is important to note that probably no large operating system using current
design technology can withstand a determined and well-coordinated attack,
and that most such documented penetrations have been remarkably easy.
-- B. Hebbard, "A Penetration Analysis of the Michigan Terminal System",
Operating Systems Review, Vol. 14, No. 1, June 1980, pp. 7-20
%%
A right is not what someone gives you; it's what no one can take from you.
-- Ramsey Clark
%%
The price one pays for pursuing any profession, or calling, is an intimate
knowledge of its ugly side.  -- James Baldwin
%%
Small is beautiful.
%%
...the increased productivity fostered by a friendly environment and quality
tools is essential to meet ever increasing demands for software.
-- M. D. McIlroy, E. N. Pinson and B. A. Tague
%%
It is not best to swap horses while crossing the river.
-- Abraham Lincoln
%%
Mirrors should reflect a little before throwing back images.
-- Jean Cocteau
%%
Suppose for a moment that the automobile industry had developed at the same
rate as computers and over the same period:  how much cheaper and more efficient
would the current models be?  If you have not already heard the analogy, the
answer is shattering.  Today you would be able to buy a Rolls-Royce for $2.75,
it would do three million miles to the gallon, and it would deliver enough
power to drive the Queen Elizabeth II.  And if you were interested in
miniaturization, you could place half a dozen of them on a pinhead.
-- Christopher Evans
%%
In the future, you're going to get computers as prizes in breakfast cereals.
You'll throw them out because your house will be littered with them.
-- Robert Lucky
%%
Get hold of portable property.  -- Charles Dickens, "Great Expectations"
%%
Overall, the philosophy is to attack the availability problem from two
complementary directions:  to reduce the number of software errors through
rigorous testing of running systems, and to reduce the effect of the
remaining errors by providing for recovery from them.  An interesting footnote
to this design is that now a system failure can usually be considered to be
the result of two program errors:  the first, in the program that started the
problem; the second, in the recovery routine that could not protect the
system.  -- A. L. Scherr, "Functional Structure of IBM Virtual Storage Operating
Systems, Part II: OS/VS-2 Concepts and Philosophies," IBM Systems Journal,
Vol. 12, No. 4, 1973, pp. 382-400
%%
I have sacrificed time, health, and fortune, in the desire to complete these remote from sugar
Calculating Engines.  I have also declined several offers of great personal
advantage to myself.  But, notwithstanding the sacrifice of these advantages
for the purpose of maturing an engine of almost intellectual power, and after
expending from my own private fortune a larger sum than the government of
England has spent on that machine, the execution of which it only commenced,
I have received neither an acknowledgement of my labors, not even the offer
of those honors or rewards which are allowed to fall within the reach of men
who devote themselves to purely scientific investigations...  

If the work upon which I have bestowed so much time and thought were a mere
triumph over mechanical difficulties, or simply curious, or if the execution
of such engines were of doubtful practicability or utility, some justification
might be found for the course which has been taken; but I venture to assert
that no mathematician who has a reputation to lose will ever publicly express
an opinion that such a machine would be useless if made, and that no man
distinguished as a civil engineer will venture to declare the construction of
such machinery impracticable...

And at a period when the progress of physical science is obstructed by that
exhausting intellectual and manual labor, indispensable for its advancement,
which it is the object of the Analytical Engine to relieve, I think the 
application of machinery in aid of the most complicated and abtruse
calculations can no longer be deemed unworthy of the attention of the country.
In fact, there is no reason why mental as well as bodily labor should not
be economized by the aid of machinery.
- Charles Babbage, Passage from the Life of a Philosopher
%%
How many hardware guys does it take to change a light bulb?

"Well the diagnostics say it's fine buddy, so it's a software problem."
%%
"Don't try to outweird me, three-eyes.  I get stranger things than you free
with my breakfast cereal."
- Zaphod Beeblebrox in "Hithiker's Guide to the Galaxy"
%%
Uncompensated overtime?  Just Say No.
%%
Decaffeinated coffee?  Just Say No.
%%
"Show business is just like high school, except you get paid."
- Martin Mull
%%
"This isn't brain surgery; it's just television."
- David Letterman
%%
"Morality is one thing.  Ratings are everything."
- A Network 23 executive on "Max Headroom"
%%
Live free or die.
%%
"...if the church put in half the time on covetousness that it does on lust,
 this would be a better world."  - Garrison Keillor, "Lake Wobegon Days"
%%
Outside of a dog, a book is man's best friend.  Inside of a dog, it is too
dark to read.
%%
"Probably the best operating system in the world is the [operating system]
 made for the PDP-11 by Bell Laboratories." - Ted Nelson, October 1977
%%
"All these black people are screwing up my democracy." - Ian Smith
%%
Use the Force, Luke.
%%
I've got a bad feeling about this.
%%
The power to destroy a planet is insignificant when compared to the power of
the Force.
- Darth Vader
%%
When I left you, I was but the pupil.  Now, I am the master.
- Darth Vader
%%
"Well, well, well!  Well if it isn't fat stinking billy goat Billy Boy in
poison!  How art thou, thou globby bottle of cheap stinking chip oil?  Come
and get one in the yarbles, if ya have any yarble, ya eunuch jelly thou!"
- Alex in "Clockwork Orange"
%%
"There was nothing I hated more than to see a filthy old drunkie, a howling
away at the sons of his father and going blurp blurp in between as if it were
a filthy old orchestra in his stinking rotten guts.  I could never stand to
see anyone like that, especially when they were old like this one was."
- Alex in "Clockwork Orange"
%%
186,000 Miles per Second.  It's not just a good idea.  IT'S THE LAW.
%%
Stupidity, like virtue, is its own reward.
%%
Gee, Toto, I don't think we're in Kansas anymore.
%%
Children begin by loving their parents.  After a time they judge them.  Rarely,
if ever, do they forgive them.
- Oscar Wilde
%%
Single tasking: Just Say No.
%%
"Catch a wave and you're sitting on top of the world."
- The Beach Boys
%%
"Bond reflected that good Americans were fine people and that most of them
seemed to come from Texas."
- Ian Fleming, "Casino Royale"
%%
"I think trash is the most important manifestation of culture we have in my
lifetime."
- Johnny Legend
%%
By one count there are some 700 scientists with respectable academic credentials
(out of a total of 480,000 U.S. earth and life scientists) who give credence
to creation-science, the general theory that complex life forms did not evolve
but appeared "abruptly."
- Newsweek, June 29, 1987, pg. 23
%%
Even if you can deceive people about a product through misleading statements,
sooner or later the product will speak for itself.
- Hajime Karatsu
%%
In order to succeed in any enterprise, one must be persistent and patient.
Even if one has to run some risks, one must be brave and strong enough to
meet and overcome vexing challenges to maintain a successful business in
the long run.  I cannot help saying that Americans lack this necessary 
challenging spirit today.
- Hajime Karatsu
%%
Memories of you remind me of you.
- Karl
%%
Life.  Don't talk to me about life.
- Marvin the Paranoid Anroid
%%
On a clear disk you can seek forever.
%%
The world is coming to an end--save your buffers!
%%
grep me no patterns and I'll tell you no lines.
%%
It is your destiny.
- Darth Vader
%%
Hokey religions and ancient weapons are no substitute for a good blaster at
your side.
- Han Solo
%%
How many QA engineers does it take to screw in a lightbulb?

3: 1 to screw it in and 2 to say "I told you so" when it doesn't work.
%%
How many NASA managers does it take to screw in a lightbulb?

"That's a known problem... don't worry about it."
%%
To be is to program.
%%
To program is to be.
%%
I program, therefore I am.
%%
People are very flexible and learn to adjust to strange
surroundings -- they can become accustomed to read Lisp and
Fortran programs, for example.
- Leon Sterling and Ehud Shapiro, Art of Prolog, MIT Press
%%
"I am your density."
  -- George McFly in "Back to the Future"
%%
"So why don't you make like a tree, and get outta here."
  -- Biff in "Back to the Future"
%%
"Falling in love makes smoking pot all day look like the ultimate in restraint."
-- Dave Sim, author of Cerebrus.
%%
The existence of god implies a violation of causality.
%%
"I may kid around about drugs, but really, I take them seriously."
- Doctor Graper
%%
Operating-system software is the program that orchestrates all the basic
functions of a computer.
- The Wall Street Journal, Tuesday, September 15, 1987, page 40
%%
I pledge allegiance to the flag
of the United States of America
and to the republic for which it stands,
one nation,
indivisible,
with liberty
and justice for all.
- Francis Bellamy, 1892
%%
People think my friend George is weird because he wears sideburns...behind his 
ears.  I think he's weird because he wears false teeth...with braces on them.
-- Steven Wright
%%
My brother sent me a postcard the other day with this big sattelite photo of
the entire earth on it. On the back it said: "Wish you were here".
 -- Steven Wright
%%
You can't have everything... where would you put it?
-- Steven Wright
%%
I was playing poker the other night... with Tarot cards. I got a full house and
4 people died.
-- Steven Wright
%%
You know that feeling when you're leaning back on a stool and it starts to tip 
over?  Well, that's how I feel all the time.
-- Steven Wright
%%
I came home the other night and tried to open the door with my car keys...and 
the building started up.  So I took it out for a drive.  A cop pulled me over 
for speeding.  He asked me where I live... "Right here".
-- Steven Wright
%%
"Live or die, I'll make a million."
-- Reebus Kneebus, before his jump to the center of the earth, Firesign Theater
%%
The typical page layout program is nothing more than an electronic
light table for cutting and pasting documents.
%%
There are bugs and then there are bugs.  And then there are bugs.
- karl
%%
My computer can beat up your computer.
- karl
%%
Kill Ugly Processor Architectures
- karl
%%
Kill Ugly Radio
- Frank Zappa
%%
"Just Say No."   - Nancy Reagan

"No."            - Ronald Reagan
%%
I believe that part of what propels science is the thirst for wonder.  It's a
very powerful emotion.  All children feel it.  In a first grade classroom
everybody feels it; in a twelfth grade classroom almost nobody feels it, or
at least acknowledges it.  Something happens between first and twelfth grade,
and it's not just puberty.  Not only do the schools and the media not teach
much skepticism, there is also little encouragement of this stirring sense
of wonder.  Science and pseudoscience both arouse that feeling.  Poor
popularizations of science establish an ecological niche for pseudoscience.
- Carl Sagan, The Burden Of Skepticism, The Skeptical Inquirer, Vol. 12, Fall 87
%%
If science were explained to the average person in a way that is accessible
and exciting, there would be no room for pseudoscience.  But there is a kind
of Gresham's Law by which in popular culture the bad science drives out the
good.  And for this I think we have to blame, first, the scientific community
ourselves for not doing a better job of popularizing science, and second, the
media, which are in this respect almost uniformly dreadful.  Every newspaper
in America has a daily astrology column.  How many have even a weekly
astronomy column?  And I believe it is also the fault of the educational
system.  We do not teach how to think.  This is a very serious failure that
may even, in a world rigged with 60,000 nuclear weapons, compromise the human
future.
- Carl Sagan, The Burden Of Skepticism, The Skeptical Inquirer, Vol. 12, Fall 87
%%
"I maintain there is much more wonder in science than in pseudoscience.  And
in addition, to whatever measure this term has any meaning, science has the
additional virtue, and it is not an inconsiderable one, of being true.
- Carl Sagan, The Burden Of Skepticism, The Skeptical Inquirer, Vol. 12, Fall 87
%%
I'm often asked the question, "Do you think there is extraterrestrial intelli-
gence?"  I give the standard arguments -- there are a lot of places out there,
and use the word *billions*, and so on.  And then I say it would be astonishing
to me if there weren't extraterrestrial intelligence, but of course there is as
yet no compelling evidence for it.  And then I'm asked, "Yeah, but what do you
really think?"  I say, "I just told you what I really think."  "Yeah, but 
what's your gut feeling?"  But I try not to think with my gut.  Really, it's
okay to reserve judgment until the evidence is in.
- Carl Sagan, The Burden Of Skepticism, The Skeptical Inquirer, Vol. 12, Fall 87
%%
Repel them.  Repel them.  Induce them to relinquish the spheroid.
- Indiana University fans' chant for their perennially bad football team
%%
If it's working, the diagnostics say it's fine.
If it's not working, the diagnostics say it's fine.
- A proposed addition to rules for realtime programming
%%
   It is either through the influence of narcotic potions, of which all
primitive peoples and races speak in hymns, or through the powerful approach
of spring, penetrating with joy all of nature, that those Dionysian stirrings
arise, which in their intensification lead the individual to forget himself
completely. . . .Not only does the bond between man and man come to be forged
once again by the magic of the Dionysian rite, but alienated, hostile, or
subjugated nature again celebrates her reconciliation with her prodigal son,
man.
- Fred Nietzsche, The Birth of Tragedy
%%
The characteristic property of hallucinogens, to suspend the boundaries between
the experiencing self and the outer world in an ecstatic, emotional experience,
makes it posible with their help, and after suitable internal and external
perparation...to evoke a mystical experience according to plan, so to speak...
I see the true importance of LSD in the possibility of providing materail aid 
to meditation aimed at the mystical experience of a deeper, comprehensive
reality.  Such a use accords entirely with the essence and working character
of LSD as a sacred drug.
- Dr. Albert Hoffman, the discoverer of LSD
%%
I share the belief of many of my contemporaries that the spiritual crisis
pervading all spheres of Western industrial society can be remedied only 
by a change in our world view.  We shall have to shift from the materialistic,
dualistic belief that people and their environment are separate, toward a
new conciousness of an all-encompassing reality, which embraces the 
experiencing ego, a reality in which people feel their oneness with animate 
nature and all of creation.
- Dr. Albert Hoffman
%%
Deliberate provocation of mystical experience, particularly by LSD and related
hallucinogens, in contrast to spontaneous visionary experiences, entails
dangers that must not be underestimated.  Practitioners must take into
account the peculiar effects of these substances, namely their ability to
influence our consciousness, the innermost essence of our being.  The history
of LSD to date amply demonstrates the catastrophic consequences that can
ensue when its profound effect is misjudged and the substance is mistaken
for a pleasure drug.  Special internal and external advance preperations
are required; with them, an LSD experiment can become a meaningful
experience.
- Dr. Albert Hoffman, the discoverer of LSD
%%
I believe that if people would learn to use LSD's vision-inducing capability
more wisely, under suitable conditions, in medical practice and in conjution
with meditation, then in the future this problem child could become a wonder
child.
- Dr. Albert Hoffman, the discoverer of LSD
%%
In the realm of scientific observation, luck is granted only to those who are
prepared.
- Louis Pasteur
%%
core error - bus dumped
%%
If imprinted foil seal under cap is broken or missing when purchased, do not 
use.
%%
"Come on over here, baby, I want to do a thing with you."
- A Cop, arresting a non-groovy person after the revolution, Firesign Theater
%%
"Ahead warp factor 1"
- Captain Kirk
%%
   Fiery energy lanced out, but the beams struck an intangible wall between
the Gubru and the rapidly turning Earth ship.

   "Water!" it shrieked as it read the spectral report.  "A barrier of water
vapor!  A civilized race could not have found such a trick in the Library!
A civilized race could not have stooped so low!  A civilized race would not
have..."

   It screamed as the Gubru ship hit a cloud of drifting snowflakes.

- Startide Rising, by David Brin
%%
Harrison's Postulate:
	For every action, there is an equal and opposite criticism.
%%
Mr. Cole's Axiom:
	The sum of the intelligence on the planet is a constant;
	the population is growing.
%%
Felson's Law:
	To steal ideas from one person is plagiarism; to steal from
	many is research.
%%
...Another writer again agreed with all my generalities, but said that as an
inveterate skeptic I have closed my mind to the truth.  Most notably I have
ignored the evidence for an Earth that is six thousand years old.  Well, I
haven't ignored it; I considered the purported evidence and *then* rejected it.
There is a difference, and this is a difference, we might say, between 
prejudice and postjudice.  Prejudice is making a judgment before you have
looked at the facts.  Postjudice is making a judgment afterwards.  Prejudice
is terrible, in the sense that you commit injustices and you make serious
mistakes.  Postjudice is not terrible.  You can't be perfect of course; you
may make mistakes also.  But it is permissible to make a judgment after you
have examined the evidence.  In some circles it is even encouraged.
- Carl Sagan, The Burden of Skepticism, Skeptical Enquirer, Vol. 12, pg. 46
%%
If a person (a) is poorly, (b) receives treatment intended to make him better,
and (c) gets better, then no power of reasoning known to medical science can
convince him that it may not have been the treatment that restored his health.
- Sir Peter Medawar, The Art of the Soluble
%%
America has been discovered before, but it has always been hushed up.
- Oscar Wilde
%%
Unix:  Some say the learning curve is steep, but you only have to climb it once.
-karl
%%
Sometimes, too long is too long.
- Joe Crowe
%%
When bad men combine, the good must associate; else they will fall one by one,
an unpitied sacrifice in a contemptible struggle.
- Edmund Burke
%%
Behind all the political rhetoric being hurled at us from abroad, we are 
bringing home one unassailable fact -- [terrorism is] a crime by any civilized
standard, committed against innocent people, away from the scene of political
conflict, and must be dealt with as a crime. . . .
   [I]n our recognition of the nature of terrorism as a crime lies our best hope
of dealing with it. . . .
   [L]et us use the tools that we have.  Let us invoke the cooperation we have
the right to expect around the world, and with that cooperation let us shrink
the dark and dank areas of sanctuary until these cowardly marauders are held
to answer as criminals in an open and public trial for the crimes they have
committed, and receive the punishment they so richly deserve.
- William H. Webster, Director, Federal Bureau of Investigation, 15 Oct 1985
%%
"Of all the tyrannies that affect mankind, tyranny in religion is the worst."
- Thomas Paine
%%
"I say we take off; nuke the site from orbit.  It's the only way to be sure."
- Corporal Hicks, in "Aliens"
%%
"There is nothing so deadly as not to hold up to people the opportunity to
do great and wonderful things, if we wish to stimulate them in an active way."
- Dr. Harold Urey, Nobel Laureate in chemistry
%%
"...proper attention to Earthly needs of the poor, the depressed and the
downtrodden, would naturally evolve from dynamic, articulate, spirited
awareness of the great goals for Man and the society he conspired to erect."
- David Baker, paraphrasing Harold Urey, in "The History of Manned Space Flight"
%%
"Athens built the Acropolis.  Corinth was a commercial city, interested in
purely materialistic things.  Today we admire Athens, visit it, preserve the
old temples, yet we hardly ever set foot in Corinth."
- Dr. Harold Urey, Nobel Laureate in chemistry
%%
"Largely because it is so tangible and exciting a program and as such will
serve to keep alive the interest and enthusiasm of the whole spectrum of
society...It is justified because...the program can give a sense of shared
adventure and achievement to the society at large."
- Dr. Colin S. Pittendrigh, in "The History of Manned Space Flight"
%%
The challenge of space exploration and particularly of landing men on the moon
represents the greatest challenge which has ever faced the human race.  Even
if there were no clear scientific or other arguments for proceeding with this
task, the whole history of our civilization would still impel men toward the
goal.  In fact, the assembly of the scientific and military with these human
arguments creates such an overwhelming case that in can be ignored only by
those who are blind to the teachings of history, or who wish to suspend the
development of civilization at its moment of greatest opportunity and drama.
- Sir Bernard Lovell, 1962, in "The History of Manned Space Flight"
%%
The idea of man leaving this earth and flying to another celestial body and
landing there and stepping out and walking over that body has a fascination
and a driving force that can get the country to a level of energy, ambition,
and will that I do not see in any other undertaking.  I think if we are
honest with ourselves, we must admit that we needed that impetus extremely
strongly.  I sincerely believe that the space program, with its manned
landing on the moon, if wisely executed, will become the spearhead for a
broad front of courageous and energetic activities in all the fields of
endeavour of the human mind - activities which could not be carried out 
except in a mental climate of ambition and confidence which such a spearhead
can give.
- Dr. Martin Schwarzschild, 1962, in "The History of Manned Space Flight"
%%
Human society - man in a group - rises out of its lethargy to new levels of
productivity only under the stimulus of deeply inspiring and commonly 
appreciated goals.  A lethargic world serves no cause well; a spirited world
working diligently toward earnestly desired goals provides the means and
the strength toward which many ends can be satisfied...to unparalleled
social accomplishment.
- Dr. Lloyd V. Berkner, in "The History of Manned Space Flight"
%%
The vigor of civilized societies is preserved by the widespread sense that high
aims are worth-while.  Vigorous societies harbor a certain extravagance of
objectives, so that men wander beyond the safe provision of personal
gratifications.  All strong interests easily become impersonal, the love of
a good job well done.  There is a sense of harmony about such an accomplishment,
the Peace brought by something worth-while.
- Alfred North Whitehead, 1963, in "The History of Manned Space Flight"
%%
I do not believe that this generation of Americans is willing to resign itself
to going to bed each night by the light of a Communist moon...
- Lyndon B. Johnson
%%
Life's the same, except for the shoes.
- The Cars
%%
Purple hum
Assorted cars
Laser lights, you bring

All to prove
You're on the move
and vanishing
- The Cars
%%
Could be you're crossing the fine line
A silly driver kind of...off the wall

You keep it cool when it's t-t-tight
...eyes wide open when you start to fall.
- The Cars
%%
Adapt.  Enjoy.  Survive.
%%
Were there fewer fools, knaves would starve.
- Anonymous
%%
Humanity has the stars in its future, and that future is too important to be
lost under the burden of juvenile folly and ignorant superstition.
- Isaac Asimov
%%
And the crowd was stilled.  One elderly man, wondering at the sudden silence,
turned to the Child and asked him to repeat what he had said.  Wide-eyed,
the Child raised his voice and said once again, "Why, the Emperor has no
clothes!  He is naked!"
- "The Emperor's New Clothes"
%%
"Those who believe in astrology are living in houses with foundations of
Silly Putty."
-  Dennis Rawlins, astronomer
%%
To date, the firm conclusions of Project Blue Book are:
   1. no unidentified flying object reported, investigated and evaluated
      by the Air Force has ever given any indication of threat to our
      national security;
   2. there has been no evidence submitted to or discovered by the Air
      Force that sightings categorized as UNIDENTIFIED represent
      technological developments or principles beyond the range of
      present-day scientific knowledge; and
   3. there has been no evidence indicating that sightings categorized
      as UNIDENTIFIED are extraterrestrial vehicles.
- the summary of Project Blue Book, an Air Force study of UFOs from 1950
  to 1965, as quoted by James Randi in Flim-Flam!
%%
Those who believe that they believe in God, but without passion in their
hearts, without anguish in mind, without uncertainty, without doubt,
without an element of despair even in their consolation, believe only
in the God idea, not God Himself.
- Miguel de Unamuno, Spanish philosopher and writer
%%
Doubt is a pain too lonely to know that faith is his twin brother.
- Kahlil Gibran
%%
Doubt isn't the opposite of faith; it is an element of faith.
- Paul Tillich, German theologian and historian
%%
Doubt is not a pleasant condition, but certainty is absurd.
- Voltaire
%%
If only God would give me some clear sign!  Like making a large deposit
in my name at a Swiss Bank.
- Woody Allen
%%
I cannot affirm God if I fail to affirm man.  Therefore, I affirm both.
Without a belief in human unity I am hungry and incomplete.  Human unity
is the fulfillment of diversity.  It is the harmony of opposites.  It is
a many-stranded texture, with color and depth.
- Norman Cousins
%%
To downgrade the human mind is bad theology.
- C. K. Chesterton
%%
...difference of opinion is advantageious in religion.  The several sects
perform the office of a common censor morum over each other.  Is uniformity
attainable?  Millions of innocent men, women, and children, since the
introduction of Christianity, have been burnt, tortured, fined, imprisoned;
yet we have not advanced one inch towards uniformity.
- Thomas Jefferson, "Notes on Virginia"
%%
Life is a process, not a principle, a mystery to be lived, not a problem to
be solved.
- Gerard Straub, television producer and author (stolen from Frank Herbert??)
%%
So we follow our wandering paths, and the very darkness acts as our guide and
our doubts serve to reassure us.
- Jean-Pierre de Caussade, eighteenth-century Jesuit priest
%%
Faith may be defined briefly as an illogical belief in the occurence of the
improbable.
- H. L. Mencken
%%
And do you not think that each of you women is an Eve?  The judgement of God
upon your sex endures today; and with it invariably endures your position of 
criminal at the bar of justice.
- Tertullian, second-century Christian writer, misogynist
%%
I judge a religion as being good or bad based on whether its adherents
become better people as a result of practicing it.
- Joe Mullally, computer salesman
%%
Imitation is the sincerest form of plagarism.
%%
"Unibus timeout fatal trap program lost sorry"
- An error message printed by DEC's RSTS operating system for the PDP-11
%%
How many surrealists does it take to screw in a lightbulb?

One to hold the giraffe and one to fill the bathtub with brightly colored
power tools.
%%
How many Bavarian Illuminati does it take to screw in a lightbulb?

Three: one to screw it in, and one to confuse the issue.
%%
How long does it take a DEC field service engineer to change a lightbulb?

It depends on how many bad ones he brought with him.
%%
It does me no injury for my neighbor to say there are twenty gods or no God.
It neither picks my pocket nor breaks my leg.
- Thomas Jefferson
%%
I do not believe in the creed professed by the Jewish Church, by the Roman
Church, by the Greek Church, by the Turkish Church, by the Protestant Church,
nor by any Church that I know of.  My own mind is my own Church.
- Thomas Paine
%%
God requireth not a uniformity of religion.
- Roger Williams
%%
The day will come when the mystical generation of Jesus, by the Supreme Being
as his Father, in the womb of a virgin will be classified with the fable of
the generation of Minerva in the brain of Jupiter.  But we may hope that the
dawn of reason and freedom of thought in these United States will do away with
this artificial scaffolding and restore to us the primitive and genuine
doctrines of this most venerated Reformer of human errors.
- Thomas Jefferson
%%
Let us, then, fellow citizens, unite with one heart and one mind.  Let us
restore to social intercourse that harmony and affection without which
liberty and even life itself are but dreary things.  And let us reflect
that having banished from our land that religious intolerance under which
mankind so long bled, we have yet gained little if we counternance a
political intolerance as despotic, as wicked, and capable of a bitter and
bloody persecutions.
- Thomas Jefferson
%%
I do not find in orthodox Christianity one redeeming feature.
- Thomas Jefferson
%%
The divinity of Jesus is made a convenient cover for absurdity.  Nowhere
in the Gospels do we find a precept for Creeds, Confessions, Oaths,
Doctrines, and whole carloads of other foolish trumpery that we find in
Christianity.
- John Adams
%%
The Bible is not my Book and Christianity is not my religion.  I could
never give assent to the long complicated statements of Christian dogma.
- Abraham Lincoln
%%
As to Jesus of Nazareth...I think the system of Morals and his Religion,
as he left them to us, the best the World ever saw or is likely to see;
but I apprehend it has received various corrupting Changes, and I have,
with most of the present Dissenters in England, some doubts as to his
divinity.
- Benjamin Franklin
%%
I would have promised those terrorists a trip to Disneyland if it would have
gotten the hostages released.  I thank God they were satisfied with the
missiles and we didn't have to go to that extreme.
- Oliver North
%%
I believe in an America where the separation of church and state is absolute --
where no Catholic prelate would tell the president (should he be Catholic)
how to act, and no Protestant minister would tell his parishoners for whom
to vote--where no church or church school is granted any public funds or
political preference--and where no man is denied public office merely
because his religion differs from the president who might appoint him or the
people who might elect him.
- from John F. Kennedy's address to the Greater Houston Ministerial Association
  September 12, 1960.
%%
The truth is that Christian theology, like every other theology, is not only
opposed to the scientific spirit; it is also opposed to all other attempts
at rational thinking.  Not by accident does Genesis 3 make the father of
knowledge a serpent -- slimy, sneaking and abominable.  Since the earliest
days the church as an organization has thrown itself violently against every
effort to liberate the body and mind of man.  It has been, at all times and
everywhere, the habitual and incorrigible defender of bad governments, bad
laws, bad social theories, bad institutions.  It was, for centuries, an
apologist for slavery, as it was the apologist for the divine right of kings.
- H. L. Mencken
%%
The notion that science does not concern itself with first causes -- that it
leaves the field to theology or metaphysics, and confines itself to mere 
effects -- this notion has no support in the plain facts.  If it could,
science would explain the origin of life on earth at once--and there is 
every reason to believe that it will do so on some not too remote tomorrow.
To argue that gaps in knowledge which will confront the seeker must be filled,
not by patient inquiry, but by intuition or revelation, is simply to give
ignorance a gratuitous and preposterous dignity....
- H. L. Mencken, 1930
%%
The evidence of the emotions, save in cases where it has strong objective
support, is really no evidence at all, for every recognizable emotion has
its opposite, and if one points one way then another points the other way.
Thus the familiar argument that there is an instinctive desire for immortality,
and that this desire proves it to be a fact, becomes puerile when it is
recalled that there is also a powerful and widespread fear of annihilation,
and that this fear, on the same principle proves that there is nothing
beyond the grave.  Such childish "proofs" are typically theological, and
they remain theological even when they are adduced by men who like to 
flatter themselves by believing that they are scientific gents....
- H. L. Mencken
%%
There is, in fact, no reason to believe that any given natural phenomenon,
however marvelous it may seem today, will remain forever inexplicable.
Soon or late the laws governing the production of life itself will be 
discovered in the laboratory, and man may set up business as a creator
on his own account.  The thing, indeed, is not only conceivable; it is
even highly probable.
- H. L. Mencken, 1930
%%
The best that we can do is to be kindly and helpful toward our friends and
fellow passengers who are clinging to the same speck of dirt while we are
drifting side by side to our common doom.
- Clarence Darrow
%%
We're here to give you a computer, not a religion.
- attributed to Bob Pariseau, at the introduction of the Amiga
%%
...there can be no public or private virtue unless the foundation of action is
the practice of truth.
- George Jacob Holyoake
%%
"If you'll excuse me a minute, I'm going to have a cup of coffee."
- broadcast from Apollo 11's LEM, "Eagle", to Johnson Space Center, Houston
  July 20, 1969, 7:27 P.M.
%%
The meek are contesting the will.
%%
I'm sick of being trodden on!  The Elder Gods say they can make me a man!
All it costs is my soul!  I'll do it, cuz NOW I'M MAD!!!
- Necronomicomics #1, Jack Herman & Jeff Dee
%%
   On Krat's main screen appeared the holo image of a man, and several dolphins.
>From the man's shape, Krat could tell it was a female, probably their leader.
   "...stupid creatures unworthy of the name `sophonts.'  Foolish, pre-sentient
upspring of errant masters.  We slip away from all your armed might, laughing
at your clumsiness!  We slip away as we always will, you pathetic creatures.
And now that we have a real head start, you'll never catch us!  What better
proof that the Progenitors favor not you, but us!  What better proof..."
   The taunt went on.  Krat listened, enraged, yet at the same time savoring
the artistry of it.  These men are better than I'd thought.  Their insults
are wordy and overblown, but they have talent.  They deserve honorable, slow
deaths.
- David Brin, Startide Rising
%%
"I'm a mean green mother from outer space"
 -- Audrey II, The Little Shop of Horrors
%%
Like my parents, I have never been a regular church member or churchgoer.
It doesn't seem plausible to me that there is the kind of God who
watches over human affairs, listens to prayers, and tries to guide
people to follow His precepts -- there is just too much misery and
cruelty for that.  On the other hand, I respect and envy the people 
who get inspiration from their religions.
- Benjamin Spock
%%
Any sufficiently advanced technology is indistinguishable from a rigged demo.
- Andy Finkel, computer guy
%%
Being schizophrenic is better than living alone.
%%
NOWPRINT. NOWPRINT. Clemclone, back to the shadows again.
- The Firesign Theater
%%
Yes, many primitive people still believe this myth...But in today's technical 
vastness of the future, we can guess that surely things were much different.
- The Firesign Theater
%%
...this is an awesome sight.  The entire rebel resistance buried under six
million hardbound copies of "The Naked Lunch."
- The Firesign Theater
%%
We want to create puppets that pull their own strings.
- Ann Marion
%%
I know engineers.  They love to change things.
- Dr. McCoy
%%
On our campus the UNIX system has proved to be not only an effective software
tool, but an agent of technical and social change within the University.
- John Lions (U. of Toronto (?))
%%
Those who do not understand Unix are condemned to reinvent it, poorly.
- Henry Spencer, University of Toronto Unix hack
%%
"You know why there are so few sophisticated computer terrorists in the United
States?  Because your hackers have so much mobility into the establishment.
Here, there is no such mobility.  If you have the slightest bit of intellectual
integrity you cannot support the government.... That's why the best computer 
minds belong to the opposition."
- an anonymous member of the outlawed Polish trade union, Solidarity
%%
"Every Solidarity center had piles and piles of paper .... everyone was
eating paper and a policeman was at the door.  Now all you have to do is
bend a disk."
- an anonymous member of the outlawed Polish trade union, Solidarity, 
  commenting on the benefits of using computers in support of their movement
%%
Clothes make the man.  Naked people have little or no influence on society.
- Mark Twain
%%
The sooner all the animals are extinct, the sooner we'll find their money.
- Ed Bluestone
%%
He's dead, Jim.
%%
New York... when civilization falls apart, remember, we were way ahead of you.
- David Letterman
%%
You can do more with a kind word and a gun than with just a kind word.
- Al Capone
%%
The fountain code has been tightened slightly so you can no longer dip objects
into a fountain or drink from one while you are floating in mid-air due to
levitation.

Teleporting to hell via a teleportation trap will no longer occur if the 
character does not have fire resistance.

- README file from the NetHack game
%%
Remember, there's a big difference between kneeling down and bending over.
- Frank Zappa
%%
I think that all right-thinking people in this country are sick and
tired of being told that ordinary decent people are fed up in this
country with being sick and tired.  I'm certainly not.  But I'm
sick and tired of being told that I am.
- Monty Python
%%
"There is no statute of limitations on stupidity."
-- Randomly produced by a computer program called Markov3.
%%
There is a time in the tides of men,
Which, taken at its flood, leads on to success.
On the other hand, don't count on it.
- T. K. Lawson
%%
To follow foolish precedents, and wink
With both our eyes, is easier than to think.
- William Cowper
%%
It is the quality rather than the quantity that matters.
- Lucius Annaeus Seneca (4 B.C. - A.D. 65)
%%
One may be able to quibble about the quality of a single experiment, or
about the veracity of a given experimenter, but, taking all the supportive
experiments together, the weight of evidence is so strong as readily to
merit a wise man's reflection.
- Professor William Tiller, parapsychologist, Standford University,
  commenting on psi research
%%
Nothing ever becomes real until it is experienced.
- John Keats
%%
Your good nature will bring you unbounded happiness.
%%
"Our journey toward the stars has progressed swiftly.

In 1926 Robert H. Goddard launched the first liquid-propelled rocket,
achieving an altitude of 41 feet.  In 1962 John Glenn orbited the earth.

In 1969, only 66 years after Orville Wright flew two feet off the ground
for 12 seconds, Neil Armstrong, Buzz Aldrin and I rocketed to the moon
in Apollo 11."
-- Michael Collins
   Former astronaut and past Director of the National Air and Space Museum
%%
Most people exhibit what political scientists call "the conservatism of the
peasantry."  Don't lose what you've got.  Don't change.  Don't take a chance,
because you might end up starving to death.  Play it safe.  Buy just as much
as you need.  Don't waste time.

When  we think about risk, human beings and corporations realize in their
heads that risks are necessary to grow, to survive.  But when it comes down
to keeping good people when the crunch comes, or investing money in
something untried, only the brave reach deep into their pockets and play
the game as it must be played.

- David Lammers, "Yakitori", Electronic Engineering Times, January 18, 1988
%%
"We can't schedule an orgy, it might be construed as fighting"
--Stanley Sutton
%%
Weekends were made for programming.
- Karl
%%
"Once he had one leg in the White House and the nation trembled under his 
roars.  Now he is a tinpot pope in the Coca-Cola belt and a brother to the
forlorn pastors who belabor halfwits in galvanized iron tabernacles behind
the railroad yards."
- H. L. Mencken, writing of William Jennings Bryan, counsel for the supporters
  of Tennessee's anti-evolution law at the Scopes "Monkey Trial" in 1925.
%%
...we must counterpose the overwhelming judgment provided by consistent
observations and inferences by the thousands.  The earth is billions of
years old and its living creatures are linked by ties of evolutionary
descent.  Scientists stand accused of promoting dogma by so stating, but
do we brand people illiberal when they proclaim that the earth is neither
flat nor at the center of the universe?  Science *has* taught us some
things with confidence!  Evolution on an ancient earth is as well
established as our planet's shape and position.  Our continuing struggle
to understand how evolution happens (the "theory of evolution") does not
cast our documentation of its occurrence -- the "fact of evolution" --
into doubt.
- Stephen Jay Gould, "The Verdict on Creationism", The Skeptical Inquirer,
  Vol XII No. 2
%%
This was the ultimate form of ostentation among technology freaks -- to have
a system so complete and sophisticated that nothing showed; no machines,
no wires, no controls.
- Michael Swanwick, "Vacuum Flowers"
%%
Men ought to know that from the brain and from the brain only arise our
pleasures, joys, laughter, and jests as well as our sorrows, pains, griefs
and tears.  ... It is the same thing which makes us mad or delirious, inspires
us with dread and fear, whether by night or by day, brings us sleeplessness,
inopportune mistakes, aimless anxieties, absent-mindedness and acts that are
contrary to habit...
- Hippocrates (c. 460-c. 377 B.C.), The Sacred Disease
%%
Modern psychology takes completely for granted that behavior and neural function
are perfectly correlated, that one is completely caused by the other.  There is
no separate soul or lifeforce to stick a finger into the brain now and then and
make neural cells do what they would not otherwise.  Actually, of course, this
is a working assumption only....It is quite conceivable that someday the
assumption will have to be rejected.  But it is important also to see that we
have not reached that day yet: the working assumption is a necessary one and
there is no real evidence opposed to it.  Our failure to solve a problem so
far does not make it insoluble.  One cannot logically be a determinist in
physics and biology, and a mystic in psychology.
- D. O. Hebb, Organization of Behavior:  A Neuropsychological Theory, 1949
%%
Prevalent beliefs that knowledge can be tapped from previous incarnations or
from a "universal mind" (the repository of all past wisdom and creativity)
not only are implausible but also unfairly demean the stunning achievements
of individual human brains.
- Barry L. Beyerstein, "The Brain and Consciousness: Implications for Psi
  Phenomena", The Skeptical Inquirer, Vol. XII No. 2, ppg. 163-171
%%
... Fortunately, the responsibility for providing evidence is on the part of
the person making the claim, not the critic.  It is not the responsibility
of UFO skeptics to prove that a UFO has never existed, nor is it the
responsibility of paranormal-health-claims skeptics to prove that crystals
or colored lights never healed anyone.  The skeptic's role is to point out
claims that are not adequately supported by acceptable evidcence and to
provide plausible alternative explanations that are more in keeping with
the accepted body of scientific evidence. ...
- Thomas L. Creed, The Skeptical Inquirer, Vol. XII No. 2, pg. 215
%%
"Ada is the work of an architect, not a computer scientist."
- Jean Icbiah, inventor of Ada, weenie
%%
Extraordinary claims demand extraordinary proof.  There are many examples of
outsiders who eventually overthrew entrenched scientific orthodoxies, but
they prevailed with irrefutable data.  More often, egregious findings that
contradict well-established research turn out to be artifacts.  I have
argued that accepting psychic powers, reincarnation, "cosmic conciousness,"
and the like, would entail fundamental revisions of the foundations of
neuroscience.  Before abandoning materialist theories of mind that have paid
handsome dividends, we should insist on better evidence for psi phenomena
than presently exists, especially when neurology and psychology themselves
offer more plausible alternatives.
- Barry L. Beyerstein, "The Brain and Conciousness: Implications for Psi
   Phenomena", The Skeptical Inquirer, Vol. XII No. 2, ppg. 163-171
%%
Evolution is a bankrupt speculative philosophy, not a scientific fact.
Only a spiritually bankrupt society could ever believe it. ... Only
atheists could accept this Satanic theory.
- Rev. Jimmy Swaggart, "The Pre-Adamic Creation and Evolution"
%%
Evolution is as much a fact as the earth turning on its axis and going around
the sun.  At one time this was called the Copernican theory; but, when
evidence for a theory becomes so overwhelming that no informed person
can doubt it, it is customary for scientists to call it a fact.  That all
present life descended from earlier forms, over vast stretches of geologic
time, is as firmly established as Copernican cosmology.  Biologists differ
only with respect to theories about how the process operates.
- Martin Gardner, "Irving Kristol and the Facts of Life", 
   The Skeptical Inquirer, Vol. XII No. 2, ppg. 128-131
%%
...It is sad to find him belaboring the science community for its united
opposition to ignorant creationists who want teachers and textbooks to
give equal time to crank arguments that have advanced not a step beyond
the flyblown rhetoric of Bishop Wilberforce and William Jennings Bryan.
- Martin Gardner, "Irving Kristol and the Facts of Life", 
   The Skeptical Inquirer, Vol. XII No. 2, ppg. 128-131
%%
... The book is worth attention for only two reasons:  (1) it attacks
attempts to expose sham paranormal studies; and (2) it is very well and
plausibly written and so rather harder to dismiss or refute by simple
jeering.
- Harry Eagar, reviewing "Beyond the Quantum" by Michael Talbot,
   The Skeptical Inquirer, Vol. XII No. 2, ppg. 200-201
%%
e-credibility: the non-guaranteeable likelihood that the electronic data 
you're seeing is genuine rather than somebody's made-up crap.
- karl 
%%
Whenever people agree with me, I always think I must be wrong.
- Oscar Wilde
%%
Shit Happens.
%%
My mother is a fish.
- William Faulkner
%%
The further the spiritual evolution of mankind advances, the more certain it
seems to me that the path to genuine religiosity does not lie through the
fear of life, and the fear of death, and blind faith, but through striving
after rational knowledge.
- Albert Einstein
%%
The more a man is imbued with the ordered regularity of all events, the firmer
becomes his conviction that there is no room left by the side of this ordered
regularity for causes of a different nature.  For him neither the rule of
human nor the rule of divine will exists as an independent cause of natural
events.  To be sure, the doctrine of a personal God interfering with natural
events could never be refuted, in the real sense, by science, for this
doctrine can always take refuge in those domains in which scientific knowledge
has not yet been able to set foot.

But I am persuaded that such behavior on the part of the representatives
of religion would not only be unworthy but also fatal.  For a doctrine which 
is able to maintain itself not in clear light, but only in the dark, will
of necessity lose its effect on mankind, with incalculable harm to human
progress.  In their struggle for the ethical good, teachers of religion
must have the stature to give up the doctrine of a personal God, that is, 
give up that source of fear and hope which in the past placed such vast
powers in the hands of priests.  In their labors they will have to avail
themselves of those forces which are capable of cultivating the Good, the 
True, and the Beautiful in humanity itself.  This is, to be sure, a more
difficult but an incomparably more worthy task.
- Albert Einstein
%%
Anyone who knows history, particularly the history of Europe, will, I think,
recognize that the domination of education or of government by any one
particular religious faith is never a happy arrangement for the people.
- Eleanor Roosevelt
%%
Most non-Catholics know that the Catholic schools are rendering a greater
service to our nation than the public schools in which subversive textbooks
have been used, in which Communist-minded teachers have taught, and from
whose classrooms Christ and even God Himself are barred.
- Our Sunday Visitor, an American-Catholic newspaper, circa 1949
%%
Those of us who believe in the right of any human being to belong to whatever
church he sees fit, and to worship God in his own way, cannot be accused
of prejudice when we do not want to see public education connected with
religious control of the schools, which are paid for by taxpayers' money.
- Eleanor Roosevelt
%%
Spiritual leadership should remain spiritual leadership and the temporal
power should not become too important in any church.
- Eleanor Roosevelt
%%
Truth has always been found to promote the best interests of mankind...
- Percy Bysshe Shelley
%%
If atheism is to be used to express the state of mind in which God is
identified with the unknowable, and theology is pronounced to be a
collection of meaningless words about unintelligible chimeras, then
I have no doubt, and I think few people doubt, that atheists are as
plentiful as blackberries...
- Leslie Stephen (1832-1904), literary essayist, author
%%
It is wrong always, everywhere and for everyone to believe anything upon
insufficient evidence.
- W. K. Clifford, British philosopher, circa 1876
%%
Why, when no honest man will deny in private that every ultimate problem is
wrapped in the profoundest mystery, do honest men proclaim in pulpits
that unhesitating certainty is the duty of the most foolish and ignorant?
Is it not a spectacle to make the angels laugh?  We are a company of
ignorant beings, feeling our way through mists and darkness, learning only
be incessantly repeated blunders, obtaining a glimmering of truth by
falling into every conceivable error, dimly discerning light enough for 
our daily needs, but hopelessly differing whenever we attempt to describe
the ultimate origin or end of our paths; and yet, when one of us ventures
to declare that we don't know the map of the universe as well as the map
of our infintesimal parish, he is hooted, reviled, and perhaps told that
he will be damned to all eternity for his faithlessness...
- Leslie Stephen, "An agnostic's Apology", Fortnightly Review, 1876
%%
Till then we shall be content to admit openly, what you (religionists)
whisper under your breath or hide in technical jargon, that the ancient
secret is a secret still; that man knows nothing of the Infinite and
Absolute; and that, knowing nothing, he had better not be dogmatic about
his ignorance.  And, meanwhile, we will endeavour to be as charitable as
possible, and whilst you trumpet forth officially your contempt for our
skepticism, we will at least try to believe that you are imposed upon
by your own bluster.
- Leslie Stephen, "An agnostic's Apology", Fortnightly Review, 1876
%%
Marriage is the only adventure open to the cowardly.
- Voltaire
%%
What is tolerance? -- it is the consequence of humanity.  We are all formed
of frailty and error; let us pardon reciprocally each other's folly --
that is the first law of nature.
- Voltaire
%%
It is clear that the individual who persecutes a man, his brother, because
he is not of the same opinion, is a monster.
- Voltaire
%%
I simply try to aid in letting the light of historical truth into that
decaying mass of outworn thought which attaches the modern world to
medieval conceptions of Christianity, and which still lingers among us --
a most serious barrier to religion and morals, and a menace to the whole
normal evolution of society.
- Andrew D. White, author, first president of Cornell University, 1896
%%
The man scarce lives who is not more credulous than he ought to be.... The
natural disposition is always to believe.  It is acquired wisdom and experience
only that teach incredulity, and they very seldom teach it enough.
- Adam Smith
%%
I put the shotgun in an Adidas bag and padded it out with four pairs of tennis
socks, not my style at all, but that was what I was aiming for:  If they think
you're crude, go technical; if they think you're technical, go crude.  I'm a
very technical boy.  So I decided to get as crude as possible.  These days,
though, you have to be pretty technical before you can even aspire to 
crudeness.
- Johnny Mnemonic, by William Gibson
%%
However, on religious issures there can be little or no compromise.
There is no position on which people are so immovable as their religious
beliefs.  There is no more powerful ally one can claim in a debate than
Jese Christ, or God, or Allah, or whatever one calls this supreme being.
But like any powerful weapon, the use of God's name on one's behalf
should be used sparingly.  The religious factions that are growing
throughout our land are not using their religious clout with wisdom.
They are trying to force government leaders into following their position
100 percent.  If you disagree with these religious groups on a 
particular moral issue, they complain, they threaten you with a loss of
money or votes or both.  I'm frankly sick and tired of the political
preachers across this country telling me as a citizen that if I want to be
a moral person, I must believe in "A," "B," "C," and "D."  Just who do
they think they are?  And from where do they presume to claim the 
right to dictate their moral beliefs to me?  And I am even more angry as
a legislator who must endure the threats of every religious group who
thinks it has some God-granted right to control my vote on every roll
call in the Senate.  I am warning them today:  I will fight them every
step of the way if they try to dictate their moral convictions to all
Americans in the name of "conservatism."
- Senator Barry Goldwater, from the Congressional Record, September 16, 1981
%%
"I think every good Christian ought to kick Falwell's ass."
- Senator Barry Goldwater, when asked what he thought of Jerry Falwell's
suggestion that all good Christians should be against Sandra Day O'Connor's
nomination to the Supreme Court
%%
...And no philosophy, sadly, has all the answers.  No matter how assured
we may be about certain aspects of our belief, there are always painful
inconsistencies, exceptions, and contradictions.  This is true in religion as
it is in politics, and is self-evident to all except fanatics and the naive.
As for the fanatics, whose number is legion in our own time, we might be
advised to leave them to heaven.  They will not, unfortunately, do us the
same courtesy.  They attack us and each other, and whatever their 
protestations to peaceful intent, the bloody record of history makes clear
that they are easily disposed to restore to the sword.  My own belief in
God, then, is just that -- a matter of belief, not knowledge.  My respect
for Jesus Christ arises from the fact that He seems to have been the
most virtuous inhabitant of Planet Earth.  But even well-educated Christians
are frustated in their thirst for certainty about the beloved figure
of Jesus because of the undeniable ambiguity of the scriptural record.
Such ambiguity is not apparent to children or fanatics, but every
recognized Bible scholar is perfectly aware of it.  Some Christians, alas,
resort to formal lying to obscure such reality.
- Steve Allen, comdeian, from an essay in the book "The Courage of 
  Conviction", edited by Philip Berman
%%
...it still remains true that as a set of cognitive beliefs about the
existence of God in any recognizable sense continuous with the great
systems of the past, religious doctrines constitute a speculative
hypothesis of an extremely low order of probability.
- Sidney Hook
%%
A fanatic is a person who can't change his mind and won't change the subject.
- Winston Churchill
%%
We're fighting against humanism, we're fighting against liberalism...
we are fighting against all the systems of Satan that are destroying
our nation today...our battle is with Satan himself.
- Jerry Falwell
%%
They [preachers] dread the advance of science as witches do the approach
of daylight and scowl on the fatal harbinger announcing the subversions
of the duperies on which they live.
- Thomas Jefferson
%%
Saints should always be judged guilty until they are proven innocent.
- George Orwell
%%
As I argued in "Beloved Son", a book about my son Brian and the subject
of religious communes and cults, one result of proper early instruction
in the methods of rational thought will be to make sudden mindless
conversions -- to anything -- less likely.  Brian now realizes this and
has, after eleven years, left the sect he was associated with.  The 
problem is that once the untrained mind has made a formal commitment to
a religious philosophy -- and it does not matter whether that philosophy
is generally reasonable and high-minded or utterly bizarre and 
irrational -- the powers of reason are suprisingly ineffective in 
changing the believer's mind.
- Steve Allen, comdeian, from an essay in the book "The Courage of 
  Conviction", edited by Philip Berman
%%
Nothing is easier than to denounce the evildoer; nothing is more difficult
than to understand him.
- Fyodor Dostoevski
%%
We may not be able to persuade Hindus that Jesus and not Vishnu should
govern their spiritual horizon, nor Moslems that Lord Buddha is at the
center of their spiritual universe, nor Hebrews that Mohammed is a major
prohpet, nor Christians that Shinto best expresses their spiritual 
concerns, to say nothing of the fact that we may not be able to get
Christians to agree among themselves about their relationship to God.
But all will agree on a proposition that they possess profound spiritual
resources.  If, in addition, we can get them to accept the further
proposition that whatever form the Deity may have in their own theology,
the Deity is not only external, but internal and acts through them, and
they themselves give proof or disproof of the Deity in what they do and
think; if this further proposition can be accepted, then we come that
much closer to a truly religious situation on earth.
- Norman Cousins, from his book "Human Options"
%%
The Messiah will come.  There will be a resurrection of the dead -- all
the things that Jews believed in before they got so damn sophisticated.
- Rabbi Meir Kahane
%%
The world is no nursery.
- Sigmund Freud
%%
If one inquires why the American tradition is so strong against any
connection of State and Church, why it dreads even the rudiments of
religious teaching in state-maintained schools, the immediate and
superficial answer is not far to seek....
The cause lay largely in the diversity and vitality of the various
denominations, each fairly sure that, with a fair field and no favor,
it could make its own way; and each animated by a jealous fear that,
if any connection of State and Church were permitted, some rival
denomination would get an unfair advantage.
- John Dewey (1859-1953), American philosopher, 
  from "Democracy in the Schools", 1908
%%
Already the spirit of our schooling is permeated with the feeling that
every subject, every topic, every fact, every professed truth must be
submitted to a certain publicity and impartiality.  All proffered 
samples of learning must go to the same assay-room and be subjected to 
common tests.  It is the essence of all dogmatic faiths to hold that
any such "show-down" is sacrilegious and perverse.  The characteristic
of religion, from their point of view, is that it is intellectually
secret, not public; peculiarly revealed, not generall known; 
authoritatively declared, not communicated and tested in ordinary 
ways...It is pertinent to point out that, as long as religion is
conceived as it is now by the great majority of professed religionists,
there is something self-contradictory in speaking of education in
religion in the same sense in which we speak of education in topics
where the method of free inquiry has made its way.  The "religious"
would be the last to be willing that either the history of the
content of religion should be taught in this spirit; while those
to whom the scientific standpoint is not merely a technical device,
but is the embodiment of the integrity of mind, must protest against
its being taught in any other spirit.
- John Dewey (1859-1953), American philosopher, 
  from "Democracy in the Schools", 1908
%%
In the broad and final sense all institutions are educational in the
sense that they operate to form the attitudes, dispositions, abilities
and disabilities that constitute a concrete personality...Whether this
educative process is carried on in a predominantly democratic or non-
democratic way becomes, therefore, a question of transcendent importance
not only for education itself but for its final effect upon all the
interests and activites of a society that is committed to the democratic
way of life.
- John Dewey (1859-1953), American philosopher
%%
History shows that the human mind, fed by constant accessions of knowledge,
periodically grows too large for its theoretical coverings, and bursts
them asunder to appear in new habiliments, as the feeding and growing
grub, at intervals, casts its too narrow skin and assumes another...
Truly the imago state of Man seems to be terribly distant, but every
moult is a step gained.
- Charles Darwin, from "Origin of the Species"
%%
...I would go so far as to suggest that, were it not for our ego and 
concern to be different, the African apes would be included in our 
family, the Hominidae.
- Richard Leakey
%%
It is inconceivable that a judicious observer from another solar system
would see in our species -- which has tended to be cruel, destructive,
wasteful, and irrational -- the crown and apex of cosmic evolution.
Viewing us as the culmination of *anything* is grotesque; viewing us
as a transitional species makes more sense -- and gives us more hope.
- Betty McCollister, "Our Transitional Species", 
  Free Inquiry magazine, Vol. 8, No. 1
%%
"Well, you see, it's such a transitional creature.  It's a piss-poor
reptile and not very much of a bird."
- Melvin Konner, from "The Tangled Wing", quoting a zoologist who has
studied the archeopteryz and found it "very much like people"
%%
"Creation science" has not entered the curriculum for a reason so simple
and so basic that we often forget to mention it: because it is false, and
because good teachers understand exactly why it is false.  What could be
more destructive of that most fragile yet most precious commodity in our
entire intellectualy heritage -- good teaching -- than a bill forcing
honorable teachers to sully their sacred trust by granting equal treatment
to a doctrine not only known to be false, but calculated to undermine any
general understanding of science as an enterprise?
-- Stephen Jay Gould, "The Skeptical Inquirer", Vol. 12, page 186
%%
It is not well to be thought of as one who meekly submits to insolence and
intimidation.
%%
"Regardless of the legal speed limit, your Buick must be operated at
speeds faster than 85 MPH (140kph)."
-- presumable misprint from the 1987 Buick Grand National owners manual.
%%
"Your attitude determines your attitude."
-- Zig Ziglar, self-improvement doofus
%%
In arguing that current theories of brain function cast suspicion on ESP,
psychokinesis, reincarnation, and so on, I am frequently challenged with
the most popular of all neuro-mythologies -- the notion that we ordinarily
use only 10 percent of our brains...

This "cerebral spare tire" concept continues to nourish the clientele of
"pop psychologists" and their many recycling self-improvement schemes.  As
a metaphor for the fact that few of us fully exploit our talents, who could
deny it?  As a refuge for occultists seeking a neural basis of the miraculous,
it leaves much to be desired.
-- Barry L. Beyerstein, "The Brain and Conciousness:  Implications for
   Psi Phenomena", The Skeptical Enquirer, Vol. XII, No. 2, pg. 171
%%
Thufir's a Harkonnen now.
%%
"By long-standing tradition, I take this opportunity to savage other
designers in the thin disguise of good, clean fun."
-- P. J. Plauger, from his April Fool's column in April 88's "Computer Language"
%%
"If you want to eat hippopautamus, you've got to pay the freight."
-- some IBM guy
%%
Parkinson's Law:  Work expands to fill the time alloted it.
%%
Karl's version of Parkinson's Law:  Work expands to exceed the time alloted it.
%%
It is better to never have tried anything than to have tried something and
failed.
- motto of jerks, weenies and losers everywhere
%%
"Our journeys to the stars will be made on spaceships created by determined,
hardworking scientists and engineers applying the principles of science, not
aboard flying saucers piloted by little gray aliens from some other dimension."
-- Robert A. Baker, "The Aliens Among Us:  Hypnotic Regression Revisited",
   The Skeptical Inquirer, Vol. XII, No. 2
%%
"...all the good computer designs are bootlegged; the formally planned products,
if they are built at all, are dogs!"
-- David E. Lundstrom, "A Few Good Men From Univac", MIT Press, 1987
%%
     0h n0!@# Y0r SySteM hAz bEeN
    TAkeN 0veR bY k0mUTeR P1rAteS!@#
           _._                          Y0 h0 h0 aNNa b0ttLe 0f rUm!@#
          /   \       _____________
      __/ L0CK! \__  /             \      Avast, Ya SkUrvEE d0g!@#
     (_____________)|  Arrr! I'm a  |      Yav bEEn b0ArDeD by tHe
        |\___// |   |    Pirate!    |      M0st r00tenEst, t00t1nezT
        | ||| O |  / \_____________/       C0mpUtEr p1rAteZ tHat evER
         \  v  / /                          d1D sAle thE s1l1k0n seA!@#
           \"/         Hay Sk0Tt!@
            "        H0wZ j1m d01ng?!?@#       L egion
      ________________                         0 f             LaRrY L0Ck
     |L0CK's G0al aNd |                        C 0dE              SeZ:
     | Misshun!@#:    |                        K ydz     \||//  /~~~~~~~\
     |________________|       [tHeSE         / !          Oo   | Ptttht! |
     |  2 B s0 El1tE  |       KarAkturz  ---{  @         ()^() /\_______/
     |  ThAt 0ur HedZ |   d0n't MeaN Sh1t.]  \ #          (U)
     |  X-PL0De!@#$   |
     |________________|       "Man...we're so lame, it hurts..."
 
        Th1z M0TD 1z MuCh beTTeR thAn tHe oNe thAt wAz up heRe B 4!@#
 
                        GirLiee Usurz!? WaReZ the G1rl1e uZurz!?
 
%%
======================================================
 "My boss says we need some eunuch programmers."
 "I think he means UNIX and I already know UNIX."
 "Well, if the company nurse comes by, tell her
  I said never mind."
                                     - Dilbert -
%%
The vermine is a small black and white relative of the lemming, found in
the cold Hublandish regions. Its skin is rare and highly valued, especially
by the vermine itself; the selfish little bastard will do anything rather
than let go of it.
        -- Discworld wildlife

%%
Politeness

``Moving parts in rubbing contact require lubrication to avoid excessive
wear. Honorifics and formal politeness provide lubrication where people rub
together. Often the very young, the untraveled, the naive, the
unsophisticated deplore these formalities as `empty,' `meaningless,' or
`dishonest,' and scorn to use them. No matter how `pure' their motives, they
thereby throw sand into machinery that does not work to well at best.''

--Lazarus Long
%%
Best song lyrics of 1996

``The devil's not in the details, the devil's in my pants.''

A band called Dog's Eye View.
%%
Computer Geeks

``Computer types? Well, there's your hippies, and your nerds, and your
suits. The hippies and the nerds are all right but ya gotta watch out for
the suits.''

Video store clerk
%%
Growing older

The difference between children and adults is that adults have a lot more to
lose when they screw up.

Steve Alexander
%%
On Competing in the 100's

``I don't think anyone realized the magnitude of change required to compete.
You tend to look for changes of 10 percent when what you need is a ten- or
twelvefold change.''

David Kearns, Xerox CEO

Speaking about restructuring large companies.
%%
On Accountability

``It's called accountability, and more and more shareholders are demanding
it.''

Richard Koppes, CalPERS
Speaking about waste in large companies.
%%
On Types of People

``There are basically two types of people. People who accomplish things, and
people who claim to have accomplished things. The first group is less
crowded.''

Mark Twain
%%
On Being Nice

``It's nice to be important, but it's important to be nice.''

Anon.
%%
On The Real World

``In college, they started all physics problems with `assume a frictionless
surface.' The difference between college and industry is that in college you
spend all your time on the formulas and in industry you spend all your time
on friction.''

Larry McVoy
%%
On Networking Architecture

``Do you want protocols that look nice or protocols that work nice?''

Mike Padlipsky, internet architect
%%
On Architecture

Architect: Someone who knows the difference between that which could be done
and that which should be done.

Larry McVoy
%%
On Design

``Numbers talk, bullshit walks.''

Anonymous
%%
On Denial

``Evil comes from denying reality. Period. You have to distort reality to
rationalize evil acts.''

Mary Gaitskill, novelist
%%
On Staying Fresh

``You look at people who are five years out of college that got A's in
calculus. Now they can't do calculus. So they shouldn't have jobs doing
calculus, and they certainly shouldn't be telling other people how to do
calculus.''

Jeff Bonwick, frustrated Sun engineer
%%
On Goals

``Some people lose sight of the fact that a computer is basically a fancy
filing cabinet. Those people are doomed to failure in the computer
industry.''

Larry McVoy
%%
On Losing Touch

``Should we build the system that our customers want or should we build the
system that PSARC wants?''

Jeff Bonwick, frustrated Sun engineer
%%
On Reality

``The truth is the truth. An opinion is an opinion. Don't confuse the two.''

Larry McVoy
%%
On Bureaucracy

``I can't understand this proliferation of paperwork. It's useless to fight
the forms. You've got to kill the people producing them.''

Vladimir Kabaidze

In a speech to the Communist Party.
%%
On Business

``Don't confuse selling with installing.''

Hal Stern
%%
On I/O Channels

``Putting a Tsunami in the middle of the data path is like putting a child
in the middle of a 4 lane highway.''

Jeff Banks, Sun Storage array engineer
%%
On Truth

``The truth stands apart from mere mortals.''

William Shakespeare
%%
On Memory Systems Design

``Parity is for farmers.''

Seymour Cray

``Coherence is for Yogis.''

Renu Ram
%%
On Unix and Unix Hackers

``The problem here is that there is parent and child but no adult.''

Lynne Jolitz
%%
On The Real World

``In theory, practice and theory are the same, but in practice they are
different.''

Larry McVoy
%%
Linux on MIPS

``Yeah, that kernel is so great it finds hardware you don't even have.''

Steve Alexander, Silicon Graphics

Commenting on Dave Miller's Linux port to MIPS - it found an EISA    [Image]
bus that wasn't there.
%%
On The Scale of Things

``Anyone who is worried about a 2-3x improvement is ignoring the 10-1000x
improvement sitting in their building.''

Random Cluster People
%%
On People

``Never ascribe to malice what can be explained by stupidity.''

Anon.
%%
On Talent

``The value of a technical conversation is inversely proportional to how
well the participants are dressed.''

Larry McVoy
%%
On Tact

``We're operating from a knowledge base that is not very dense.''

Jim Skeen

Explaining how to say that we don't know what we are doing.
%%
On Performance

``If the performance ain't crankin', you're just yankin'.''

Steve Alexander, Silicon Graphics
%%
On typing

``After 40 Terabytes, your fingers start to hurt.''

David Miller, Linux kernel hacker
%%
Architects

He was a very great artist at the business of designing aeroplanes, and like
all great designers in the aircraft industry he was a perfect swine to deal
with.

There is, of course, a good deal of explanation in the psychology for this
universal characteristic of the greatest aeroplane designers. A beautiful
aircraft is the expression of the genius of a great engineer who is also a
great artist. It is impossible for that man to carry out the whole of the
design himself; he works through a design office staffed by a hundred
draugthsman or more. A hundred minds, each with their own less competent
ideas, are striving to modify the chief designer's original conception. If
the design is to appear in the end as a great artistic unity, the chief
designer must be a man of immensely powerful will, capable of imposing his
idea and way of doing things on each of his hundred draughtsman, so that
each one is too terrified to insert any of his own ideas. If the chief
designer has not got this personality and strength of will, his original
conception will be distorted in the design office and will appear as just
another, not-so-good aeroplane. He will not then be ranked as a good chief
designer.

All really first class designers, for this reason, are both artists,
engineers, and men of a powerful and intolerant temper, quick to resist the
least modification of the plans, energetic in fighting the least
infringement upon what they regard as their own sphere of action. If they
were not so, they could not produce good aeroplanes.

Nevil Shute
%%
"[Sir, you're drunk!] Yes, madam, but in the morning I'll be sober and
you'll still be ugly!" 
- Winston Churchill
%%
"...and in the Eighth Square we shall be Queens together, and it's all
feasting and fun!" 
- Lewis Carroll
%%
"I'd give my right arm to be ambidextrous." 
- Tom Servo
%%
"My brain is my second-favorite organ" 
- Woody Allen
%%
"If you don't grow up by age 35, you don't have to." 
- James Gurney
%%
"If God had meant us to be naked, we would have been born that way" 
- Craig Taverner
%%
"I'd rather have a bottle in front of me than a frontal lobotomy." 
- Tom Waits
%%
"Whenever I have to choose between two evils, I always like to try the one I
haven't tried before." 
- Mae West
%%
"To think before you speak is like wiping your ass before you shit." 
- Anonymous
%%
"In theory there is no difference between theory and practice, but in
practice there is." 
- Rico Cozzio
%%
"You can't drop an atom bomb on Chicago!" 
- Peter Graves in "Beginning of the End"
%%
"Only when all of those around you are different will you truly belong." 
- Little Man Tate
%%
"There aren't any normal people." 
- John M. Scott
%%
"Normal is a setting on my clothes dryer." 
- Anonymous
%%
"To keep the body in good health is a duty...Otherwise we shall not be able
to keep our mind strong and clear." 
- Buddha
%%
"At first I thought I should be a second Beethoven; presently I found that
to be another Schubert would be good; then gradually, satisfied with less
and less, I resigned to be a Humperdinck." 
- Engelbert Humperdinck
%%
"Sousa was no Beethoven. Nonetheless, he was Sousa." 
- Deems Taylor
%%
"There is nothing to it. You only have to hit the right note at the right
time, and the instrument plays itself." 
- Johann Sebastian Bach
%%
"Silence is the fabric upon which the notes are woven." 
- Lawrence Duncan
%%
"The notes I handle no better than many pianists. But the pauses between the
notes - ah, that is where the art resides!" 
- Artur Schnabel
%%
"After silence, that which comes nearest to expressing the inexpressible is
music." 
- Aldous Huxley
%%
"Oh how wonderful, really wonderful opera would be if there were no
singers!" 
- Gioacchino Rossini
%%
"Opera is where a guy gets stabbed in the back, and instead of dying, he
sings." 
- Robert Benchley
%%
"In opera, there is always too much singing." 
- Claude Debussy
%%
"I cannot tell you how much I love to play for people. Would you believe it
- sometimes when I sit down to practice and there is no one else in the
room, I have to stifle an impluse to ring for the elevator man and offer him
money to come in and hear me." 
- Artur Rubinstein
%%
"I am not fitted to give concerts. The audience intimidates me, I feel
choked by its breath, paralyzed by its curious glances, struck dumb by all
those strange faces." 
- Frederic Chopin
%%
"Wagner's music is actually better than it sounds." 
- Mark Twain
%%
"One can't judge Wagner's opera Lohengrin after a first hearing, and I
certainly don't intend hearing it a second time." 
- Gioacchino Rossini
%%
"Art was not created as a way to riches. Strive to become a true artist; all
else will take care of itself." 
- Robert Schuman
%%
"I would rather play Chiquita Banana and have my swimming pool than play
Bach and starve." 
- Xavier Cougat
%%
"I produce music as an apple tree produces apples." 
- Camille Saint-Saens
"I write as a sow piddles." 
- Wolfgang Amadeus Mozart
%%
"It is not because things are difficult that we do not dare; it is because
we do not dare that they are difficult." 
- Seneca
%%
"A man would do nothing if he waited until he could do it so well that no
one would find fault with what he had done." 
- Cardinal Newman
%%
"What doesn't kill me makes me stronger." 
- Albert Camus
%%
"When I feed the poor, they call me saint. When I ask why the poor do not
have food, they call me communist." 
- Archbishop Camaran
%%
"They gave me a medal for killing a man, and a discharge for loving one." 
- Leonard Matlovich
%%
"Real learning comes about when the competitive spirit has ceased." 
- J. Krishnamurti
%%
"Experiments are the only means of knowledge at our disposal. The rest is
poetry and imagination." 
- Max Planck
%%
"Imagination is more important than knowledge." 
- Albert Einstein
%%
"Satisfaction of one's curiosity is one of the greatest sources of happiness
in life." 
- Linus Pauling
%%
"The most beautiful thing we can experience is the mysterious." 
- Albert Enistein
%%
"I think all you scientists are crackpots." 
- Unknown actor in "When Worlds Collide"
%%
"Man will begin to recover the moment he takes art as seriously as physics,
chemistry or money." 
- Ernst Levy
%%
"Every child is an artist. The problem is how to remain an artist once he
grows up." 
- Pablo Picasso
%%
"If people knew how hard I worked to get my mastery, it wouldn't seem so
wonderful at all." 
- Michelangelo
%%
"Inspiration may be a form of superconsciousness, or perhaps of
subconsciousness - I wouldn't know. But I am sure it is the antithesis of
self-consciousness." 
- Aaron Copeland
%%
"One does not discover new lands without consenting to lose sight of the
shore for a very long time." 
- Andre Gide
%%
"The job of the artist is always to deepen the mystery." 
- Francis Bacon
%%
"Art evokes the mystery without which the world would not exist." 
- Rene-Francois-Ghislain Magritte
%%
"Cerebration is the enemy of originality in art." 
- Martin Ritt
%%
"We are perhaps not far removed from the time when we shall be able to
submit the bulk of chemical phenomena to calculation." 
- Joseph Louis Gay-Lussac, Memoires de la Societe d'Arcueil 2:207 (1808)
%%
"Every attempt to employ mathematical methods in the study of chemical
questions must be considered profoundly irrational and contrary to the
spirit of chemistry. If mathematical analysis should ever hold a prominent
place in chemistry - an aberration which is happily almost impossible - it
would occasion a rapid and widespread degeneration of that science." 
- A. Comte, Philosophie Positive, 1830.
%%
"All of chemistry, and with it crystallography, would become a branch of
mathematical analysis which, like astronomy, taking its constants from
observation, would enable us to predict the character of any new compound
and possibly the source from which its formation might be anticipated." 
- Charles Babbage, 1838
%%
"The underlying physical laws necessary for the mathematical theory of a
large part of physics and the whole of chemistry are thus completely known,
and the difficulty is only that the application of these laws leads to
equations much too complicated to be soluble." 
- P. Dirac, Proc. Roy. Soc (London) 123:714 (1929)
%%
Once again, the hopeless cowardly Americans were back to repeat their 
cowardly act hiding behind a technological advance that God, most 
gracious, wanted it to be their curse and cause for shame. 
- Saddam Hussein
%%
"SCSI is *NOT* magic. There are *fundamental technical reasons* why it
 is necessary to sacrifice a young goat to your SCSI chain now and
 then." -- John Woods
%%
"I feel obliged to note at this point that goat sacrifice is
not an official SGI recommended SCSI preventative maintenance
procedure. Neither is using 8-foot unshielded ribbon cables.
However, if either of these disgusting practices are effective
in your environment, I'm not going to argue. SCSI may not be magic,
but the forces at work appear to be beyond the ken of man."

        Elizabeth Zwicky
        zwicky@neu.sgi.com
%%
Finding integers x, y and z such that sendmail x.y.z exists and does not
have a buffer overflow bug is thought to be infeasible, but AFAIK there
are no mathematical proofs relating it to other hard problems.

David Hopwood
david.hopwood@lmh.ox.ac.uk, hopwood@zetnet.co.uk
%%
        "It doesn't work."
        "It's state of the art!"
        "But it *doesn't work*!?!"
        "That *is* the state of the art!"

Jerry Leichter, leichter@smarts.com
%%
It is impossible to understand...a person who receives a salary from the 
government criticizing [the executive] in his publication.

Russian First Deputy Prime Minister Chubais
%%

    Top 10 Reasons Why Data is Analyzed Before it is Collected

    10. We practice Zen and the Art of Ground Water Sampling.
    9. We can impress auditors that way.
    8. We can tell whether collecting the sample will be worth our time.
    7. We get results much sooner this way.
    6. It saves money.
    5. It lets us know what type of sample we need to take.
    4. We can notify the well owner that we have a hunch their well should be
       tested.
    3. Our lab has an incredible turn around time.
    2. The lab transmits data faster than light speed, so it arrives before it
       is sent.
    1. Our computer's clock battery has been dead since 1992, so every sample
       gets that creation date.

From RISKS DIGEST 19.34
%%
Microsoft? Is it some kind of toilet paper?

Juha Helin at University of Turku, Finland
%%
If Microsoft don't think you need it, it's not there and there's no
way to include it yourself. -- Geoff Lane, a.s.r.
%%
Man wanted to work in dynamite factory.  Must be willing to travel.

Paul Crittenden at Simpson College
%%
You can't get a slug to jump.
-- Rory O'brien
%%
When asked what kind of CAD tools he used for the CRAY-1, Seymour Cray said
that he liked #3 pencils with quadrille pads.  He recommended using the back
sides of the pages so that the lines were not so dominant.
%%
When told that Apple had just bought a Cray to design the next Apple,
Seymour Cray said `That's funny; I just bought an Apple to design the
next Cray'.
%%
(counting down from top 50 oxymorons...)
10.  Tight slacks
9.   Definite maybe
8.   Pretty ugly
7.   Twelve-ounce pound cake
6.   Diet ice cream
5.   Rap music
4.  Working vacation
3.  Exact estimate
2.  Religious tolerance
And the NUMBER ONE top oxy-MORON
1.   Microsoft Works
---From the Top 50 Oxymorons (thanks to Richard Kennedy)
%%
TCFKAD == The Company Formerly Known As Digital 
%%
Osborn's Law: "Variables Won't, Constants Aren't"
%%
Pi is quite misunderstood at times.  Consider the expression "pi r
square".  That's incorrect.  Pi are round.  Cake are square.

Ken Plotkin at El Pollo Diablo Fan Club
%%
ANd Logical and OR Logical alone are not indecent, but they are
indecent if a Sign EXtend instruction follows.

From the Intel 8051 Processor Handbook
%%
Academics fight so hard because the stakes are so small.

Anonymous
%%
Canada is like vichysois: Cold, partly French, and difficult to stir.

bruce.rennie@numetrix.com
%%
January 1, 2000
Re:  Vacation Pay

Dear Valued Employee:

Our records indicate that you have not used any vacation time over the
past 100 year(s).  As I'm sure you are aware, employees are granted 3
weeks of paid leave per year or pay in lieu of time off.  One additional
week is granted for every 5 years of service.

Please either take 9,400 days off work or notify our office and your next
pay cheque will reflect payment of $8,277,432.22 which will include all
pay and interest for the past 1,200 months.

Sincerely, Automated Payroll Processing

- Lenny Foner, Risks Digest 20.16
%%
Documentation is the castor oil of programming

- Gerry Weinberg (apocriphia)
%%
Calling C++ an object-oriented language is like calling Windows NT a
best-of-breed high quality operating system. They only resemble what they
claim to be.

- William Beebe <wbeebe@bellsouth.net>
%%
[A] man was excluded from the jury after asking the judge to tell him the
date of birth of the defendant so that he could draw up an astrological
chart to help him to decide on guilt or innocence. 

- Times 1998/12/29
%%
Their work function is somewhat similar to that of a janitor of a major
building.  They're supposed to keep everything working, but nobody
likes them, and they're not supposed to be *seen* unless you want to
complain about something.  As the job skills are very special, and also
very particular to the place they work, it's not easy to find
replacements or extra staff.  15 years at school and a masters degree
doesn't mean you get a good man for the job.  So the department is
often understaffed, or overstaffed with people who can't do their job,
cause they don't understand it.  To the accounting department, they're
just an expense, and (unlike programmers) never generate any revenue.
The only times the Big Bosses see them is when they bring bad news, and
need Lots of Money, Quickly.  Nobody likes the messenger of bad news.
Or expenses.  Or people associated with things not running smoothly,
even though they're the reason why things *do* run smoothly.  So
they're seldom or ever brought into meetings or discussions where their
field is concerned.  They have to fight the results of those meetings
instead.  And nobody ever compliments them on their job, or asks their
advice before doing any major investments.  But nobody has any qualms
about calling the sysadmin at 1:30 am in the morning, asking why they
can't get their private email.  Or bitching about there being too
little disk space available, when removing their ".*xxx.*\.(jpg|gif)"
files would have nicely solved that problem.

This, of course, breeds underpaid, overworked, bitter, and anti-
social sysadmins.  Yes, there are exceptions.  But unfortunately
this is the way many sysadmins live their life[1].

How about a "Say hi and smile to your sysadmin week"?

[1]:  Contradiction in terms.  Sysadmins *have* no lives[2].
[2]:  Except for A. Conway's life.
- Arthur Hagen on computer system administrators
%%
 Dear Boss:

  I hope that I haven't misunderstood your instructions.  Because to be
  honest, none of this Y to K problem makes any sense to me.  At any
  rate I have finished the conversion of all of the months on all the
  company calendars for next year (year 2000).  The calendars have
  returned from the printer and are ready to be distributed with the
  following new months:

      Januark
      Februark
      Mak
      Julk

  I've also changed the following days:

      Mondak
      Tuesdak
      Wednesdak
      Thursdak
      Fridak
      Saturdak
      Sundak

  In general, all references to "Day" were changed to "Dak"
  (e.g. "President's Dak").  And all references to "Birthday" were
  changed to "Birthdak" (e.g. "Washington's Birthdak").

  I had a hard time deciding about "New Year's Day", "Martin Luther King,
  Jr. Day", "Yom Kippur", and "Hanukkah", but I finally changed them to "New
  Kear's Dak", "Martin Luther Ying, Jr. Dak", "Kom Yippur", and "Hanuyyah".

- Dave Stringer-Calvert in Risks 20.21
%%
Which is/are true?

   o  HAL was designed to be one ahead of IBM

   o  WNT was designed to be one behind VMS

   o  Lucy in the Sky with Diamonds is a reference to psychedelic drugs.

%%
What do you mean, don't shoot the messenger ? don't you know ?
It's company policy, we ALWAYS shoot the messenger !
%%
... Russia suffers from ... a dinosaur syndrome. Its head is small 
and its body enormous. By the time a signal from the tiny and often
sad to say brainless head has reached the end of the tail, the 
situation has often changed.

- Aleksandr Lebed in "Suddeutsche Zeitung", Feb. 18, 1999
%%
I see technologically illiterate people using
`magic' every day -- they just consider them to
be ``black boxes'' and proceed with their jobs,
lives, and interests.  I find it amusing to
watch high energy physicists treating computer
systems thus.  In most ways, these scientists
are very literate; but computers and their
systems are not always something that they feel
a need to learn how they function internally --
only how to use them to do the functions they
want done.

- Randolph J. Herber, system programmer at Fermi National 
Accelerator Laboratory
%%
  PROGRAMMERS DRINKING SONG:

  99 little bugs in the code,
  99 bugs in the code,
  fix one bug, compile it again,
  101 little bugs in the code.
  101 little bugs in the code.....
    (Repeat until BUGS = 0)

- Anonymous programmer at Disney
%%
             "We may not get everything right,
    but at least we knew the century was going to end."

-- Apple Computer, HAL 9000 ad for Macintosh Y2K compliance
%%
The Kosovo crisis reiterates, more than anything else, the fact
that the foreign policy of the world's most powerful nation and
its allies can be summed up in a four-letter word: bomb.

-- Hindustan Times, Editorial of March 25, 1999
%%
Tupoe i zlobnoe zhivotnoe dolzhno sidet' v kletke, a ne v Kremle.

[A stupid and vicious animal must be in a cage, not in the Kremlin.]

-- A plakard on a rally in favour of Eltsin's impeachement; the 
photograph appeared in the Calgary Herald on May 15, 1999
%%
This is supposedly a true story from a recent Defence Science Lectures
Series, as related by the head of the Australian DSTO's Land
Operations/Simulation division.

They've been working on some really nifty virtual reality simulators, the
case in point being to incorporate Armed Reconnaissance Helicopters into
exercises (from the data fusion point of view). Most of the people they
employ on this sort of thing are ex- (or future) computer game programmers.
Anyway, as part of the reality parameters, they include things like trees
and animals. For the Australian simulation they included kangaroos.  In
particular, they had to model kangaroo movements and reactions to
helicopters (since hordes of disturbed kangaroos might well give away a
helicopter's position).

Being good programmers, they just stole some code (which was originally used
to model infantry detachments reactions under the same stimuli), and changed
the mapped icon, the speed parameters, etc. The first time they've gone to
demonstrate this to some visiting Americans, the hotshot pilots have decided
to get "down and dirty" with the virtual kangaroos. So, they buzz them, and
watch them scatter. The visiting Americans nod appreciatively... then gape
as the kangaroos duck around a hill, and launch about two dozen Stinger
missiles at the hapless helicopter.  Programmers look rather embarrassed at
forgetting to remove *that* part of the infantry coding... and Americans
leave muttering comments about not wanting to mess with the Aussie
wildlife...

As an addendum, simulator pilots from that point onwards avoided kangaroos
like the plague, just like they were meant to do in the first place...

- Lindsay Marshall in Risks Digest 20.47
%%

This morning, Tele Denmark Internet was out of order, because the power
supply failed. It meant that customer couldn't connect to the Internet.

The problem occu[r]red at 7:45, when a truck drove into the cabinet that
supplies Tele Denmark Internet with power. The truck was delivering a new
uninterruptible power supply, and therefore the old UPS had been disconnected.
At 9:00 the power returned and the different system began to reestablish, and
everything is expected to return to normal again by 10:30. Tele Denmark
Internet regrets the disturbance to its customers.

- Finn Jensen in Risks Digest 20.56
%%
Sir or Madam Winston Churchill, when he or she was a boy or girl ..
%%
On 16 Oct 1999, Cornell University seniors registering for classes via the
online CoursEnroll system were greeted by the following splash screen text:
"Use this service to enter your pre-enrollment requests for the Spring 1900
semester."  Following this screen, the main application window proclaimed in
a large font: "CoursEnroll for Spring 1900."  The glitch was quickly
corrected.

- James Byers in Risks Digest 20.64
%%

  For a long time it puzzled me how something so expensive, so leading
  edge, could be so useless, and then it occurred to me that a computer is a
  stupid machine with the ability to do incredibly smart things, while
  computer programmers are smart people with the ability to do incredibly
  stupid things. They are, in short, a perfect match.

- Bill Bryson, "Notes from a Big Country"
%%
I couldn't engage in a battle of the mind with you, 'cause it wouldn't
be fair to do so against an unarmed opponent.
%%
   REVIEW: FORTRAN troll by E.Robert Tisdale, Mar 7. 2000

      This is a story about opportunity lost. When Mr. Tisdale set out
to write this troll, it held great promise - an excellent plot, a very
receptive audience, even some statistics to back up his claims.
Ultimately, however, he fell prey to his own unfortunate tendency to
oversell. Simply put, the troll is unsubtle. The true trolling classics
("Where can I find cats for medical experiments" posted to
rec.pets.cats, "How can shadowed objects be photographed in the Apollo
surface pictures" posted to sci.space.history, etc. ) all have a certain
subtelty and guile to them. This troll simply shouts "you're all
doomed!". Where's the suspense? Where's the story development?  Even
"How can I use ENTRY(x) in F90" or "How many labels can I specify in a
computed GOTO" hold the audience and leave them wanting more. This troll
was a sad one-shot - thrilling for a second, but leaving the reader
unsatisfied.

      I have to give this troll 2.5/10. It'll never get you to the "in
crowd" on alt.bigfoot.

- Brett Buck in comp.lang.fortran
%%
It's not so much a tribute to my morality as a criticism of our nation's 
law enforcement.

- Syndicated humor columnist DAVE BARRY, telling the Austin American-
  Statesman he's never spent a night in jail. 
%%
Orbitals clearly exist since Mulliken and I have been writing about them
for the past 60 years

- Linus Pauling, quoted from a CCL post by Eric R. Scerri on 13 Sep 2000
%%
Reform/Alliance MP Ted White (member for Lynn Valley) recently wrote
this in response to a letter from a UBC professor:

"Although I do not question that some of the research funded by the
SSHRC has been quite constructive and forward-looking, I also know that
much of it is not. For example, I cannot conceive of any way in which
research in the fields of fine arts, classical studies, philosophy,
anthropology, modern languages and literature, or medieval studies,
which together accounted for over $5.3 million in grants from SSHRC in
the last fiscal year, contributes to any 'understanding of Canadian
society or the challenges we face as we enter the 21st century.'
Research into such fields, as far as my constituents are concerned,
constitutes a personal past-time, and has no benefit to Canadian
taxpayers. As their representative, I cannot justify funding such
activities with their tax dollars."
%%
If by "hotter", you inquire of the potential for increased emission
levels of quantum particle energy in unspecified wavelength ranges
within the construct known as the electromagnetic spectrum, then I
expect and do believe that to the best of my current knowledge, that
the answer to the specific question posed, honorable Senator Bedfellow,
would be in the affirmative.  I further do respectfully submit that
the particles and associated energy levels involved in my forthright
answer to your esteemed inquiry could vary on a quantum level,
depending on the particular wavelength or wavelengths of interest,
while additional and unplanned emissions of energy (eg: infrared,
visible), gasses, and various particulates (eg: smoke) are possible
when prerequisite system thermal elimination requirements are not met
due to failure of an air-moving device or otherwise, though I do expect
that the honorable Senator Bedfellow or another of the Senator's
venerable colleagues could offer to provide sufficient large volumes
of unfortunately insufficiently cooled airflow to maintain requisite
semiconductor integrity.

-- Hoff Hoffman, answering the question ``Does "faster" mean "hotter"?''
%%
I think anybody who doesn't think I'm smart enough to handle the job 
is underestimating

-- G.W. Bush, 43rd President of U.S.A
%%
Families is where our nation finds home, where wings take dream.

-- G.W. Bush, 43rd President of U.S.A
%%
I will have a foreign-handed foreign policy.

-- G.W. Bush, 43rd President of U.S.A
%%
I know how hard it is for you to put food on your family.

-- G.W. Bush, 43rd President of U.S.A
%%
I understand small business growth. I was one.

-- G.W. Bush, 43rd President of U.S.A
%%
It's clearly a budget. It's got a lot of numbers in it.

-- G.W. Bush, 43rd President of U.S.A
%%
There's not going to be enough people in the system to take advantage 
of people like me.

-- G.W. Bush, 43rd President of U.S.A
%%
The extended abstract should be 0 words or less.

-- ACS OASYS online abstract submittal system, instructions for submitting
an extended abstract.
%%
Your password must be at least 18770 characters, and cannot repeat any of
your previous 30689 passwords. Please type a different password. Type a
password that meets these requirements in both text boxes.

-- Error message on password change within MIT authentication realm, Windows 
   2000. (http://support.microsoft.com/support/kb/articles/q276/3/04.ASP)
%%
Animals not only lose their life in car traffic
but often they also lose their third dimension

-- BILD Zeitung, Germany, quoted in c't 9/2001.
%%
d) p. 6. I am not sure if DFT whether with or without gradient corrections
is capable to break or form chemical bonds.

-- Referee report for a paper on SIC-DFT submitted to JACS, Oct. 2001
%%
[...] the predicted
oscillator strengths are largely consistent with experiment. [...]
However, there are large deviations between computed and
experimental oscillator strengths.

-- From a paper refereed for JCP in Jan. 2002.
%%
Case jacked out.
Into Maelcum's stare.
"You dead awhile there, mon."
"It happens", he said. "I'm getting used to it."

-- William Gibson, Neuromancer, chapter 15
%%
Come, let us hasten to a higher plane,
Where dyads tread the fairy fields of Venn,
Their indices bedecked from one to n,
Commingled in an endless Markov chain!
 
Come, every frustum longs to be a cone,
And every vector dreams of matrices.
Hark to the gentle gradient of the breeze:
It whispers of a more ergodic zone.
 
In Riemann, Hilbert or in Banach space
Let superscripts and subscripts go their ways.
Our asymptotes no longer out of phase,
We shall encounter, counting, face to face.
                                             
I'll grant thee random access to my heart,
Thou'lt tell me all the constants of thy love;
And so we two shall all love's lemmas prove,
And in our bound partition never part.
 
For what did Cauchy know, or Christoffel,
Or Fourier, or any Boole or Euler,
Wielding their compasses, their pens and rulers,
Of thy supernal sinusoidal spell?
 
Cancel me not -- for what then shall remain?
Abscissas. some mantissas, modules, modes,
A root or two, a torus and a node:
The inverse of my verse, a null domain.
                                        
Ellipse of bliss, converge, O lips divine!
The product of our scalars is defined!
Cyberiad draws nigh, and the skew mind
Cuts capers like a happy haversine.
 
I  see the eigenvalue in thine eye,
I hear the tender tensor in thy sigh.
Bernoulli would have been content to die,
had he but known such a^2 cos 2(phi)!     

-- Stanislaw Lem
%%
According to Thomas Bushnell, BSG, the primary architect of the Hurd: 
`Hurd' stands for `Hird of Unix-Replacing Daemons'. 
And, then, `Hird' stands for `Hurd of Interfaces Representing Depth'. 
We have here, to my knowledge, the first software to be named by a 
pair of mutually recursive acronyms. 

-- from www.gnu.org, about the GNU kernel "HIRD"
%%
We all know Linux is great... it does infinite loops in 5 seconds.
-- Linus Torvalds
%%
"All affirmations are true in some sense, false in some sense, meaningless
in some sense, true and false in some sense, true and meaningless in
some sense, false and meaningless in some sense, and true and false
and meaningless in some sense.
Do you follow me?"

-- Illuminatus!, part 1: The eye in the pyramid. Chapter 5
%%
No theory should agree with all of the data on cosmology,
because some of the data is wrong!

-- Lawrence Krauss, in "Quintessence, the mystery of the missing
   mass in the universe"
%% 
* solv/rqsol.d: Optimization problems with Mac OS X were solved by
using O=0 for this system.

-- ADF ChangeLog, 2002-05-02      
%%
A freely updated version of the famous Umberto Eco's "La Bustina di Minerva"
on Mac vs DOS religion war, appeared on "L'espresso" on September 30 1994. 
I, basically, replaced Mac with Windows and DOS with Linux, for the time 
being, it looks better to me. 

"The fact is that the world is divided between users of Windows computers 
and users of Linux computers. I am firmly of the opinion that Windows is 
Catholic and that Linux is Protestant. Indeed, Windows is counter-reformist 
and has been influenced by the 'ratio studiorum' of the Jesuits. It is 
cheerful, friendly, conciliatory, it tells the faithful how they
must proceed step by step to reach--if not the Kingdom of Heaven--the moment 
in which their document is printed. It is catechistic: the essence of 
revelation is dealt with via simple formulae and sumptuous icons. 
Everyone has a right to salvation. 

"Linux is Protestant, or even Calvinistic. It allows free interpretation 
of scripture, demands difficult personal decisions, imposes a subtle 
hermeneutics upon the user, and takes for granted the idea that not all 
can reach salvation. To make the system work you need to interpret the 
program yourself: a long way from the baroque community of revellers, the 
user is closed within the loneliness of his own inner torment. 

"You may object that, with the passage to KDE the Linux universe has come 
to resemble more closely the counter-reformist tolerance of Windows. 
It's true: KDE represents an Anglican-style schism, big ceremonies in the 
cathedral, but there is always the possibility of a return to the shell to 
change things in accordance with bizarre decisions; when it comes down to 
it, you can decide to allow women and gays to be ministers if you 
want to..... 

"And machine code, which lies beneath both systems (or environments, if 
you prefer)? Ah, that is to do with the Old Testament, and is talmudic and 
cabalistic... 

-- From a web page: http://www.chfi.unipd.it/home/g.saielli/
%%
dummy virtual mos will be supplied by virgin

-- From a Turbomole 5.x output
%%
