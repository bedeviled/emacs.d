;; Use a more interesting startup message
(defun startup-echo-area-message ()
  (random t)
  (nth (random (length sayings)) sayings))
;;; taken from http://130.94.183.233/txt/humor/pithy.txt
(setq sayings '("Nutritional tip:\n Only Irish Coffee provides in
a single glass all four\n essential food groups: alchohol,
caffeine, sugar, and fat." "I believe that professional wrestling
is clean\n and everything else in the world is fixed.\n\n --
Frank Deford" "Whatever their other contributions to society,\n
lawyers could be an important source of protein.\n\n -- Guindon
cartoon caption" "The goal of all inanimate objects is to resist
man\n and ultimately defeat him.\n\n -- Russell Baker" "A man's
gotta do what a man's gotta do.\n\n -- Sylvester Stallone" "If
you can't laugh at yourself,\n make fun of other people.\n\n --
Bobby Slayton" "Historical reminder:\n Always keep Horace before
Descartes." "Economists are people who work with numbers,\n but
who don't have the personality to be accountants." "No matter how
cynical you get,\n it is just impossible to keep up.\n\n -- Lily
Tomlin" "I believe more people would be alive today if there were
a death penalty.\n\n -- Nancy Reagan" "Never believe anything
until it has been officially denied." "Be true to your teeth and
they won't be false to you.\n\n -- Soupy Sales" "If you're gonna
steal, steal from kin --\n at least they're less likely to put
the law on you.\n\n -- Bret Maverick" "It takes so little to ruin
a perfect day:\n a stone in the shoe;\n a cockroach in the
spaghetti sauce;\n a woman's laugh.\n -- H.L. Mencken" "Time is
the slippery, viscid, wavering tool of a\n malignant
prestidigitator with nineteen thumbs." "Time is nature's way of
keeping everything from happening all at once." "When the tides
of life turn against you\n And the current upsets your boat,\n
Don't waste those tears on what might have been,\n Just lay on
your back and float.\n -- Ed Norton (\"The Honeymooners\")" "Due
to the shape of the North American elk's esophagus, even\n if it
could speak, it could not pronounce the word \"Lasagna.\"\n\n --
Cliff Clavin (\"Cheers\")" "Did you hear about the two dyslexic
theologians who\n sat around arguing about the existence of
Dog?" "Working rule #23 :\n\n Go through the motions anyway; you
might get lucky." "If once a man indulges himself in murder, very
soon he comes to think\n little of robbing; and from robbing he
next comes to drinking and\n Sabbath-breaking, and from that to
incivility and procrastination.\n\n -- Thomas De Quincey" "The
difference between genius and stupidity is\n that genius has its
limits." "If it weren't for pickpockets, I'd have no sex life at
all.\n\n -- Rodney Dangerfield" "If Shakespeare had been in pro
basketball he never would have\n had time to write his
solliloquies.  He would always have been\n on a plane between
Phoenix and Kansas City.\n\n -- Paul Westhead, basketball
coach\n\n A team is a team.  Shakespeare said that many
times.\n\n -- Dan Devine, football coach" "A piano is a piano is
a piano.\n\n -- Gertrude Steinway" "A little inaccuracy sometimes
saves tons of explanation.\n\n -- H. H. Munro (Saki)" "I propose
getting rid of conventional armaments and replacing\n them with
reasonably-priced hydrogen bombs that would be\n distributed
equally throughout the world.\n\n -- Idi Amin" "I don't want any
yes-men around me.  I want everybody\n to tell me the truth even
if it costs them their jobs.\n\n -- Sam Goldwyn" "I wasn't
kissing her.  I was whispering in her mouth.\n\n -- Chico
Marx" "Work is of two kinds: first, altering the position of
matter\n at or near the earth's surface relative to other
matter;\n second, telling other people to do so.\n\n -- Bertrand
Russell" "I have enough money to last me the rest of my life,\n
unless I buy something.\n\n -- Jackie Mason" "While you're saving
your face you're losing your ass.\n\n -- Lyndon B. Johnson" "I
have already given two cousins to the war and I stand\n ready to
sacrifice my wife's brother.\n -- Artemus Ward\n\n Isn't there
any other part of the matzo you can eat?\n\n -- Marilyn Monroe,
upon being served\n matzo ball soup 3 meals in a row." "It is not
true that life is one damn thing after another --\n it is the
same damn thing over and over.\n\n -- Edna St. Vincent
Millay" "The less things change, the more they remain the
same.\n\n -- Sicilian proverb" "The brotherhood of man is no mere
poet's dream;\n it is a most depressing and humiliating
reality.\n\n -- Oscar Wilde" "Gaiety is the most outstanding
feature of the Soviet Union.\n\n -- Joseph Stalin" "In Italy, for
30 years under the Borgias, they had warfare, terror,
murder,\nand bloodshed, but they produced Michelangelo, Leonardo
Da Vinci, and the\nRenaissance.  In Switzerland, they had
brotherly love, they had 500 years of\ndemocracy and peace -- and
what did they produce?  The coockoo clock.\n -- from the movie
\"The Third Man\"" "Historians have now definitely established
that Juan Cabrillo,\n discoverer of California, was not looking
for Kansas, thus\n setting a precedent that continues to this
day.\n\n -- Wayne Shannon" "When a book and a head collide and
there is a hollow sound,\n is it always the book?\n\n -- Georg
Christoph Lichtenberg" "Great Moments in Literature: In 1936,
Ernest Hemingway, while\n trout fishing, caught a carp and
decided not to write about it.\n\n -- Guindon cartoon caption\n\n
A boy can learn a lot from a dog: obedience, loyalty, and the\n
importance of turning around three times before lying down.\n\n
-- Robert Benchley" "When you go into court you are putting your
fate into the hands\n of 12 people who weren't smart enough to
get out of jury duty.\n\n -- Norm Crosby" "It matters not whether
you win or lose;\n what matters is whether I win or lose.\n\n --
Daring Weinberg" "It is easier to get forgiveness than
permission.\n\n -- Stewart's Law of Retroaction" "Poets have been
mysteriously silent on the subject of cheese.\n\n --
G. K. Chesterton" "Soderquist's paradox:\n There are more horse's
asses than there are horses." "The future is very much like the
present, only longer.\n\n -- Dan Quisenberry" "It is better to
deal with crooks than with fools,\n because the crooks sometimes
take a break.\n -- Alexandre Dumas (the younger)" "I could now
afford all the things I never\n had as a kid, if I didn't have
kids.\n\n -- Robert Orben" "Life being what it is, one dreams of
revenge.\n\n -- Paul Gauguin\n\n Computers are useless.  They can
only give you answers.\n\n -- Pablo Picasso" "BAD SPELLERS OF THE
WORLD, UNTIE!" "Proof that cats are smarter than dogs:\n You
cannot get eight cats to pull a sled through snow." "In America,
anyone can become president.\n But that's one of the risks you
have to take.\n\n -- Adlai Stevenson" "Most of our future lies
ahead of us.\n\n -- Denny Crum, Louisville basketball
coach" "You're never too old to do goofy stuff.\n\n -- Ward
Cleaver (\"Leave It to Beaver\")" "You know what makes this
country great?  You don't have to be\n witty or clever, as long
as you can hire someone who is.\n\n -- Ted Baxter (\"The Mary
Tyler Moore Show\")" "Actress Robin Givens has filed a libel suit
against estranged\n husband Mike Tyson, claiming he told a
reporter that she was\n after his money....  She's asking $125
million.\n -- NBC News" "You can get more with a kind word and a
gun\n than you can with a kind word alone.\n\n -- Al Capone" "If
you have been in a poker game for 30 minutes and you\n still
don't know who the pigeon is, the pigeon is you." "Outside of a
dog, a book is a man's best friend.\n Inside of a dog, it's too
dark to read.\n\n -- Groucho Marx" "My neighbors down here in
Barbour County, Alabama are\n kindly, intelligent, educated, and
refined.\n\n -- George Wallace" "Everything should be as simple
as it is, but not simpler.\n\n -- Albert Einstein" "Success is
having to worry about\n every damn thing in the world,\n except
money.\n -- Johnny Cash" "I think I am beginning to understand
something of it.\n\n -- Auguste Renoir (his last words)" "Do you
think a man who knows his own value grants anyone\n the right to
criticize even his most trivial qualities?\n\n -- Arnold
Schoenberg" "If there ain't no place to go, there's no way to
take a trip.\n\n -- \"Dandy\" Don Meredith" "Society is merely
everybody else,\n and you don't owe everybody anything.\n\n --
Thomas Berger" "City ain't no place for a woman,\n though a lot
of pretty men go there.\n\n -- W.C. Fields (in \"The Fatal Glass
of Beer\")" "Never kick a fresh turd on a hot day.\n\n -- Harry S
Truman\n\n If you're good, you can do it anywhere --\n even on
the ground with a stick.\n\n -- Alvin Doyle Moore" "It is bad
today, and it will be worse\n tomorrow; and so on until the worst
of all.\n\n -- Arthur Schopenhauer" "To ensure freshness, all
foods are cooked from\n scratch, which is subject to run out.\n\n
-- Dip's Country Kitchen (Chapel Hill, N.C.)" "If you have to eat
crow, eat it while it's hot.\n -- Alben Barkley" "Tome mucho
cafe, fume un buen cigarro, y no se ocupe.\n (Drink a lotta
coffee, smoke a good cigar, and don't fret yourself)\n\n -- The
World's Oldest Living Peruvian (aged about 165)" "Some people are
so ignorant they wouldn't know how\n to pour piss out of a boot
-- even if the instructions\n were printed on the heel.\n --
Lyndon Baines Johnson" "His Majesty does not know what the Band
has\n just played, but it is never to be played again!\n -- King
George V" "I guess when you turn off the main road, you have\n to
be prepared to see some funny houses.\n\n -- Stephen King (from
\"Rage\")" "If I'd've hit that many singles, I'd've worn a
dress.\n\n -- Mickey Mantle, 1985, reflecting on\n Pete Rose
breaking Ty Cobb's record\n\n The fact that many people prefer
bad art to good art is not a matter\n for criminal prosecution
but an ingredient in the human comedy, one\n by which other
people will always know how to profit.\n -- John Russell" "What
was was was!  What is is is!\n\n -- Sparky Anderson,
1986" "Although our information is incorrect, we do not vouch for
it.\n\n -- Erik Alfred Leslie Satie" "If you can kill a snake
with it, it ain't art.\n\n -- Orcenith Lyle Bonge" "The only
thing one can be proud of is of having worked\n in such a way
that an official reward for your labor\n cannot be envisaged by
anyone.\n -- Jean Cocteau" "I told Jimmy Carter that Reagan's got
just what this\n country wants: a good head o' hair and a mean
line o' talk.\n\n -- St. Eom of the Land of Pasquan" "The only
thing God didn't do to Job was give him a computer.\n\n --
I. F. Stone" "90 percent of the worst human beings I know are
poets.  Most\n poets these days are so square they have to walk
around the\n block just to turn over in bed.\n -- Kenneth
Rexroth" "The race is not always to the swift,\n nor the battle
to the strong --\n but that's usually the way to bet.\n\n --
Damon Runyon" "What got you here will get you out of here.\n\n --
Joe Garagiola" "It is a fine thing when a man who thoroughly
understands\n a subject is unwilling to open his mouth.\n\n --
Yoshida Kendo" "On the BBC there has been a spate of XVIIIc
English composers, perhaps\n to show us why they are unknown; and
a careful selection of the worst\n pieces of J.C. Bach set off
with nothings by Frederick the Great.  As\n for poerty -- and as
for readers -- the squalor is repulsive.\n -- Basil
Bunting" "What dull barbarians are not proud of their dullness
and barbarism?\n\n -- Thackeray" "Tutti Frutti, good booty / If
it don't fit, don't force it\n You can grease it, make it easy
...\n AWOP-BOP-A-LOO-MOP, ALOP-BAM-BOOM!\n\n -- Richard Wayne
Penniman, 1955" "People know what they do; they frequently know
why they do what\n they do; but what they don't know is what what
they do does.\n\n -- Michel Foucault" "The whole dream of
democracy is to raise the proletarian\n to the level of stupidity
attained by the bourgeois.\n\n -- Gustave Flaubert" "For what do
we live, but to make sport for our neighbors,\n and laugh at them
in our turn.\n -- Jane Austen" "I believe that if I ever had to
practice cannibalism,\n I might manage it if there were enough
tarragon around.\n\n -- James Beard" "When one starts from a
portrait and seeks by successive\n eliminations to find pure form
... one inevitably ends\n up with an egg.\n -- Pablo
Picasso" "Each morning when I awake, I experience again a\n
supreme pleasure -- that of being Salvatore Dali.\n\n --
Himself" "Middle age is when you are faced with two temptations,
and\n you choose the one that will get you home by 9 o'clock.\n\n
-- Ronald Reagan" "Whatever women do they must do twice as well
as men to be\n thought of as half as good.  Luckily, this is not
difficult.\n\n -- Charlotte Whitton, Mayor of Ottawa" "After
ecstasy, the laundry.\n\n -- Zen koan\n (quoted in \"Newsweek,\"
12/17/84)" "Nothing we use or touch can be expressed in words
that\n equal what is given by the senses.\n\n -- Hannah
Arendt" "I have a total irreverence for anything connected with
society, except\n that which makes the roads safer, the beer
stronger, the food cheaper,\n and the old men and women warmer in
the winter and happier in the summer.\n\n -- Brendan Behan" "Ours
is the age of substitutes: Instead of language we have jargon;\n
instead of principles, slogans; instead of genuine ideas,
bright\n suggestions.\n -- Eric Bentley" "Life -- the way it
really is -- is a battle not between\n Bad and Good but between
Bad and Worse.\n\n -- Joseph Brodsky\n\n If you think that you
can think about a thing, inextricably attached\n to something
else, without thinking of the thing it is attached to,\n then you
have a legal mind.\n -- Thomas Reed Powell" "I have spent all my
life under a Communist regime, and I will tell\n you that a
society without any objective legal scale is a terrible\n one
indeed.  But a society with no other scale but the legal one is\n
not quite worthy of man either.\n -- Alexander Solzhenitsyn" "The
rain it raineth on the just\n And also on the unjust fella;\n But
chiefly on the just, because\n The unjust steals the just's
umbrella.\n\n -- Sam Ervin" "It may be that we have all lived
before and died, and\n this is hell.\n -- A.L. Prusick" "Always
look out for Number One\n and be careful not to step in Number
Two.\n\n -- Rodney Dangerfield" "Men are superior to women.  For
one thing, they can\n urinate from a speeding car.\n -- Will
Durst" "I have known more men destroyed by the desire to have\n
wife and child and to keep them in comfort than I have\n seen
destroyed by drink and harlots.\n -- William Butler Yeats" "If a
woman has to choose between catching a fly ball and saving\n an
infant's life, she will choose to save the infant's life\n
without even considering if there are men on base.\n\n -- Dave
Barry" "I go from stool to stool in singles bars hoping to get\n
lucky, but there's never any gum under any of them.\n -- Emo
Philips" "This gum tastes funny.\n\n -- Sign on a condom
machine." "I married the first man I ever kissed.  When I tell\n
my children that, they just about throw up.\n\n -- Barbara
Bush" "Being head of state is an extremely thankless job.\n\n --
Bokassa I, former emperor of the\n Central African Republic,
while on trial for\n infanticide, cannibalism, and
torture." "Baseball would be a better game if more third
basemen\n got hit in the mouth by line drives.\n\n -- Dan
Jenkins" "Making duplicate copies and computer printouts of
things\n no one wanted even one of in the first place is giving\n
America a new sense of purpose.\n -- Andy Rooney" "I don't want
to achieve immortality by being\n inducted into baseball's Hall
of Fame.  I want\n to achieve immortality by not dying.\n\n --
Leo Durocher at eighty-one." "Time flies like an arrow.\n Fruit
flies like a banana.\n\n -- Lisa Grossman" "Some guy hit my
fender, and I said to him, \"Be fruitful\n and multiply,\" but
not in those words.\n -- Woody Allen" "Capital punishment is our
society's recognition of\n the sanctity of human life.\n --
Senator Orrin Hatch of Utah" "When dealing with the insane, the
best method\n is to pretend to be sane.\n -- Hermann Hesse" "A
society made up of individuals who were capable of\n original
thought would probably be unendurable.  The\n pressure of ideas
would simply drive it frantic.\n\n -- H.L. Mencken" "When a true
genius appears in the world, you may\n know him by this sign,
that the dunces are all in\n confederacy against him.\n --
Swift" "Yes, there will be sex after death;\n we just won't be
able to feel it.\n\n -- Lily Tomlin" "Boredome is the bitter
fruit of too much routine,\n or none at all.\n -- Brendan
Francis" "When you watch television, you never see people
watching\n television.  We love television because it brings us
a\n world in which television does not exist.\n -- Barbara
Ehrenreich" "Baseball is what we were; football is what we have
become.\n\n -- Mary McGrory" "If Jesus was Jewish, how come he
has a Mexican name ?" "Some mornings it just doesn't seem worth
it to\n gnaw through the leather straps.\n -- Emo Philips" "A
criminal is a person with predatory instincts without\n
sufficient capital to form a corporation.\n -- Howard Scott" "Why
should we take up farming when there are so many\n mongongo nuts
in the world ?\n\n -- African Bushman, quoted by Jared
Diamond" "I feel sorry for people who don't drink, because when\n
they get up in the morning, they're not going to feel\n any
better all day.\n -- Frank Sinatra" "I never took hallucinogenic
drugs, because I never wanted\n my consciousness expanded one
unnecessary iota.\n\n -- Fran Lebowitz" "People hate me because I
am a multifaceted, talented,\n wealthy, internationally-famous
genius.\n\n -- Jerry Lewis" "As she fell face down into the black
muck of the mud-wrestling pit,\nher sweaty, 300-pound opponent
muttering soft curses in Latin on\ntop of her, Sister Marie
thought, \"There is no doubt about it; the\nPope has betrayed
me.\"\n -- entry in San Jose State's bad writing contest,
1983" "Having your book turned into a movie is like seeing\n your
oxen turned into bouillon cubes.\n -- John LeCarre" "Nebraska is
proof that Hell is full, and the dead walk the earth.\n\n -- Liz
Winston" "When Madonna grabs her crotch,\n the social order is
effectively transgressed.\n\n -- Chip Wells, on his
Ph.D. dissertation, \"Like a Thesis:\n A Postmodern Reading of
Madonna Videos.\"" "Human beings were invented by water as a\n
means of transporting itself from place to place.\n\n -- Tom
Robbins"))

;; (setq sayings '("Hacky time..."
;;                 "Hello Dave..."))

(setq visible-bell nil
      ring-bell-function 'ignore
      echo-keystrokes 0.1
      font-lock-maximum-decoration t
      inhibit-startup-message t
      transient-mark-mode t
      shift-select-mode nil
      truncate-partial-width-windows nil
      uniquify-buffer-name-style 'forward
      ediff-window-setup-function 'ediff-setup-windows-plain
      xterm-mouse-mode t
      x-select-enable-clipboard t
      kill-whole-line t                 ;; delete line in one stage
      mouse-yank-at-point t             ;; paste at cursor, NOT at mouse pointer position
      next-line-add-newlines nil        ;; don't add new lines when scrolling down
      require-final-newline t           ;; end files with a newline
      safe-local-variable-values '((encoding . utf-8) (prompt-to-byte-compile))
      scroll-margin 0                   ;; do smooth scrolling, ...
      scroll-conservatively 100000      ;; ... the defaults ...
      scroll-up-aggressively 0          ;; ... are very ...
      scroll-down-aggressively 0        ;; ... annoying
      user-full-name "J.T. Halbert"     ;; Set name
      user-mail-address "jthalbert@gmail.com" ;; Set e-mail address
      ;; set ispell to use brew installed aspell,
      ;; http://sunny.in.th/2010/05/08/emacs-enabling-flyspell-mode-gave-an-error.html
      ispell-program-name "aspell"
      )


;;(set-default 'imenu-auto-rescan t)

(defalias 'yes-or-no-p 'y-or-n-p)
(random t) ;; Seed the random-number generator

;; Backups, don't clutter up directories with files
(setq make-backup-files t ;; do make backups
      backup-by-copying t ;; and copy them here
      version-control t
      kept-new-versions 2
      kept-old-versions 5
      delete-old-versions t)

;; redefining the make-backup-file-name function in order to get
;; backup files in ~/.backups/ rather than scattered around all over
;; the filesystem. Note that you must have a directory ~/.backups/
;; made.  This function looks first to see if that folder exists.  If
;; it does not the standard backup copy is made.
(defun make-backup-file-name (file-name)
  "Create the non-numeric backup file name for `file-name'."
  (require 'dired)
  (if (file-exists-p "~/.emacs.d/backups")
      (concat (expand-file-name "~/.emacs.d/backups/")
              (replace-regexp-in-string "/" "!" file-name))
    (concat file-name "~")))

;; redefining the make-auto-save-file-name function in order to get
;; autosave files sent to a single directory.  Note that this function
;; looks first to determine if you have a ~/.autosaves/ directory.  If
;; you do not it proceeds with the standard auto-save procedure.
(defun make-auto-save-file-name ()
  "Return file name to use for auto-saves of current buffer.."
  (if buffer-file-name
      (if (file-exists-p "~/.emacs.d/autosaves/")
          (concat (expand-file-name "~/.emacs.d/autosaves/") "#"
                  (replace-regexp-in-string "/" "!" buffer-file-name)
                  "#")
         (concat
          (file-name-directory buffer-file-name)
          "#"
          (file-name-nondirectory buffer-file-name)
          "#"))
    (expand-file-name
     (concat "#%" (buffer-name) "#"))))


;; Transparently open compressed files
(auto-compression-mode t)

;; Start server for emacs client if not already started
(if (file-exists-p
     (concat (getenv "TMPDIR") "emacs"
             (number-to-string
              (user-real-uid)) "/server"))
    nil (server-start))

(provide 'init-defaults)
