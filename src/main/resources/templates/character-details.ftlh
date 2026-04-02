<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Disney Princesses</title>
    <link rel="icon" href="images/logos/disney-letter-logo.png" type="image/png">

    <!-- BOOTSTRAP -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>
        
    <!-- FONTS -->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Dosis:wght@200..800&family=Emilys+Candy&family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Josefin+Sans:ital,wght@0,100..700;1,100..700&family=Patrick+Hand+SC&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">

    <!-- STYLE SHEET-->

    <link rel="stylesheet" href="/style.css">

</head>

<body>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>

    <!-- NAVIGATION BAR -->

    <nav class="navbar navbar-expand-lg navbar-custom">

        <div class="container-fluid">

            <!-- HEADER LOGO -->

            <a class="navbar-brand" href="index.html">
                <img src="images/logos/disney-logo.png" alt="Logo" width="60" height="24"
                    class="d-inline-block align-text-top">
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                    <!-- HOME BUTTON -->

                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                    </li>

                    <!-- DETAILS BUTTON -->

                    <li class="nav-item">
                        <a class="nav-link" href="details.html">Details</a>
                    </li>

                    <!-- ABOUT BUTTON -->

                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a>
                    </li>

                    <!-- ADD A CHARACTER -->

                    <li class="nav-item">
                        <a class="nav-link" href="new-character-form.html">Add a Character!</a>
                    </li>

                </ul>

                <!-- SEARCH BAR -->

                <form class="d-flex" role="search">

                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
                    <button class="btn btn-outline-custom" type="submit">Search</button>

                </form>

            </div>

        </div>

    </nav>

    <!-- INFO CARD -->

    <div id="info-card" class="card card-custom" style="width: 22em;">
        <img src="images/moana/moana2.png" class="card-img-top p-2" alt="Moana">
        <div class="card-body">
            <h5 class="card-title">Biographical Information</h5>
            <p class="card-text">Number: Twelve</p>
        </div>
        <div class="card-body">
            <h5 class="card-title">Physical Description</h5>
            <p class="card-text">Age: 16-19</p>
            <p class="card-text">Race: Polynesian</p>
            <p class="card-text">Hair Color: Black</p>
            <p class="card-text">Eye Color: Brown</p>
        </div>
        <div class="card-body">
            <h5 class="card-title">Relationships</h5>
            <p class="card-text">Relatives</p>
            <ul class="card-text">
                <li>Tui (father)</li>
                <li>Sina (mother)</li>
                <li>Grandma Tala (grandmother; deceased)</li>
                <li>Simea (younger sister)</li>
            </ul>
            <p class="card-text">Allies</p>
            <ul class="card-text">
                <li>Maoi</li>
                <li>Pua</li>
                <li>Hei Hei</li>
            </ul>
            <p class="card-text">Enemies</p>
            <ul class="card-text">
                <li>Te Kā (formerly)</li>
                <li>Tamatoa</li>
                <li>Nalo</li>
                <li>Matangi (formerly)</li>
            </ul>
            <h5 class="card-title">Appearances</h5>
            <p class="card-text">Voice Actor: Auli'i Cravalho</p>
            <p class="card-text">Appearances</p>
            <ul class="card-text">
                <li>Moana</li>
                <li>Gone Fishing</li>
                <li>Ralph Breaks the Internet</li>
                <li>Wish</li>
                <li>Moana 2</li>
            </ul>
        </div>
    </div>

    <!-- WRITTEN DETAILS -->

    <h1 class="m-4">Moana</h1>

    <h4 class="m-4">Personality</h4>

    <div class="body-text mx-4">

        <p>
            Moana, as Gramma Tala describes, "stands apart from the crowd."
            She is sea-loving, headstrong, determined, strong-willed, practically fearless, and very physically capable.
            Though she has moments of self-doubt, she has great pride in who she is, and is generally too stubborn to
            back away from new challenges.
            Moana approaches new experiences and tasks with the utmost seriousness and will stand her ground to fight
            for what she values even when all seems lost.
            She can present herself as an imposing force despite her size and has bested the most fearsome beasts and
            impossible obstacles across the seas of Oceania while relying almost solely on her own intelligence.
        </p>

        <p>
            For all her strengths, Moana suffers from major identity crises.
            Surrounded by a loving family and a supportive community of neighbors, Moana cares a great deal for her
            people, and the village in which she was born and raised.
            However, she also has a passionate love and spiritual connection to the ocean and the idea of voyaging
            beyond her home island's barrier reef.
            At the start of the film, voyaging had been prohibited as a means to keep the people of Motunui safe, but
            even so, Moana's spirited and tenacious attitude kept her dreams of experiencing life beyond her island
            alive.
            At the same time, Moana was happily devoted to her village during her time as chief-in-training. An
            intelligent and resourceful leader, Moana was quick to remedy any problems her village faced and was
            masterful in keeping herself composed and optimistic during times of a crisis.
            Moana's loyalty towards her family and people actually played a part in her crippling identity crisis. As
            she cared for them immensely, she occasionally felt extreme guilt for being drawn to the sea, as lamented in
            her song "How Far I'll Go"; she believed that if she were to pursue the ocean, she would ultimately
            disappoint the people she loved.
            Simultaneously, she felt an obligation towards her ancestors, wanting to reinvigorate their ways of
            wayfinding as a means to honor them and the legacy they left for her people.
            These conflicted emotions would ultimately act as Moana's greatest challenge throughout the film.
        </p>

        <p>
            When it was revealed that she had been chosen by the ocean to restore the legendary heart of Te Fiti, Moana
            did not put her focus on the potentially devastating outcome of her mission, but the unity between her love
            for Motunui and her dream of voyaging in the tradition of her great ancestors.
            Though this would ultimately benefit all parties, this mindset is perhaps Moana's greatest flaw.
            In being heroic and deathly devoted to her goals, Moana can be selfish in that she is willing to endanger
            the lives of others in order to prove she is capable of confronting her ambitions without fail.
            Both Tui and Maui confront Moana on this during the events of the film, and though she denied both
            accusations, she knew that this was correct.
            She can also be reckless with herself in this regard, as she drove herself out to sea without proper
            training in the ways of wayfinding or even sailing.
            She fears very little, but because of this, she can occasionally bite off more than she can chew.
            However, these acts are not done with malicious, or even notable intent.
            Moana is extremely sympathetic and caring, which drives her to perform life-threatening stunts for what she
            genuinely believes to be the greater good.
        </p>

        <p>
            In contrast to this, Moana grows with failure.
            After Maui refuses to assist her in battling Te Kā following a disastrous first encounter on her account,
            she works up the courage to redeem herself by facing the lava demon alone.
            She is also empathetic and looks to help herself by helping and understanding others first.
            This is most notably seen when she puts hours worth of focus on coming to understand Maui and the reasoning
            behind his own inner demons.
            In doing so, she was able to exhibit self-loving wisdom (specifically regarding how one should look inside
            themselves for strength and guidance, and not in someone else).
            Moana would later use this to encourage herself during her darkest hour.
        </p>

        <p>
            As she grew with her adventure, Moana discovered more about herself.
            She came to realize that no one can define who you are, other than yourself; she was neither meant to be
            devoted solely to the sea or solely to her people, but to herself.
            As such, she was able to bring her two loves together, ultimately recreating and honoring what came before
            her: a unity between her people and the sea.
        </p>
    </div>

    <h4 class="m-4">Disney History</h4>

    <div class="body-text mx-4 mb-4">
        <p>
            Moana is first seen as a toddler, being told an ancient story about the legendary demigod Maui.
            According to Gramma Tala, the dramatic storyteller, Maui stole the coveted heart of Te Fiti centuries before
            their time.
            As a result, a lava demon known as Te Kā was born, and the world was plunged into slow-burning darkness.
            The only hope for humanity lies in the hands of a fearless hero, who must journey to find Maui and have him
            return the heart to its rightful place.
            While the other children are terrified by the story, Moana is captivated.
            Chief Tui claims there is no such darkness consuming the world, and stresses the law that forbids anyone on
            the island from traveling past the reef.
            Moana fails to heed her father's words and waddles to the ocean shores in bliss.
            There, she helps a struggling newborn sea turtle make its way to the ocean against predators.
            Just then, Moana is acquainted with the ocean, which reveals itself to have a mind of its own.
            Having witnessed her purity with the baby sea turtle, the ocean grows fond of Moana and chooses her as the
            heroine destined to save the world.
            It provides her with the heart of Te Fiti, but when Tui arrives and takes her back to the village, Moana
            drops the heart and leaves it at the shore.
        </p>

        <p>
            Tui notices his daughter's love for the sea, and over the years, he and the people of Motunui try to
            convince Moana that their island home is a paradise and that her destiny is to follow in her father's
            footsteps by becoming chief.
            Though she loves her people, Moana continues to feel drawn to the sea, something Tala encourages.
            One day, Tui takes Moana to a sacred place on the island: a high mountain, where chiefs from every
            generation place a stone to signify the start of their leadership.
            This inspires Moana to finally accept her role as soon-to-be chief of the village.
            She thusly spends her time learning under her parents on how to assist her people across the island.
            One day, the islands' supply of food begins to die out.
            Moana believes that traveling beyond the reef to find food elsewhere is the best solution, but Tui strongly
            forbids it.
            She nevertheless tries against his wishes and nearly drowns before she can even make it past the barriers.
        </p>

        <p>
            Believing she's failed as a sailor, Moana declares that she is not fit for the sea and wishes to place her
            stone on the mountain.
            She tells this to Tala, who responds by showing Moana a hidden cave created by their ancestors long ago.
            Moana learns that she's drawn to the sea because her ancestors were voyagers.
            When asked why their voyaging stopped, Tala explains that it was Maui's doing, referring to his crime of
            stealing Te Fiti's heart, which filled the seas with monsters and demons.
            Tala reveals to have the heart of Te Fiti in her possession and explains that the ocean chose Moana to
            restore it.
            Not knowing how to sail, Moana rushes to Tui and her people to ask for their assistance in restoring the
            heart.
            Once again, Tui forbids leaving the island, ignores her, and throws the heart away.
            As Moana recovers it, she finds Tala's walking stick on the grass.
        </p>

        <p>
            Moana and her parents rush to the medics, where Tala lies on her deathbed.
            She encourages Moana to find Maui and restore the heart with her last ounce of breath.
            Moana reluctantly accepts her grandmother's dying wish, packs supplies, and takes one of her ancestor's
            boats that unknowingly had her rooster friend, Heihei, aboard as well.
            As Moana leaves, her grandmother's light fades out, and her spirit guides Moana past the reef and into the
            seas.
            The following night, the ocean carries Moana to Maui's island, where the two meet and fail to see eye to
            eye.
            Maui is more concerned with the sight of Moana's boat, which he steals by trapping Moana in a cave.
            She manages to use her wits to escape and makes it to Maui with the help of the ocean.
            She orders him to return the heart, but upon seeing it, Maui tries to leave the boat, only to be brought
            back by the ocean.
            He claims the heart is cursed, something Moana refuses to believe until they fall under attack by a band of
            pirates called the Kakamora.
        </p>

        <p>
            The Kakamora crave the heart of Te Fiti's power, but Moana stands her ground and fights back.
            She successfully recovers the heart and defeats the pirates.
            Though Maui commends her on surviving, he still refuses to help return the heart.
            Moana persuades him to comply when she claims such an act will help Maui regain a positive reputation
            amongst mortals.
            Maui agrees to help, but not without his fishhook, which is said to be in the clutches of Tamatoa, a giant
            crab living in Lalotai, the Realm of Monsters.
            As they make their way, Moana watches intently as Maui proves himself to be a master wayfinder.
            She asks him to teach her, and after he refuses at first, the ocean uses one of the Kakamora's blow darts to
            numb the demigod, leaving him unable to sail.
            With no other choice, he teaches Moana how to wayfind.
            After much mentoring, Moana falls asleep and has a nightmare in which she watches as her home and parents
            are destroyed by Te Kā's curse.
            When she awakens, she finds that Maui has taken over the boat and has successfully led them to Lalotai's
            island.
        </p>

        <p>
            As they climb a mountain to reach the entrance to the underworld, Maui questions why the ocean chose Moana
            to save the world, though she doesn't seem to know, herself.
            Despite her sudden feeling of self-doubt, Moana follows Maui into Lalotai.
            She evades several monsters, one of which tried to eat her, until eventually finding Tamatoa's lair and the
            fishhook adhered to Tamatoa's shell.
            Moana distracts Tamatoa long enough for Maui to take back his hook, but the demigod finds that his
            shapeshifting abilities are out of whack.
            Feeling powerful, Tamatoa attacks Maui and imprisons Moana to prevent her from interfering.
            As she watches helplessly, Tamatoa taunts Maui on his hidden insecurities and alludes to a tragic past.
            As such information was previously unknown to her, Moana is confused by Tamatoa's words.
            She nevertheless escapes her cell while Tamatoa is distracted and uses a makeshift duplicate of Te Fiti's
            heart to drive the crab's attention away from Maui.
            The two escape, and once they have reached safety, Maui thanks Moana for her actions, though he berates
            himself for failing to defeat Tamatoa and almost letting Moana be killed as a result.
        </p>

        <p>
            They set sail once more, but a down-on-his-luck Maui feels unable to defeat Te Kā and restore the heart
            without his hook.
            Moana, wanting to get to the root of Maui's self-doubt, pries to uncover the demigod's backstory.
            This only angers Maui, which prompts Moana to confess her own feelings of self-doubt by revealing she is
            unsure why the ocean chose her.
            She further explains that she pushes herself regardless in order to save her dying island, though she can
            only do so with Maui's help.
            Moana offers to lend an ear for the demigod, and Maui eventually opens up to her by revealing he was born a
            human and was abandoned by his parents.
            After being adopted by the gods, he became a hero and protected mankind to earn the love he was denied by
            his parents.
            Maui admits that he feels worthless without his hook, but Moana sees a true hero in the demigod, regardless
            of his magical attributes.
            This resonates with Maui and gives him the courage to train in order to recover his power, under the
            guidance of Moana and Mini Maui (Maui's sentient tattoo).
            Simultaneously, Maui furthers Moana's mentoring in wayfinding, eventually turning her into a master
            navigator on par with her ancestors, though Maui contends that she may have surpassed them.
        </p>

        <p>
            It is eventually decided that they're ready to face Te Kā.
            Maui encourages Moana to utilize her skills and sail the rest of the way, and with the demigod's teachings
            in mind, Moana makes it to Te Fiti, much to the delight of a prideful Maui.
            Maui then takes the heart and flies to Te Fiti, but he is immediately attacked by Te Kā and quickly
            defeated.
            Landing back on the boat, Maui urges Moana to turn back for their own safety, but Moana refuses, unwilling
            to back away after coming so close to accomplishing their goal.
            She sails them towards Te Fiti and straight into Te Kā's reach.
            The lava monster strikes down to kill Moana, but Maui intervenes and uses his fishhook to block Te Kā's
            blow.
            The wave created by the powerful impact drives Moana and Maui far from Te Fiti's shores.
            After they recover, Maui confronts Moana on her recklessness, which severely damaged his fishhook.
            Believing the ocean chose wrong in Moana as the world's savior, Maui refuses to return to Te Kā, instead
            suggesting they part ways as all hope is lost with his fishhook in such critical condition.
            Leaving Moana sad and upset, Moana stands her ground at the thought of backing down and tearfully tries to
            force Maui to stay, only to be met with rejection as the demigod uses some of his remaining power to
            shape-shift into a hawk and fly off into the night.
        </p>

        <p>
            Sad and alone, Moana is approached by the ocean.
            She mournfully confesses to her incompetence and demands that the ocean chooses someone else to restore the
            heart.
            The ocean accepts Moana's decision and takes the heart of Te Fiti back into the sea.
            As Moana breaks down in tears, she is visited by Gramma Tala's spirit ghost, who comforts and apologizes to
            her granddaughter for placing so much pressure on her.
            Tala encourages Moana to return home if she wishes to, promising to remain by her side on the journey back.
            Moana prepares herself to sail home, but finds that she cannot bring herself to actually do so. Unable to
            understand, Tala encourages Moana to open up to her emotions to understand why she feels hesitant to return
            home.
            Moana comes to realize that the everlasting love she holds for her people and the sea is what brought her so
            far, is what ultimately defines who she is, and explains why she's the one capable of saving the world.
            Encouraged, Moana dives into the sea and retrieves the heart of Te Fiti.
            When she resurfaces, Tala is gone, but Moana's determination is now even stronger than ever.
        </p>

        <p>
            She repairs her boat and travels back to Te Fiti with Heihei by her side.
            They confront Te Kā, who Moana manages to outsmart in order to make it past Te Fiti's barrier islands.
            Unfortunately, Te Kā eventually catches on and attacks.
            Moana is thrown off her boat and is nearly killed by the lava demon until Maui returns with a change of
            heart.
            Determined to defend Moana despite the damaged state of his fishhook, Maui distracts Te Kā while the ocean
            helps Moana to Te Fiti's now molten shores.
            There, Moana cannot find the spiral in which the heart is to be placed.
            Looking out into the distance, she notices a glowing spiral on Te Kā's chest and quickly comes to the
            realization that the lava demon is Te Fiti.
            Just as Te Kā is about to finish Maui off, Moana uses the heart to get her attention as she tells the ocean
            to clear a path.
            When she confronts Te Kā, she then sings "Know Who You Are" in the moment of certain doom, which the song
            tames Te Kā, who finds peace in Moana's inspiring words and turns herself into molten rock.
            Moana places the heart into Te Kā's chest, and the lava monster's body crumbles away, reviving the radiant
            and lush Te Fiti.
        </p>

        <p>
            The Goddess revives the dying islands across the world, as well as Moana's boat and Maui's fishhook.
            Moana asks Maui to return home with her, but Maui warmly denies, instead of showing Moana a new tattoo on
            his body, inspired by her heroism.
            The two warmly embrace before Maui shape-shifts into a hawk and flies off.
            Shortly afterward, Moana and Heihei sail for Motunui.
            They arrive just as Motunui recovers from the curse entirely.
            Tui and Sina spot Moana arriving home and lovingly greet her.
            With her deed having restored the safety of the sea, Moana becomes chief, and the people of the village
            bring out their ancestor's boats.
            Voyaging starts again, and Moana makes her mark of leadership on Motunui's sacred mountain with a seashell
            given to her by the ocean, symbolizing the unity of her duties to her people and her passion for the seas.
        </p>

    </div>

</body>

</html>