require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ReadStory.destroy_all
Audio.destroy_all
ReadStory.destroy_all
Favorite.destroy_all
Story.destroy_all
User.destroy_all

user1 = User.create!(first_name: "Ginette", last_name: "Wagon", email: "test@gmail.com", username: "lewagon", password: "1234567")
user2 = User.create!(first_name: "Nicolas", last_name: "Doe", email: "test2@gmail.com", username: "anonymous", password: "1234567")

story1 = Story.create!(title: "Les mauvais voisins", summary: "De très mauvais voisins dans notre quartier !", content: "<h2>Chapitre 1 : Le papier tombé de la poche</h2>
  <p>Il était une fois un homme qui était parti à la recherche d'un emploi. Alors qu'il passait devant la maison de son voisin, un papier important est tombé de la poche de l'homme.</p>
  <p>Il se trouve que son voisin regardait par la fenêtre. Il a vu le morceau de papier tomber, et il s'est dit : 'Quelle honte ! Ce type a délibérément laissé tomber ça de sa poche. Il essaie de salir la façade de ma maison, et il est sournois aussi !'</p>
  <p>Mais au lieu de sortir et de dire quelque chose, le voisin a planifié sa vengeance.</p>
  <h2>Chapitre 2 : La spirale de la vengeance</h2>
  <p>Cette nuit-là, il prit sa corbeille à papier et se rendit chez l'homme. Il se trouve que le premier homme regardait par la fenêtre et a vu ce qui s'est passé. Plus tard, alors qu'il ramassait les papiers qui avaient été jetés sur son porche, il a trouvé l'important morceau de papier qu'il avait perdu. Il a été déchiré en dizaines de morceaux. Il pensa que son voisin avait non seulement fait ses poches, mais avait eu le culot de salir sa porte avec des ordures.</p>
  <p>Il ne voulait rien dire. Au lieu de cela, il a commencé à planifier sa vengeance. Cette nuit-là, il a téléphoné à un fermier pour passer une commande de dix cochons et de cent canards. Il a demandé qu'ils soient livrés à la maison de son voisin.</p>
  <p>Bien sûr, le lendemain, son voisin eut pas mal de mal à se débarrasser de tant d'animaux et de leur pong qui l'accompagnait.</p>
  <p>Sûr qu'il s'agissait d'une ignoble ruse de son voisin, dès que le deuxième homme s'était débarrassé des cochons et des canards, il recommença à planifier sa vengeance.</p>
  <p>Et ainsi de suite.</p>
  <p>Ils ont continué à essayer de se venger l'un de l'autre, et à chaque fois leurs actes de vengeance sont devenus plus gros et plus ridicules. La chute de ce seul morceau de papier a fini par évoquer un groupe de rock, une sirène d'incendie, l'enfoncement d'un camion dans une clôture de jardin, le lancement d'une grêle de pierres sur les fenêtres, le tir d'un canon et enfin le largage de une bombe qui a détruit les maisons des deux hommes.</p>
  <h2>Chapitre 3 : La réconciliation</h2>
  <p>Tous deux se sont retrouvés dans un hôpital et ont dû passer un certain temps à partager une chambre là-bas. Au début, ils ont refusé de se parler, mais un jour, fatigués du silence, ils se sont mis à parler. Au fil du temps, ils sont devenus amis, jusqu'au jour où ils ont finalement osé discuter de l'incident du morceau de papier. Ils ont réalisé que tout cela n'avait été qu'un malentendu et que s'ils s'étaient parlé la première fois - au lieu de tirer des conclusions hâtives sur de mauvaises intentions - rien de tout cela ne serait arrivé. Mieux encore, ils auraient toujours leurs maisons.</p>

  <p>Cependant, à la fin, le fait qu'ils parlaient et soient devenus amis les a beaucoup aidés à se remettre de leurs blessures et à travailler ensemble pour reconstruire leurs maisons.</p>", genre: "Fantaisie", age: "8 à 10 ans", tags: "Princes et Princesses", rating: rand(21..82), user_id: user2.id)

story2 = Story.create!(title: "Un poulpe en détresse", summary: "Nous devons aller sauver la pieuvre!", content: "<h2>Chapitre 1 - Un piège inattendu</h2>
  <p>Il était une fois une pieuvre timide et silencieuse. Il se déplaçait presque toujours seul car, bien qu'il veuille avoir beaucoup d'amis, il était trop gêné.</p> <p>Un jour, la pieuvre essayait d'attraper une huître très glissante. Avant qu'il ne s'en rende compte, il s'était attaché en un nœud massif et il ne pouvait pas bouger. Il a essayé de toutes ses forces de se dégager, mais ce n'était pas bon. Finalement, malgré la grande gêne qu'il ressentait d'être vu dans un tel enchevêtrement, il dut demander de l'aide aux poissons qui passaient. De nombreux poissons passèrent à la nage, l'ignorant, mais un petit poisson très gentil offrit son aide pour détacher tous ces tentacules de toutes ces ventouses.</p>
  <p>La pieuvre s'est sentie profondément soulagée quand il a finalement été libéré, mais il était si timide qu'il n'a pas osé parler au poisson et se lier d'amitié avec lui. Il a simplement remercié le poisson et a rapidement nagé. Plus tard, la pieuvre a passé toute la nuit à penser qu'il avait raté une belle occasion de se lier d'amitié avec ce petit poisson très gentil.</p>
  <h2>Chapitre 2 - Un acte de courage</h2>
  <p>Quelques jours plus tard, la pieuvre se reposait entre des rochers, quand il remarqua que tout le monde autour nageait à la hâte. Il regarda au loin et vit un énorme poisson venir se nourrir dans cette zone. La pieuvre se cacha rapidement; puis, jetant un œil hors de sa cachette, il vit que l'énorme poisson poursuivait le gentil petit poisson qui l'avait détaché. Ce petit poisson avait vraiment besoin d'une aide urgente, mais le gros poisson avait l'air si dangereux que personne n'osait s'en approcher. La pieuvre, se rappelant comment le petit poisson l'avait aidé, sentit qu'il devait faire tout ce qu'il pouvait pour lui venir en aide.</p>
  <p>Sans hésiter, la pieuvre jaillit des rochers, comme une raie. Il s'est mis sur le chemin du poisson géant, et avant que le poisson ne puisse faire quoi que ce soit, la pieuvre avait lancé le plus gros jet d'encre de sa vie. Il a attrapé le petit poisson et est reparti à la nage pour se cacher dans les rochers. Tout s'est passé si vite que le gros poisson n'a pas eu le temps de réagir. Cependant, il s'est vite remis de la surprise. Il partit vers les rochers, à la recherche de la pieuvre et du petit poisson. Maintenant, il voulait vraiment les engloutir !</p>
  <h2>Chapitre 3 - L'allergie du poisson géant</h2>
  <p>Bientôt, cependant, il commença à ressentir une terrible démangeaison; d'abord dans ses branchies, puis dans ses nageoires, puis sur tout son corps. Il s'est avéré que ce poisson géant avait un caractère très artistique, il adorait les couleurs ; et l'encre noire de la pieuvre lui avait donné une terrible allergie !!</p>

  <p>Alors le gros poisson s'éloigna, tout irrité.</p>
  <h2>Chapitre 4 - La reconnaissance des autres poissons</h2>
  <p>Dès qu'il fut parti, tous les poissons qui s'étaient cachés vinrent féliciter la pieuvre d'avoir été si courageuse. Puis le petit poisson leur raconta à tous comment il avait aidé la pieuvre quelques jours plus tôt, mais il n'avait jamais vu quelqu'un être aussi reconnaissant qu'il finisse par faire quelque chose d'aussi dangereux. En entendant cela, les autres poissons ont découvert à quel point la pieuvre timide était gentille, et tout le monde autour était désireux d'être l'ami d'une pieuvre aussi courageuse et honorable.</p>", genre: "Romance", age: "8 à 10 ans", tags: "Fées", rating: rand(21..82), user_id: user2.id)

story3 = Story.create!(title: "Princesse du Feu", summary: "Il était une fois une princesse incroyablement riche, belle et sage. Fatiguée des faux prétendants qui ne s'intéressaient qu'à son argent, elle annonça qu'elle n'épouserait que celui qui parviendrait à lui offrir le cadeau le plus précieux, le plus tendre et le plus sincère de tous.", content: "Il était une fois une princesse incroyablement riche, belle et sage. Fatiguée des faux prétendants qui ne s'intéressaient qu'à son argent, elle annonça qu'elle n'épouserait que celui qui parviendrait à lui offrir le cadeau le plus précieux, le plus tendre et le plus sincère de tous.
  Le palais s'est rempli de fleurs et de cadeaux de toutes sortes, de lettres décrivant l'amour éternel et de poèmes amoureux. Parmi tous ces merveilleux cadeaux, elle a trouvé un caillou, un simple caillou sale. Intriguée, elle a exigé de voir celui qui avait offert ce cadeau. Malgré sa curiosité, elle a fait semblant d'être très offensée par le cadeau lorsque le jeune homme lui a été présenté. Il lui a expliqué comme ça,
  \"Chère princesse, ce caillou représente la chose la plus précieuse que l'on puisse donner - c'est mon cœur. Il est également sincère, car il n'est pas encore à vous et il est aussi dur qu'une pierre. Ce n'est que lorsqu'il se remplira d'amour qu'il adoucir et être plus tendre que tout autre.\"

  Le jeune homme est parti tranquillement, laissant la princesse surprise et captivée. Elle en tomba tellement amoureuse qu'elle emmena le petit caillou avec elle partout où elle allait, et pendant des mois elle régala le jeune homme de cadeaux et d'attentions. Mais son cœur restait aussi dur que la pierre entre ses mains. Perdant espoir, elle a fini par jeter le caillou dans un feu. Dans la chaleur du feu, le sable s'est effondré autour de lui, et de cette pierre brute une belle figure dorée a émergé. Avec cela, la princesse a compris qu'elle-même devrait être comme le feu et s'occuper de séparer ce qui est inutile de ce qui est vraiment important.

  Au cours des mois suivants, elle entreprit de changer le royaume et consacra sa vie, sa sagesse et ses richesses à séparer ce qui a vraiment de la valeur de ce qui ne l'est pas. Elle a renoncé au luxe, aux bijoux, à l'excès ; et cela signifiait que tout le monde dans le royaume avait maintenant de la nourriture à manger et des livres à lire. Tant de personnes sont sorties de leur interaction avec la princesse enchantées par son caractère et son charisme. Sa simple présence transmettait une telle chaleur humaine qu'ils ont commencé à l'appeler \"La Princesse du Feu\".

  Et comme pour le caillou, le feu de sa présence fit fondre la dureté du cœur du jeune homme. Et comme il l'avait promis, il devint si tendre et prévenant qu'il rendit la princesse heureuse jusqu'à la fin de ses jours.", genre: "Aventure", age: "8 à 10 ans", tags: "Chevaliers", rating: rand(21..82), user_id: user2.id)

story4 = Story.create!(title: "Noir et blanc", summary: "Respectez-vous toujours les uns les autres !", content: "Il y a très, très longtemps, quand tout commençait à peine, et même les planètes et les étoiles étaient si jeunes qu'elles allaient encore à l'école, il y avait une classe spéciale qui était la préférée de tout le monde, ayant de loin les camarades de classe les plus amusants. Les membres de la classe étaient un groupe de couleurs plutôt espiègles; du noir et blanc au rouge et bleu, jaune et tout le reste. Ils espéraient devenir de merveilleuses couleurs, et c'est pour cela qu'ils s'entraînaient.

  En plus d'être drôles et joyeux, les couleurs étaient très coquines ; en particulier en noir et blanc, qui étaient tellement préoccupés par le chaos qu'ils étaient presque toujours en retard en classe.

  Un matin, il y eut une grande agitation dans le ciel. Les nuages étaient là-haut, s'entraînant à pleuvoir, mais ils pleuvaient depuis si longtemps qu'ils étaient partis et avaient créé une tempête si terrible que tout le monde était attristé et déprimé d'avoir si peu de lumière. Quand le soleil a recommencé à briller, même cela n'a pas réussi à égayer le monde.

  La seule solution était de faire appel, en dernier recours, aux couleurs coquines et espiègles, même si elles étaient encore très jeunes et n'étaient pas encore formées à ce genre de choses.
  Les autorités sont allées directement dans leur classe. Il était encore tôt et, comme toujours, le noir et blanc n'avait pas encore fait son apparition.
  Cependant, il n'y avait pas de temps à perdre; ils ne pouvaient pas attendre le noir et blanc. Les autres couleurs devaient faire quelque chose de rapide. Ils coururent dans les couloirs, hors de la porte, et s'envolèrent dans le ciel, où les nuages - honteux de ce qui s'était passé - attendaient.

  En montant vers les nuages, chacune des couleurs laissait une traînée resplendissante.
  Voyageant côte à côte, la combinaison de toutes les traînées de couleurs était si frappante et spectaculaire que les sourires sont revenus sur le visage de chacun et le monde s'est rempli d'applaudissements.

  Les couleurs se sentaient honorées et ravies d'être nommées assistantes officielles du soleil. Et les habitants du monde les ont suppliés de promettre qu'à partir de ce jour, les couleurs seraient toujours à portée de main, pour aider à remonter le moral de tous. Il était convenu que chaque fois que les nuages exagéreraient sur la pluie, les couleurs reviendraient rapidement et formeraient un arc-en-ciel.

  Un peu plus tard, noir et blanc entrèrent dans la salle de classe, la trouvant vide.
  Tout le monde félicitait tellement les autres couleurs pour leur merveilleuse performance que le noir et le blanc - vraiment la plus amusante et la plus joyeuse de toutes les couleurs - n'osaient pas demander à faire partie de l'arc-en-ciel, et à partir de ce moment-là, ils se sont forcés à être ponctuel et responsable.

  En effet, ils ont si bien réussi cela qu'ils ne voient plus d'inconvénient à être exclus de l'arc-en-ciel. Ils sont maintenant les plus sérieux et les plus importants de toutes les couleurs, et personne ne peut rien faire sans eux.", genre: "Fantaisie", age: "8 à 10 ans", tags: "Animaux", rating: rand(21..82), user_id: user2.id )

story5 = Story.create!(title: "Une porte ouverte sur le monde", summary: "Vous devez faire attention à ne pas devenir accro aux ordinateurs. Ils peuvent nous séparer de la vie quotidienne et du monde naturel.", content: "Albert était fou d'ordinateurs et de jeux vidéo. Il pouvait passer des heures et des heures devant l'écran, et même si ses parents avaient du mal à y croire, il en appréciait vraiment chaque minute. Il quittait à peine son siège. Lorsque les gens l'encourageaient à s'impliquer dans la vie normale, il répondait :

  -\"C'est ma porte d'entrée sur le monde, il y a bien plus ici que vous ne le pensez.\"

  Parmi tous ses jeux, il y en avait un qu'il aimait particulièrement. Il y déplaçait un personnage, collectant des tortues sur une infinité de niveaux et d'écrans. C'était un vrai expert en la matière. Peut-être qu'il n'y avait personne d'autre au monde qui avait collecté autant de tortues que lui, mais, néanmoins, Albert en voulait toujours de plus en plus...

  Un jour, en rentrant de l'école, tout avait changé. Comme d'habitude, dès son arrivée, il courut dans sa chambre pour allumer l'ordinateur. Mais cette fois, il entendit des bruits étranges, comme du verre brisé. Soudain, l'écran s'est brisé, et de l'intérieur sont apparues des dizaines, puis des centaines, puis des milliers de petites tortues. Et ils ont rempli chaque centimètre carré de sa chambre. Albert était stupéfait. Il ne pouvait pas croire ce qui se passait. Mais après s'être pincé, il a éteint et redémarré l'ordinateur plusieurs fois, et a appelé ses parents pour voir s'il rêvait de cela. En l'occurrence, il a dû accepter que ce jour-là, quelque chose de très étrange se produisait.

  En entrant, ses parents se prennent la tête entre les mains. Voyant que les tortues logeaient dans la chambre d'Albert, ils décidèrent d'en faire sa responsabilité.

  S'occuper de milliers de tortues, jour après jour, n'était pas une tâche facile. Au cours des jours suivants, Albert se mit à apprendre tout ce qu'il pouvait sur les tortues. Il a étudié leur alimentation, leurs habitudes, et il a commencé à imaginer des façons de les nourrir. Il a également essayé de les inciter à quitter sa chambre, mais cela n'a jamais fonctionné. Peu à peu, il s'est habitué à vivre parmi les tortues et a commencé à en profiter. Il aimait jouer avec eux, leur montrer des tours et les appeler par leur nom. Ceci malgré le fait que les nourrir et nettoyer après eux ne lui laissait guère de temps libre. Et tout le monde, y compris ses parents, ses amis et ses professeurs, a aimé entendre les histoires d'Albert et ses connaissances croissantes sur la nature.

  Enfin, le jour est arrivé où Albert a oublié son ordinateur bien-aimé. Il préférait maintenant vivre avec ses tortues, apprendre à les connaître et observer la façon dont elles interagissaient. Il est allé à la campagne pour voir comment ils vivaient là-bas. Il se sentait heureux qu'ils fassent partie de son monde.

  Ce même jour, aussi vite qu'elles étaient arrivées, les tortues ont disparu. En le découvrant, ses parents craignaient qu'il ne revienne à ses jeux vidéo et redevienne grincheux, mais cela ne s'est pas produit. Albert n'a pas versé une larme. Il n'a pas non plus perdu une seconde à chercher les tortues parmi les câbles et les puces de son ordinateur. Au lieu de cela, il a vidé ses économies de sa tirelire et s'est dirigé directement vers l'animalerie. Il est revenu avec une tortue et un autre animal dont il voulait s'occuper et en savoir plus.

  Et aujourd'hui encore, Albert apprend et découvre de nouvelles choses sur les animaux et la nature. Maintenant, il utilise également l'ordinateur pour le faire. Cependant, chaque fois que quelqu'un lui pose des questions à ce sujet, il pointe du doigt ses animaux de compagnie et dit :

  -\"Ils sont définitivement ma porte d'entrée sur le monde, ils sont bien plus que vous ne le pensez.\"", genre: "Fantaisie", age: "8 à 10 ans", tags: "Animaux", rating: rand(21..82), user_id: user2.id)

story6 = Story.create!(title: "Le Roi Invisible de la Jungle", summary: "Vous ne pouvez pas mentir et exagérer indéfiniment. Si vous ne pouvez pas tenir parole, tôt ou tard vous serez découvert.", content: "Dans la jungle de Maluba vivait une mouche appelée Mozzie, et Mozzie pouvait rugir comme un lion. Il a découvert sa capacité spéciale alors qu'il était encore très jeune et, en grandissant, il a voyagé jusqu'aux confins de Maluba, où personne ne le connaîtrait. Dès qu'il arrivait, il se déchaînait avec son rugissement pétrifiant, se déplaçant ici et là, effrayant tout le monde. Il utilisait toujours la même méthode, se cachant derrière des buissons, et laissant échapper un rugissement menaçant ; puis il volait rapidement derrière sa victime et rugissait à nouveau :

  -« GraaAAARRR ! »

  S'attendant à voir un lion terrifiant, personne ne remarqua la petite mouche, qui répétait ses tours encore et encore tout en se moquant de ses victimes, en disant :

  -« Tu ne me verras jamais. Je suis Leon, la créature la plus rapide et la plus forte de la jungle.

  -\"Voir? Je pourrais te détruire d'un seul coup de patte, avant même que tu ne t'en rendes compte.

  -\"As tu peur? Vous seriez sage d'être ainsi, car je suis le lion le plus féroce qui soit.

  Finalement, terrifiés, tous les animaux ont fini par accepter Léon le lion comme roi de la jungle Maluba. Et donc Mozzie a commencé à vivre heureux. Il avait tout ce qu'il voulait, et quand il avait besoin de quelque chose ou qu'il avait envie de s'amuser un peu, il n'avait qu'à se mettre à ses tours rugissants.

  Cependant, un jour, vint Tuga Tuga, une tortue un peu folle. Ils ont dit qu'il avait passé des années à travailler dans un cirque avec des êtres humains, un processus qui lui avait envoyé un peu des crackers. Mozzie n'allait pas manquer cette occasion de s'amuser avec un nouvel arrivant, alors il a préparé sa frayeur habituelle.

  Mais dès que Tuga Tuga a entendu les rugissements et les menaces du lion invisible, il a commencé à se tuer de rire…

  -\"Hahaha! Un lion fantôme ! J'ai connu une fois un lion fantôme, ainsi qu'un âne chauve et une belette avec une boiterie prononcée… et qu'ils s'amusaient quand ils dansaient ! Allez, allons danser, petit lion !

  Tous les animaux ont commencé à trembler, se sentant désolés pour le pauvre Tuga Tuga. C'était la première fois que quelqu'un osait traiter ainsi le terrible Léon, et sûrement le féroce lion n'aurait aucune pitié pour la tortue.

  Cependant, Mozzie ne pouvait ni mordre ni frapper la tortue, sa seule option était de continuer à rugir et à menacer. Pourtant, le fou Tuga Tuga n'arrêtait pas de rire, ne prêtant aucune attention aux furieux avertissements du lion. Après quelques minutes, il était clair que le lion n'allait exécuter aucune de ses menaces, et un petit oiseau audacieux s'est joint à Tuga Tuga, se moquant du lion. Mozzie a essayé d'effrayer le petit oiseau, mais cela n'a pas fonctionné. Peu à peu, les autres animaux ont commencé à se joindre à eux. Enfin, tous les animaux se moquaient de l'invisible Léon, l'appelant des choses comme : « le lion qui aboie mais ne mord pas », « le roi sans sujets » ou « le fantôme ». Le Roi Lion, celui qui ne fait rien »…

  Et ainsi se terminèrent les beaux jours de bonheur de Mozzie ; la mouche qui rugissait, qui menaçait, qui mentait tellement… tellement que quand venait le temps de tenir parole, il n'y avait plus moyen de le faire.", genre: "Fantaisie", age: "8 à 10 ans", tags: "Animaux", rating: rand(21..82), user_id: user2.id)

story7 = Story.create!(title: "Le Viking Aux Cent Cornes", summary: "L'ostentation n'apporte rien de positif. Tôt ou tard, cela deviendra une faiblesse.", content: "Olav Brutolsen était le plus terrible de tous les Vikings. Avec seulement ses mains nues, il pouvait combattre un taureau pour le soumettre en quelques secondes. Pour s'assurer que les gens sachent exactement qui il était, son casque et sa cape étaient ornés de ses trophées de victoire. Il avait plus de cent cornes sur son casque, et mille pierres précieuses sur son manteau. une pierre pour chaque ennemi qu'il avait vaincu.

  Dans sa ville, tout le monde lui faisait place au passage, mais un jour un jeune homme qui lisait distraitement en marchant, rencontra Olav. Olav était furieux. Il fit des reproches au jeune homme et le défia d'un combat à mort. Le jeune homme maigre n'avait pas le choix ; tout ce qu'il pouvait faire était d'accepter à une condition :

  -\"Je ne vois pas très bien, et je ne te connais pas, alors j'aurai besoin que tu gardes ton casque et ta cape pendant le combat pour que je puisse te distinguer.\"

  Olav éclata de rire et accepta avec dédain la condition stupide du jeune homme, avant de se lancer sur le jeune homme, avec l'intention de le détruire. Le garçon était agile et il a tout juste réussi à se glisser entre les griffes d'Olav. La même chose se produisait à chaque fois qu'Olav attaquait, et au fur et à mesure que le combat avançait, il devenait plus facile pour le jeune homme d'échapper aux attaques. Bien que personne ne puisse croire comment allait le garçon, ils s'attendaient tous à ce qu'il tombe mort dès qu'Olav porterait le premier coup.

  Mais ce coup n'est jamais venu. Olav avait attaqué pendant plus de cinq minutes et au bout de dix minutes, il est tombé au sol, comme mort.

  De nombreux spectateurs pensaient que le jeune homme devait être une sorte de sorcier, mais le garçon, qui était un étudiant en médecine du nom de Virtensen, avait démontré à tout le monde à quel point la fierté et l'ostentation d'Olav avaient suffi à le faire tomber sous le poids de son casque. et manteau. Quand Olav revint à lui, comme un bon guerrier, il accepta sa défaite. A partir de ce jour, il se débarrasse des trophées inutiles sur son casque et son manteau, et revient à des vêtements simples. Maintenant, partout où il marchait, il était comme n'importe qui d'autre. Partout, c'est-à-dire, sauf lorsqu'il marchait sur le champ de bataille, où il était reconnu non pas pour ses nombreuses cornes ou son manteau orné de bijoux, mais pour sa férocité inégalée.", genre: "Conte", age: "8 à 10 ans", tags: "Animaux", rating: rand(21..82), user_id: user2.id)


story8 = Story.create!(title: "La maison de l'escargot", summary: "Un petit escargot trouve une solution à ses problèmes de randonnée grâce à une découverte surprenante", content: "Il était une fois un pauvre escargot qui souffrait beaucoup à chaque fois qu'il partait en randonnée, car il avait du mal à suivre le rythme de ses compagnons. La coccinelle était aussi rapide qu'une souris, le mille-pattes, avec ses mille pattes, ignorait la fatigue, le scarabée prenait même le temps de faire des escapades vers les fleurs. Le pauvre petit escargot, lui, peinait, soufflait, transpirait tout seul et loin derrière, abandonné par les autres qui n'avaient plus la patience de l'attendre. Quand le petit escargot parvenait enfin à rejoindre le groupe, les autres petites bêtes s'étaient déjà bien reposées, avaient bien mangé et après avoir bien joué, avaient préparé le campement et dormaient depuis bien longtemps. Et comme il n'y avait plus de place, le petit escargot devait coucher à la belle étoile. Mais chaque matin, obstiné, il reprenait la route, espérant toujours rattraper ses amis. Pour ne pas s'ennuyer pendant le parcours, il sifflotait, regardait à droite et à gauche, saluait les petites bêtes qu'il rencontrait. Un jour qu'il avançait le nez en l'air pour admirer le vol d'un beau papillon, le petit escargot buta sur une surface dure qui lui fit perdre l'équilibre. « Ça alors, mais qu'est-ce que c'est ? » se demanda-t-il car il n'avait jamais vu une chose pareille (ce qui est normal puisqu'il s'agissait d'un coquillage perdu par un enfant qui l'avait ramené du bord de mer.) D'un naturel curieux, et comme la chose ne bougeait pas, le petit escargot alla voir de plus près et inspecta l'intérieur attentivement. En y pénétrant, il s'aperçut qu'elle était parfaitement à sa taille et de plus très légère à porter. « C'est super ! », jubila alors le petit escargot, « je vais m'en faire une maison. » Et il se mit en route, le coquillage sur le dos. Quand il arriva au campement, tout le monde dormait déjà mais le lendemain matin, en sortant de son coquillage, le petit escargot remporta un très grand succès et toutes les petites bêtes ressentaient une pointe d'envie. Ainsi, le petit escargot n'avait plus besoin de se construire une maison chaque nuit, il ne craignait plus ni le grand soleil, ni la pluie et pouvait faire une sieste quand il le voulait. Les petites bêtes de la forêt cherchèrent alors toutes une maison à se mettre sur le dos, mais en fin de compte il n'y en eut que pour l'escargot.", genre: "Aventure", age: "5 à 8 ans", tags: "Escargot, Amis, Nature", rating: rand(21..82), user_id: user2.id)
file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680616618/Pimprenelle/biblidhis_027i01_s1p2et.png")
story8.photo.attach(io: file, filename: "biblidhis_027i01_s1p2et.png", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story8.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story8.save

story9 = Story.create!(title: "Roland", summary: "Roland découvre qu'il peut donner vie à ses dessins et envoie un zèbre et des ours en classe", content: "Roland était en retard. « Va au coin », dit le maître, et Roland obéit. Mais, au coin, il n'y avait rien à faire, alors Roland prit son crayon et dessina un tigre allongé sur le mur. Puis il dit : « CRACK » et le tigre devint vivant. Le tigre s'étira, se déroula de tout son long et dit bonjour au maître très poliment. Le maître répondit : « Il n'y a pas de place pour toi ici. » Il ouvrit la porte et, sans un mot de plus, le tigre sortit. « Récréation, tout le monde dehors maintenant », dit le maître. « Sauf toi, Roland. Tu restes ici. Et attention, plus de « CRACK », je te prie ». Roland resta seul dans la classe. Comme il s'ennuyait, il prit son cahier, dessina un zèbre, arracha la page et la colla à la fenêtre. Dans la cour, les autres garçons faisaient une bataille de boules de neige. Une des boules frappa la vitre, le verre fit « CRACK » en se cassant, et le zèbre devint vivant. D'un bond il fut dans la cour et d'un bond il franchit le mur. Le maître n'avait rien vu car il avait reçu une boule de neige dans l'œil. Heureusement, pas très dure. Après la récréation, la classe reprit. Dehors, le vent soufflait fort. Par la vitre cassée, la neige entrait à gros flocons et s'entassait sur le plancher. Roland avait oublié ce que le maître lui avait dit. Il dessina donc vingt sapins, trois ours noirs, deux ours bruns et un ruisseau et dit : « CRACK ! CRACK ! CRACK ! CRACK ! ». Le ruisseau se mit à couler et les ours à marcher sur la neige du plancher ! Alors le maître dit aux enfants de rentrer chez eux car il faisait vraiment trop froid.", genre: "Fantaisie", age: "5 à 8 ans", tags: "Dessin, Animaux, Ecole", rating: rand(21..82), user_id: user2.id)
file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680622995/Pimprenelle/biblidhis_011i01_ksfkgy.png")
story9.photo.attach(io: file, filename: "biblidhis_011i01_ksfkgy.png", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story9.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story9.save

story10 = Story.create!(title: "L'hermine et l'hiver", summary: "L'hermine se promène seule en hiver, mais découvre que son pelage blanc la protège des prédateurs", content: "Un jour d'hiver, alors que la forêt était recouverte d'un beau manteau blanc, l'hermine se promenait pendant que ses amis dormaient en attendant le retour du printemps. « Que vais-je bien pouvoir faire, se demanda-t-elle, je m'ennuie toute seule » Elle essaya bien de réveiller quelques-uns de ses amis : l'écureuil, le hérisson, mais elle n'y parvint pas. « Bon, se dit-elle, puisque tout le monde dort et même Hector, le grand ours, je vais en profiter pour le taquiner. » Elle s'approcha doucement du museau d'Hector et souffla très fort. Celui-ci, qui ne dormait que d'un œil, poussa un grognement de mécontentement si impressionnant que l'hermine devint blanche de peur et s'enfuit à toutes pattes. Cependant, en se promenant ainsi le poil tout blanc, elle s'aperçut qu'on ne la remarquait pas et pouvait facilement échapper au loup et au renard. C'est pourquoi maintenant l'hermine garde son manteau blanc l'hiver en se faisant peur toute seule.", genre: "Aventure", age: "2 à 5 ans", tags: "Animaux, Hiver, Couleurs", rating: rand(21..82), user_id: user2.id)
file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680622976/Pimprenelle/biblidhis_028i01_vajy4u.png")
story10.photo.attach(io: file, filename: "biblidhis_028i01_vajy4u.png", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story10.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story10.save

story11 = Story.create!(title: "Le Chêne et le Roseau", summary: "Le Chêne se moque du Roseau, mais leur résistance face à la tempête révèle leur vrai caractère.", content: "Le Chêne un jour dit au Roseau :
  Vous avez bien sujet d'accuser la Nature ;
  Un Roitelet pour vous est un pesant fardeau.
  Le moindre vent qui d'aventure
  Fait rider la face de l'eau,
  Vous oblige à baisser la tête :
  Cependant que mon front, au Caucase pareil,
  Non content d'arrêter les rayons du Soleil,
  Brave l'effort de la tempête.
  Tout vous est Aquilon, tout me semble Zéphir.
  Encor si vous naissiez à l'abri du feuillage
  Dont je couvre le voisinage,
  Vous n'auriez pas tant à souffrir :
  Je vous défendrais de l'orage ;
  Mais vous naissez le plus souvent
  Sur les humides bords des Royaumes du vent.
  La nature envers vous me semble bien injuste.
  — Votre compassion, lui répondit l'Arbuste,
  Part d'un bon naturel ; mais quittez ce souci.
  Les vents me sont moins qu'à vous redoutables.
  Je plie, et ne romps pas. Vous avez jusqu'ici
  Contre leurs coups épouvantables
  Résisté sans courber le dos ;
  Mais attendons la fin. Comme il disait ces mots
  Du bout de l'horizon accourt avec furie
  Le plus terrible des enfants
  Que le Nord eût porté jusque-là dans ses flancs.
  L'Arbre tient bon ; le Roseau plie.
  Le vent redouble ses efforts,
  Et fait si bien qu'il déracine
  Celui de qui la tête au Ciel était voisine,
  Et dont les pieds touchaient à l'Empire des Morts.", genre: "Conte", age: "5 à 8 ans", tags: "Nature, Tempête, Résilience", rating: rand(21..82), user_id: user2.id)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680681734/Pimprenelle/biblidpoe_002i01_tfnno1.png")
story11.photo.attach(io: file, filename: "biblidpoe_002i01_tfnno1.png", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story11.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story11.save

story12 = Story.create!(
  title: "Le Hareng Saur",
  summary: "Une histoire simple et amusante mettant en fureur les gens graves et amusant les enfants petits",
  content: "Il était un grand mur blanc — nu, nu, nu,
  Contre le mur une échelle — haute, haute, haute,
  Et, par terre, un hareng saur — sec, sec, sec.
  Il vient, tenant dans ses mains — sales, sales, sales,
  Un marteau lourd, un grand clou — pointu, pointu, pointu,
  Un peloton de ficelle — gros, gros, gros.
  Alors il monte à l'échelle — haute, haute, haute,
  Et plante le clou pointu — toc, toc, toc,
  Tout en haut du grand mur blanc — nu, nu, nu.
  Il laisse aller le marteau — qui tombe, qui tombe, qui tombe,
  Attache au clou la ficelle — longue, longue, longue,
  Et, au bout, le hareng saur — sec, sec, sec.
  Il redescend de l'échelle — haute, haute, haute,
  L'emporte avec le marteau — lourd, lourd, lourd ;
  Et puis, il s'en va ailleurs — loin, loin, loin.
  Et, depuis, le hareng saur — sec, sec, sec,
  Au bout de cette ficelle — longue, longue, longue,
  Très lentement se balance — toujours, toujours, toujours.",
  genre: "Humour",
  age: "2 à 5 ans",
  tags: "Nourriture, Animaux, Farce",
  rating: rand(21..82), user_id: user2.id
)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680681886/Pimprenelle/biblidpoe_006i01_c5xnff.png")
story12.photo.attach(io: file, filename: "biblidpoe_006i01_c5xnff.png", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story12.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story12.save


story13 = Story.create!(title: "Le Renard et le Bouc",
  summary: "La ruse peut se retourner contre soi. Réfléchis avant d'agir.",
  content: "Capitaine Renard allait de compagnie
  Avec son ami Bouc des plus haut encornés.
  Celui-ci ne voyait pas plus loin que son nez ;
  L'autre était passé maître en fait de tromperie.
  La soif les obligea de descendre en un puits.
  Là chacun d'eux se désaltère.
  Après qu'abondamment tous deux en eurent pris,
  Le Renard dit au Bouc : Que ferons-nous, compère ?
  Ce n'est pas tout de boire, il faut sortir d'ici.
  Lève tes pieds en haut, et tes cornes aussi :
  Mets-les contre le mur. Le long de ton échine
  Je grimperai premièrement ;
  Puis sur tes cornes m'élevant,
  A l'aide de cette machine,
  De ce lieu-ci je sortirai,
  Après quoi je t'en tirerai.
  — Par ma barbe, dit l'autre, il est bon ; et je loue
  Les gens bien sensés comme toi.
  Je n'aurais jamais, quant à moi,
  Trouvé ce secret, je l'avoue.
  Le Renard sort du puits, laisse son compagnon,
  Et vous lui fait un beau sermon
  Pour l'exhorter à patience.
  Si le ciel t'eût, dit-il, donné par excellence
  Autant de jugement que de barbe au menton,
  Tu n'aurais pas, à la légère,
  Descendu dans ce puits. Or, adieu, j'en suis hors.
  Tâche de t'en tirer, et fais tous tes efforts :
  Car pour moi, j'ai certaine affaire
  Qui ne me permet pas d'arrêter en chemin.
  En toute chose il faut considérer la fin.",
  genre: "Conte",
  age: "5 à 8 ans",
  tags: "Animaux, Ruse, Morale",
  rating: rand(21..82), user_id: user2.id)


file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680681982/Pimprenelle/biblidpoe_020i01_hprpds.png")
story13.photo.attach(io: file, filename: "biblidpoe_020i01_hprpds.png", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story13.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story13.save


story14 = Story.create!(
  title: "Mon lit est un bateau",
  summary: "La nuit, un petit matelot prend la mer dans son lit, direction l'inconnu.",
  content: "Mon lit est un petit bateau ;
  Nounou m'aide à y embarquer,
  Me met l'habit de matelot,
  Me pousse dans l'obscurité.

  De nuit, à bon bord, je dérive,
  Salue mes amis sur la rive ;
  Je ferme les yeux, vogue au loin,
  Et ne vois ni n'entends plus rien.

  Parfois j'emporte des objets
  Qu'emportent les bons matelots
  Peut-être un morceau de gâteau,
  Ou bien encore quelques jouets.

  Toute la nuit nous dérivons ;
  Mais quand le jour revient briller,
  Rentré dans ma chambre, au ponton
  Je vois mon vaisseau amarré.",
  genre: "Aventure",
  age: "2 à 5 ans",
  tags: "Mer, Enfance, Imagination",
  rating: rand(21..82), user_id: user2.id
)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680682130/Pimprenelle/biblidpoe_007i01_ytl5dg.png")
story14.photo.attach(io: file, filename: "biblidpoe_007i01_ytl5dg.png", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story14.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story14.save

story15 = Story.create!(
  title: "Le Héron",
  summary: "Un héron trop exigeant finit par se retrouver affamé. Ne soyons pas trop difficiles dans nos choix.",
  content: "Un jour, sur ses longs pieds, allait je ne sais où,
Le Héron au long bec emmanché d'un long cou.
Il côtoyait une rivière.
L'onde était transparente ainsi qu'aux plus beaux jours ;
Ma commère la carpe y faisait mille tours
Avec le brochet son compère.
Le Héron en eût fait aisément son profit :
Tous approchaient du bord, l'oiseau n'avait qu'à prendre ;
Mais il crut mieux faire d'attendre
Qu'il eût un peu plus d'appétit.
Il vivait de régime, et mangeait à ses heures.
Après quelques moments l'appétit vint : l'oiseau
S'approchant du bord vit sur l'eau
Des Tanches qui sortaient du fond de ces demeures.
Le mets ne lui plut pas ; il s'attendait à mieux
Et montrait un goût dédaigneux
Comme le rat du bon Horace.
Moi des Tanches ? dit-il, moi Héron que je fasse
Une si pauvre chère ? Et pour qui me prend-on ?
La Tanche rebutée il trouva du goujon.
Du goujon ! c'est bien là le dîner d'un Héron !
J'ouvrirais pour si peu le bec ! aux Dieux ne plaise !
Il l'ouvrit pour bien moins : tout alla de façon
Qu'il ne vit plus aucun poisson.
La faim le prit, il fut tout heureux et tout aise
De rencontrer un limaçon.
Ne soyons pas si difficiles :
Les plus accommodants ce sont les plus habiles :
On hasarde de perdre en voulant trop gagner,
Gardez-vous de rien dédaigner ;
Surtout quand vous avez à peu près votre compte.
Bien des gens y sont pris ; ce n'est pas aux Hérons
Que je parle ; écoutez, humains, un autre conte ;
Vous verrez que chez vous j'ai puisé ces leçons.",
  genre: "Conte",
  age: "5 à 8 ans",
  tags: "Animaux, Morale, Choix",
  rating: rand(21..82), user_id: user2.id
)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680682281/Pimprenelle/biblidpoe_012i01_movfn1.png")
story15.photo.attach(io: file, filename: "biblidpoe_012i01_movfn1.png", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story15.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story15.save


story16 = Story.create!(title: "Le Petit Poisson et le Pêcheur",
  summary: "Un jeune poisson est capturé par un pêcheur, qui refuse de le libérer malgré ses supplications.",
  content: "Petit poisson deviendra grand,
Pourvu que Dieu lui prête vie.
Mais le lâcher en attendant,
Je tiens pour moi que c'est folie ;
Car de le rattraper il n'est pas trop certain.
Un Carpeau qui n'était encore que fretin
Fut pris par un Pêcheur au bord d'une rivière.
Tout fait nombre, dit l'homme en voyant son butin ;
Voilà commencement de chère et de festin :
Mettons-le en notre gibecière.
Le pauvre Carpillon lui dit en sa manière :
Que ferez-vous de moi ? je ne saurais fournir
Au plus qu'une demi-bouchée ;
Laissez-moi Carpe devenir :
Je serai par vous repêchée.
Quelque gros Partisan m'achètera bien cher,
Au lieu qu'il vous en faut chercher
Peut-être encor cent de ma taille
Pour faire un plat. Quel plat ? croyez-moi ; rien qui vaille.
— Rien qui vaille ? Eh bien soit, repartit le Pêcheur ;
Poisson, mon bel ami, qui faites le Prêcheur,
Vous irez dans la poêle ; et vous avez beau dire,
Dès ce soir on vous fera frire.
Un tien vaut, ce dit-on, mieux que deux tu l'auras :
L'un est sûr, l'autre ne l'est pas.",
  genre: "Conte",
  age: "5 à 8 ans",
  tags: "Animaux, Amitié, Morale",
  rating: rand(21..82), user_id: user2.id)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680682596/Pimprenelle/biblidpoe_018i01_canjgb.png")
story16.photo.attach(io: file, filename: "biblidpoe_018i01_canjgb.png", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story16.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story16.save


story17 = Story.create!(title: "Le Soleil et la Lune",
  summary: "Le Soleil et la Lune décident de manger leurs enfants, mais la Lune trahit le Soleil qui perd tous les siens.",
  content: "Le Soleil un jour dit à la Lune :
« Ma chère amie, nous avons beaucoup trop d'enfants, qui nous causent bien du tourment, mangeons-les.
— Je suis de votre avis, répondit la Lune, mais ce serait trop horrible de manger ses propres enfants. Envoyez-moi chaque jour un des vôtres, et je vous ferai servir, en retour, un des miens. »
Le Soleil accepta et la Lune reçut dès le lendemain un des fils de son ami. Elle n'y toucha pas, mais l'arrosant d'une nouvelle sauce, le renvoya au Soleil qui, sans se méfier et croyant qu'il s'agissait d'un enfant de la Lune, le mangea.
Ainsi firent-ils tous les jours… Et le Soleil perdit tous ses enfants. La Lune, par contre, conserva tous les siens. C'est pourquoi on peut voir, le jour, le Soleil seul au firmament, tandis que la Lune, la nuit, est entourée de sa nombreuse progéniture d'étoiles.
Lorsque le Soleil comprit la trahison de son amie, il s'élança furieux après elle et la poursuite continue encore de nos jours. Parfois, il arrive que le Soleil rattrape la vieille coquine de Lune et commence à la dévorer. Alors, les villageois, effrayés à l'idée que le Soleil réussisse à accomplir sa vengeance et quitte le monde des hommes, le privant ainsi de sa chaleur et de sa lumière, crient en frappant sur des calebasses : « Lâche-la, lâche-la. »
Et le Soleil, impressionné par le bruit, renonce, mais pour un temps seulement, à sa vengeance.",
  genre: "Conte",
  age: "10 à 12 ans",
  tags: "Mythologie, Aventure, Fantaisie",
  rating: rand(21..82), user_id: user2.id)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680682868/Pimprenelle/biblidcon_081i01_glm7t2.png")
story17.photo.attach(io: file, filename: "biblidcon_081i01_glm7t2.png", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story17.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story17.save

story18 = Story.create!(title: "Le Canari Merveilleux",
  summary: "Baffo, une petite fille mal élevée, achète un canari au marché, mais il se transforme en aigrette et l'emmène en haut d'un arbre.",
  content: "Baffo était une petite fille mal élevée. Elle passait son temps à se battre avec ses camarades et refusait obstinément de travailler. De plus, elle ne pouvait voir un objet sans y toucher.
Ses parents la punissaient souvent, mais c'était peine perdue : elle n'en devenait pas meilleure pour cela.
Un jour, au marché, Baffo vit des petits canaris blancs. Elle en prit un au creux de sa main et demanda au marchand voisin : « Quel est le prix de ce canari ?
— Je n'en sais rien, répondit l'homme. Mais, de toute façon, il n'est pas à vendre ! »
Sans prêter attention à ces paroles, Baffo jeta à terre vingt pièces et s'éloigna en emportant le canari. « Quand le marchand s'en reviendra, se dit-elle, il trouvera l'argent à la place du canari. »
Or ces petits canaris blancs n'étaient autres que des aigrettes qui, à chaque jour de marché, se transformaient pour vivre un peu au milieu des hommes.
Avant que Baffo ait atteint sa case, le canari redevint aigrette. L'oiseau saisit alors la petite fille et s'envola avec elle jusqu'au sommet d'un grand arbre. Puis, déposant Baffo sur une grosse branche, il reprit son vol et disparut.
Baffo poussa des cris, suppliant les passants de prévenir ses parents.
Ceux-ci accoururent, amenant avec eux leur chien noir qui grimpa à l'arbre et en redescendit avec Baffo.
La leçon profita à la fillette qui se corrigea de son indiscipline. Et, par reconnaissance, elle n'oublia jamais, chaque fois qu'elle mangeait son couscous, d'en donner la première et la dernière poignée au gros chien noir qui l'avait tirée de ce mauvais pas.",
  genre: "Conte",
  age: "5 à 8 ans",
  tags: "Animaux, Morale, Apprentissage",
  rating: rand(21..82), user_id: user2.id)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680683208/Pimprenelle/biblidcon_004i01_mqzeta.png")
story18.photo.attach(io: file, filename: "biblidcon_004i01_mqzeta.png", content_type: "image/jpg")
story18.save


story19 = Story.create!(title: "Le Garçon et les Autruches", summary: "Tous les animaux fuient le garçon, sauf les autruches qui deviennent ses amies fidèles.", content: "Il y avait un garçon qui s'en alla seul dans le monde. Il alla dans la plaine déserte. Tous les animaux le fuyaient.
  Il alla d'abord aux gazelles ; elles le fuirent.
  Il alla aux antilopes ; elles le fuirent.
  Il alla aux impalas ; ils le fuirent.
  Il alla aux zèbres ; ils le fuirent.
  Il alla aux lions ; ils le fuirent.
  Il alla aux girafes ; elles le fuirent.
  Il alla aux éléphants ; ils le fuirent.
  Et toujours ainsi jusqu'à ce qu'il arrivât aux autruches ; elles restèrent près de lui. Il habita avec elles et il devint leur compagnon. Quand elles se couchaient, elles ouvraient leurs ailes et il s'endormait entre elles. Elles l'habillaient de leurs plumes. Il mangeait leur nourriture, excepté les petites pierres qui étaient trop dures pour lui. Quand il grandit, ses cheveux grandirent avec lui et il en vint à les porter traînant à terre.

  Un jour, des hommes montèrent sur des chevaux pour chasser les autruches. Ils suivirent le garçon à la trace car il était parmi elles. Ils les suivirent jusqu'à ce qu'elles se lèvent de dessous un arbre.

  Les épines de l'arbre saisirent le garçon et le retinrent jusqu'à ce que les hommes le trouvent près de mourir.
  Ils l'oignirent de parfums ; le garçon reprit ses sens. Il leur dit : « Les autruches sont meilleures que tous les animaux. »

  Lorsque les siens apprirent cela, ils dirent : « Nous jurons de ne jamais tuer les autruches à cause du bien que nous savons d'elles. »", genre: "Conte", age: "10 à 12 ans", tags: "Animaux, Amitié, Courage", rating: rand(21..82), user_id: user2.id)


file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680683461/Pimprenelle/biblidcon_009i01_fvc1fb.png")
story19.photo.attach(io: file, filename: "biblidcon_009i01_fvc1fb.png", content_type: "image/jpg")
story19.save


story20 = Story.create!(
  title: "Le Renard et la Cigogne",
  summary: "Un renard invite une cigogne à dîner, mais il la trompe en servant son repas dans un vase trop étroit.",
  content: "Compère le Renard se mit un jour en frais, et retint à dîner commère la Cigogne.
  Le régal fut petit, et sans beaucoup d'apprêts ;
  Le galand pour toute besogne
  Avait un brouet clair (il vivait chichement).
  Ce brouet fut par lui servi sur une assiette :
  La Cigogne au long bec n'en put attraper miette ;
  Et le drôle eut lapé le tout en un moment.
  Pour se venger de cette tromperie,
  À quelque temps de là, la Cigogne le prie.
  Volontiers, lui dit-il, car avec mes amis
  Je ne fais point cérémonie.
  À l'heure dite il courut au logis
  De la Cigogne son hôtesse,
  Loua très fort la politesse,
  Trouva le dîner cuit à point.
  Bon appétit surtout ; Renards n'en manquent point.
  Il se réjouissait à l'odeur de la viande
  Mise en menus morceaux, et qu'il croyait friande.
  On servit, pour l'embarrasser,
  En un vase à long col et d'étroite embouchure
  Le bec de la Cigogne y pouvait bien passer,
  Mais le museau du Sire était d'autre mesure.
  Il lui fallut à jeun retourner au logis,
  Honteux comme un Renard qu'une Poule aurait pris,
  Serrant la queue, et portant bas l'oreille.
  Trompeurs, c'est pour vous que j'écris :
  Attendez-vous à la pareille.",
  genre: "Conte",
  age: "5 à 8 ans",
  tags: "Animaux, Nourriture, Tromperie",
  rating: rand(21..82), user_id: user2.id
)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680683848/Pimprenelle/biblidpoe_005i01_p4jb28.png")
story20.photo.attach(io: file, filename: "biblidpoe_005i01_p4jb28.png", content_type: "image/jpg")
story20.save

story21 = Story.create!(title: "Le Corbeau et le Renard", summary: "Un corbeau vaniteux se fait flatter par un renard pour lui voler son fromage.", content: "Maître Corbeau, sur un arbre perché,
  Tenait en son bec un fromage.
  Maître Renard, par l'odeur alléché,
  Lui tint à peu près ce langage :
  Et bonjour, Monsieur du Corbeau.
  Que vous êtes joli ! que vous me semblez beau !
  Sans mentir, si votre ramage
  Se rapporte à votre plumage,
  Vous êtes le Phénix des hôtes de ces bois.
  À ces mots, le Corbeau ne se sent pas de joie ;
  Et pour montrer sa belle voix,
  Il ouvre un large bec, laisse tomber sa proie.
  Le Renard s'en saisit, et dit : Mon bon Monsieur,
  Apprenez que tout flatteur
  Vit aux dépens de celui qui l'écoute.
  Cette leçon vaut bien un fromage, sans doute.
  Le Corbeau honteux et confus
  Jura, mais un peu tard, qu'on ne l'y prendrait plus.", genre: "Conte", age: "5 à 8 ans", tags: "Animaux, Morale, Humour", rating: rand(21..82), user_id: user2.id)


file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680684029/Pimprenelle/biblidpoe_001i01_evsh7c.png")
story21.photo.attach(io: file, filename: "biblidpoe_001i01_evsh7c.png", content_type: "image/jpg")
story21.save

story22 = Story.create!(title: "Le Lion et le Rat", summary: "Même le plus petit peut être utile, comme le rat qui sauva le lion pris dans les rets.", content: "Il faut, autant qu'on peut, obliger tout le monde :
  On a souvent besoin d'un plus petit que soi.
  De cette vérité deux Fables feront foi,
  Tant la chose en preuves abonde.
  Entre les pattes d'un Lion
  Un Rat sortit de terre assez à l'étourdie.
  Le Roi des animaux, en cette occasion,
  Montra ce qu'il était, et lui donna la vie.
  Ce bienfait ne fut pas perdu.
  Quelqu'un aurait-il jamais cru
  Qu'un Lion d'un Rat eût affaire ?
  Cependant il avint qu'au sortir des forêts
  Ce Lion fut pris dans des rets
  Dont ses rugissements ne le purent défaire.
  Sire Rat accourut, et fit tant par ses dents
  Qu'une maille rongée emporta tout l'ouvrage,
  Patience et longueur de temps
  Font plus que force ni que rage.", genre: "Conte", age: "5 à 8 ans", tags: "Animaux", rating: rand(21..82), user_id: user2.id)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680684154/Pimprenelle/biblidpoe_015i01_a1wqbz.png")
story22.photo.attach(io: file, filename: "biblidpoe_015i01_a1wqbz.png", content_type: "image/jpg")
story22.save

story23 = Story.create!(
  title: "Le Loup et la Cigogne",
  summary: "Les Loups ne font pas de bons convives, comme la Cigogne en fit l'expérience.",
  content: "Les Loups mangent gloutonnement.
Un Loup donc étant de frairie,
Se pressa, dit-on, tellement
Qu'il en pensa perdre la vie.
Un os lui demeura bien avant au gosier.
De bonheur pour ce Loup, qui ne pouvait crier,
Près de là passe une Cigogne.
Il lui fait signe, elle accourt.
Voilà l'Opératrice aussitôt en besogne.
Elle retira l'os ; puis pour un si bon tour
Elle demanda son salaire.
Votre salaire ? dit le Loup :
Vous riez, ma bonne commère.
Quoi ! ce n'est pas encor beaucoup
D'avoir de mon gosier retiré votre cou ?
Allez, vous êtes une ingrate ;
Ne tombez jamais sous ma patte.",
  genre: "Conte",
  age: "5 à 8 ans",
  tags: "Animaux, Amitié, Humour",
  rating: rand(21..82), user_id: user2.id
)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680684289/Pimprenelle/biblidpoe_017i01_rumzel.png")
story23.photo.attach(io: file, filename: "biblidpoe_017i01_rumzel.png", content_type: "image/jpg")
story23.save

story24 = Story.create!(
  title: "Le Loup et l'Agneau",
  summary: "Un loup cherche querelle à un agneau innocent en se servant de fausses accusations.",
  content: "La raison du plus fort est toujours la meilleure :
Nous l'allons montrer tout à l'heure.
Un Agneau se désaltérait
Dans le courant d'une onde pure.
Un Loup survient à jeun qui cherchait aventure,
Et que la faim en ces lieux attirait.
Qui te rend si hardi de troubler mon breuvage ?
Dit cet animal plein de rage :
Tu seras châtié de ta témérité.
— Sire, répond l'Agneau, que votre Majesté
Ne se mette pas en colère ;
Mais plutôt qu'elle considère
Que je me vas désaltérant
Dans le courant,
Plus de vingt pas au-dessous d'Elle,
Et que par conséquent, en aucune façon,
Je ne puis troubler sa boisson.
— Tu la troubles, reprit cette bête cruelle,
Et je sais que de moi tu médis l'an passé.
— Comment l'aurais-je fait si je n'étais pas né ?
Reprit l'Agneau, je tette encor ma mère.
— Si ce n'est toi, c'est donc ton frère.
— Je n'en ai point.
— C'est donc quelqu'un des tiens :
Car vous ne m'épargnez guère,
Vous, vos bergers, et vos chiens.
On me l'a dit : il faut que je me venge.
Là-dessus, au fond des forêts
Le Loup l'emporte, et puis le mange,
Sans autre forme de procès.",
  genre: "Conte",
  age: "5 à 8 ans",
  tags: "Animaux, Morale, Mensonge",
  rating: rand(21..82), user_id: user2.id
)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680684431/Pimprenelle/biblidpoe_016i01_iqlod8.png")
story24.photo.attach(io: file, filename: "biblidpoe_016i01_iqlod8.png", content_type: "image/jpg")
story24.save


story25 = Story.create!(
  title: "Le Lièvre et la Tortue",
  summary: "Une course contre la montre pour déterminer qui est le plus rapide, le lièvre ou la tortue.",
  content: "Rien ne sert de courir ; il faut partir à point.
Le Lièvre et la Tortue en sont un témoignage.
Gageons, dit celle-ci, que vous n'atteindrez point
Sitôt que moi ce but. — Sitôt ? Êtes-vous sage ?
Repartit l'animal léger.
Ma commère, il vous faut purger
Avec quatre grains d'ellébore.
— Sage ou non, je parie encore.
Ainsi fut fait : et de tous deux
On mit près du but les enjeux :
Savoir quoi, ce n'est pas l'affaire,
Ni de quel juge l'on convint.
Notre Lièvre n'avait que quatre pas à faire ;
J'entends de ceux qu'il fait lorsque prêt d'être atteint
Il s'éloigne des chiens, les renvoie aux Calendes,
Et leur fait arpenter les landes.
Ayant, dis-je, du temps de reste pour brouter,
Pour dormir, et pour écouter
D'où vient le vent, il laisse la Tortue
Aller son train de Sénateur.
Elle part, elle s'évertue ;
Elle se hâte avec lenteur.
Lui cependant méprise une telle victoire,
Tient la gageure à peu de gloire,
Croit qu'il y va de son honneur
De partir tard. Il broute, il se repose,
Il s'amuse à toute autre chose
Qu'à la gageure. À la fin quand il vit
Que l'autre touchait presque au bout de la carrière,
Il partit comme un trait ; mais les élans qu'il fit
Furent vains : la Tortue arriva la première.
Eh bien ! lui cria-t-elle, avais-je pas raison ?
De quoi vous sert votre vitesse ?
Moi, l'emporter ! et que serait-ce
Si vous portiez une maison ?",
  genre: "Conte",
  age: "5 à 8 ans",
  tags: "Animaux, Course, Leçon",
  rating: rand(21..82), user_id: user2.id
)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680684539/Pimprenelle/biblidpoe_004i01_ajaxqg.png")
story25.photo.attach(io: file, filename: "biblidpoe_004i01_ajaxqg.png", content_type: "image/jpg")
story25.save

story26 = Story.create!(title: "La Forêt des Lumières",
  summary: "Une fillette découvre une forêt enchantée où les animaux l'aident à retrouver son chemin.",
  content: "Il était une fois, une petite fille nommée Lila qui vivait dans un petit village près d'une forêt. Un jour, alors qu'elle se promenait, elle s'éloigna un peu trop du sentier et se perdit. Alors que la nuit tombait, Lila commença à s'inquiéter. Soudain, elle remarqua que les arbres autour d'elle étaient ornés de lumières scintillantes et colorées.

  Curieuse, Lila suivit les lumières et rencontra un groupe d'animaux qui parlaient. Il y avait un cerf, un écureuil et un hibou. Les animaux lui dirent que la forêt était magique et que les lumières étaient là pour aider ceux qui étaient perdus. Les animaux décidèrent de l'aider à retrouver son chemin.

  Ils l'emmenèrent à travers la forêt, et Lila découvrit des endroits merveilleux et des créatures fantastiques. Les animaux lui montrèrent des fleurs qui brillaient dans l'obscurité et des papillons aux ailes scintillantes. Finalement, les animaux l'accompagnèrent jusqu'à l'orée de la forêt, où elle put apercevoir les lumières de son village.

  Lila remercia chaleureusement ses nouveaux amis et promit de ne jamais oublier la Forêt des Lumières Magiques. Elle retourna chez elle, le cœur rempli de gratitude et d'émerveillement pour les merveilles qu'elle avait découvertes.",

  genre: "Conte",
  age: "5 à 8 ans",
  tags: "Animaux, Magie, Aventure",
  rating: 75,
  user_id: user1.id)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680775103/Pimprenelle/OTIweDEwODAuanBn_tjfp4f.jpg")
story26.photo.attach(io: file, filename: "OTIweDEwODAuanBn_tjfp4f.jpg", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story26.audios.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story26.save

story27 = Story.create!(title: "Le Royaume des Nuages",
  summary: "Un garçon courageux traverse une série d'épreuves pour sauver un royaume caché dans les nuages.",
  content: "Dans un village lointain vivait un jeune garçon nommé Tom. Un jour, alors qu'il jouait près de la rivière, il trouva un étrange objet brillant. C'était une clé en or, attachée à un ballon qui flottait dans les airs. Comme par magie, le ballon emmena Tom vers les cieux, où il découvrit un royaume caché parmi les nuages. Ce royaume était peuplé d'êtres merveilleux, tels que des licornes, des dragons et des fées.

  La reine du royaume, une fée gracieuse, expliqua à Tom que leur monde était en danger. Un sorcier maléfique avait volé le Cœur du Royaume, une pierre précieuse qui donnait vie aux nuages et permettait au royaume de flotter. Sans elle, les nuages commenceraient à s'effondrer, et le royaume serait perdu. La clé en or que Tom avait trouvée était la clé pour retrouver le Cœur du Royaume.

  Tom décida de venir en aide aux habitants du royaume. La reine lui confia une quête pour traverser les terres dangereuses et retrouver le Cœur du Royaume. Avec l'aide de ses nouveaux amis, un dragon nommé Blaze et une licorne appelée Lune, Tom se prépara pour son aventure.

  Ils traversèrent des forêts enchantées, des montagnes escarpées et des rivières tumultueuses. À chaque étape, ils durent surmonter de nombreux défis, comme résoudre des énigmes et affronter des créatures redoutables. Finalement, ils arrivèrent au sombre château du sorcier maléfique. Grâce à la clé en or, ils pénétrèrent à l'intérieur et affrontèrent le sorcier dans une bataille épique.

  Après une lutte acharnée, Tom et ses amis réussirent à vaincre le sorcier et à récupérer le Cœur du Royaume. Ils le ramenèrent à la reine, qui le replaça à sa place, sauvant ainsi le royaume. La reine remercia Tom pour son courage et son altruisme, et lui offrit la possibilité de rester dans le royaume. Cependant, Tom décida de retourner dans son village avec Blaze et Lune, qui devinrent ses compagnons pour la vie.

  De retour chez lui, Tom raconta ses aventures à ses amis et à sa famille. Le Royaume des Nuages Flottants était désormais en sécurité, et Tom avait appris que le courage, l'amitié et la persévérance pouvaient surmonter les plus grands obstacles.",

  genre: "Aventure",
  age: "9 à 10 ans",
  tags: "Magie, Amis, Courage",
  rating: 80,
  user_id: user1.id)

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1680775692/Pimprenelle/MTgwMzA4MDUxMDUy_cvn3ds.jpg")
story27.photo.attach(io: file, filename: "MTgwMzA4MDUxMDUy_cvn3ds.jpg", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680813511/tinywow_Le_royaume_des_nuages_klsngp_18987587_xubm30.mp3")
story27.audios.attach(io: file, filename: "tinywow_Le_royaume_des_nuages_klsngp_18987587_xubm30.mp3", content_type: "audio/mp3")
story27.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261825/IMG_3139_j6nk3m.jpg")
story1.photo.attach(io: file, filename: "IMG_3139_j6nk3m.jpg", content_type: "image/jpg")
story1.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261825/IMG_3136_gnnjcn.jpg")
story2.photo.attach(io: file, filename: "IMG_3136_gnnjcn.jpg", content_type: "image/jpg")
story2.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261824/IMG_3135_shsmgh.jpg")
story3.photo.attach(io: file, filename: "IMG_3135_shsmgh.jpg", content_type: "image/jpg")
story3.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261825/IMG_3137_lumsia.gif")
story4.photo.attach(io: file, filename: "IMG_3137_lumsia.gif", content_type: "image/gif")
story4.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261820/IMG_3140_kh2cyu.jpg")
story5.photo.attach(io: file, filename: "IMG_3140_kh2cyu.jpg", content_type: "image/jpg")
story5.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261824/IMG_3138_srkunj.jpg")
story6.photo.attach(io: file, filename: "IMG_3138_srkunj.jpg", content_type: "image/jpg")
story6.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261684/IMG_3141_yif7zj.jpg")
story7.photo.attach(io: file, filename: "IMG_3141_yif7zj.jpg", content_type: "image/jpg")
story7.save

Favorite.create!(story_id: story8.id, user_id: user1.id)
Favorite.create!(story_id: story10.id, user_id: user1.id)
Favorite.create!(story_id: story15.id, user_id: user1.id)
Favorite.create!(story_id: story21.id, user_id: user1.id)
