require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Audio.destroy_all
Favorite.destroy_all
Story.destroy_all
User.destroy_all

user1 = User.create!(first_name: "Ginette", last_name: "Wagon", email: "test@gmail.com", username: "lewagon", password: "1234567")
user2 = User.create!(first_name: "John", last_name: "Doe", email: "theuser@gmail.com", username: "anonymous", password: "abcdefg")
user3 = User.create!(first_name: "Paul", last_name: "Ipsum", email: "random@outlook.com", username: "latin01", password: "atested")

story1 = Story.create!(title: "Les mauvais voisins", summary: "De très mauvais voisins dans notre quartier !", content: "Il était une fois un homme qui était parti à la recherche d'un emploi. Alors qu'il passait devant la maison de son voisin, un papier important est tombé de la poche de l'homme.

  Il se trouve que son voisin regardait par la fenêtre. Il a vu le morceau de papier tomber, et il s'est dit : \" Quelle honte ! Ce type a délibérément laissé tomber ça de sa poche. Il essaie de salir la façade de ma maison, et il est sournois aussi ! \"
  Mais au lieu de sortir et de dire quelque chose, le voisin a planifié sa vengeance.

  Cette nuit-là, il prit sa corbeille à papier et se rendit chez l'homme. Il se trouve que le premier homme regardait par la fenêtre et a vu ce qui s'est passé. Plus tard, alors qu'il ramassait les papiers qui avaient été jetés sur son porche, il a trouvé l'important morceau de papier qu'il avait perdu. Il a été déchiré en dizaines de morceaux. Il pensa que son voisin avait non seulement fait ses poches, mais avait eu le culot de salir sa porte avec des ordures.

  Il ne voulait rien dire. Au lieu de cela, il a commencé à planifier sa vengeance. Cette nuit-là, il a téléphoné à un fermier pour passer une commande de dix cochons et de cent canards. Il a demandé qu'ils soient livrés à la maison de son voisin.

  Bien sûr, le lendemain, son voisin eut pas mal de mal à se débarrasser de tant d'animaux et de leur pong qui l'accompagnait.

  Sûr qu'il s'agissait d'une ignoble ruse de son voisin, dès que le deuxième homme s'était débarrassé des cochons et des canards, il recommença à planifier sa vengeance.

  Et ainsi de suite.

  Ils ont continué à essayer de se venger l'un de l'autre, et à chaque fois leurs actes de vengeance sont devenus plus gros et plus ridicules. La chute de ce seul morceau de papier a fini par évoquer un groupe de rock, une sirène d'incendie, l'enfoncement d'un camion dans une clôture de jardin, le lancement d'une grêle de pierres sur les fenêtres, le tir d'un canon et enfin le largage de une bombe qui a détruit les maisons des deux hommes.

  Tous deux se sont retrouvés dans un hôpital et ont dû passer un certain temps à partager une chambre là-bas. Au début, ils ont refusé de se parler, mais un jour, fatigués du silence, ils se sont mis à parler. Au fil du temps, ils sont devenus amis, jusqu'au jour où ils ont finalement osé discuter de l'incident du morceau de papier. Ils ont réalisé que tout cela n'avait été qu'un malentendu et que s'ils s'étaient parlé la première fois - au lieu de tirer des conclusions hâtives sur de mauvaises intentions - rien de tout cela ne serait arrivé. Mieux encore, ils auraient toujours leurs maisons.

  Cependant, à la fin, le fait qu'ils parlaient et soient devenus amis les a beaucoup aidés à se remettre de leurs blessures et à travailler ensemble pour reconstruire leurs maisons.", genre: "Fantaisie", age: "8 à 10 ans", tags: "Princes et Princesses", rating: 3, user_id: user1.id)

story2 = Story.create!(title: "Un poulpe en détresse", summary: "Nous devons aller sauver la pieuvre!", content: "Il était une fois une pieuvre timide et silencieuse. Il se déplaçait presque toujours seul car, bien qu'il veuille avoir beaucoup d'amis, il était trop gêné.

  Un jour, la pieuvre essayait d'attraper une huître très glissante. Avant qu'il ne s'en rende compte, il s'était attaché en un nœud massif et il ne pouvait pas bouger. Il a essayé de toutes ses forces de se dégager, mais ce n'était pas bon. Finalement, malgré la grande gêne qu'il ressentait d'être vu dans un tel enchevêtrement, il dut demander de l'aide aux poissons qui passaient. De nombreux poissons passèrent à la nage, l'ignorant, mais un petit poisson très gentil offrit son aide pour détacher tous ces tentacules de toutes ces ventouses.

  La pieuvre s'est sentie profondément soulagée quand il a finalement été libéré, mais il était si timide qu'il n'a pas osé parler au poisson et se lier d'amitié avec lui. Il a simplement remercié le poisson et a rapidement nagé. Plus tard, la pieuvre a passé toute la nuit à penser qu'il avait raté une belle occasion de se lier d'amitié avec ce petit poisson très gentil.

  Quelques jours plus tard, la pieuvre se reposait entre des rochers, quand il remarqua que tout le monde autour nageait à la hâte. Il regarda au loin et vit un énorme poisson venir se nourrir dans cette zone. La pieuvre se cacha rapidement; puis, jetant un œil hors de sa cachette, il vit que l'énorme poisson poursuivait le gentil petit poisson qui l'avait détaché. Ce petit poisson avait vraiment besoin d'une aide urgente, mais le gros poisson avait l'air si dangereux que personne n'osait s'en approcher. La pieuvre, se rappelant comment le petit poisson l'avait aidé, sentit qu'il devait faire tout ce qu'il pouvait pour lui venir en aide.

  Sans hésiter, la pieuvre jaillit des rochers, comme une raie. Il s'est mis sur le chemin du poisson géant, et avant que le poisson ne puisse faire quoi que ce soit, la pieuvre avait lancé le plus gros jet d'encre de sa vie. Il a attrapé le petit poisson et est reparti à la nage pour se cacher dans les rochers. Tout s'est passé si vite que le gros poisson n'a pas eu le temps de réagir. Cependant, il s'est vite remis de la surprise. Il partit vers les rochers, à la recherche de la pieuvre et du petit poisson. Maintenant, il voulait vraiment les engloutir !

  Bientôt, cependant, il commença à ressentir une terrible démangeaison ; d'abord dans ses branchies, puis dans ses nageoires, puis sur tout son corps. Il s'est avéré que ce poisson géant avait un caractère très artistique, il adorait les couleurs ; et l'encre noire de la pieuvre lui avait donné une terrible allergie !!
  Alors le gros poisson s'éloigna, tout irrité.

  Dès qu'il fut parti, tous les poissons qui s'étaient cachés vinrent féliciter la pieuvre d'avoir été si courageuse. Puis le petit poisson leur raconta à tous comment il avait aidé la pieuvre quelques jours plus tôt, mais il n'avait jamais vu quelqu'un être aussi reconnaissant qu'il finisse par faire quelque chose d'aussi dangereux. En entendant cela, les autres poissons ont découvert à quel point la pieuvre timide était gentille, et tout le monde autour était désireux d'être l'ami d'une pieuvre aussi courageuse et honorable.", genre: "Romance", age: "8 à 10 ans", tags: "Fées", rating: 5, user_id: user1.id)

story3 = Story.create!(title: "Princesse du Feu", summary: "Il était une fois une princesse incroyablement riche, belle et sage. Fatiguée des faux prétendants qui ne s'intéressaient qu'à son argent, elle annonça qu'elle n'épouserait que celui qui parviendrait à lui offrir le cadeau le plus précieux, le plus tendre et le plus sincère de tous.", content: "Il était une fois une princesse incroyablement riche, belle et sage. Fatiguée des faux prétendants qui ne s'intéressaient qu'à son argent, elle annonça qu'elle n'épouserait que celui qui parviendrait à lui offrir le cadeau le plus précieux, le plus tendre et le plus sincère de tous.
  Le palais s'est rempli de fleurs et de cadeaux de toutes sortes, de lettres décrivant l'amour éternel et de poèmes amoureux. Parmi tous ces merveilleux cadeaux, elle a trouvé un caillou, un simple caillou sale. Intriguée, elle a exigé de voir celui qui avait offert ce cadeau. Malgré sa curiosité, elle a fait semblant d'être très offensée par le cadeau lorsque le jeune homme lui a été présenté. Il lui a expliqué comme ça,
  \"Chère princesse, ce caillou représente la chose la plus précieuse que l'on puisse donner - c'est mon cœur. Il est également sincère, car il n'est pas encore à vous et il est aussi dur qu'une pierre. Ce n'est que lorsqu'il se remplira d'amour qu'il adoucir et être plus tendre que tout autre.\"

  Le jeune homme est parti tranquillement, laissant la princesse surprise et captivée. Elle en tomba tellement amoureuse qu'elle emmena le petit caillou avec elle partout où elle allait, et pendant des mois elle régala le jeune homme de cadeaux et d'attentions. Mais son cœur restait aussi dur que la pierre entre ses mains. Perdant espoir, elle a fini par jeter le caillou dans un feu. Dans la chaleur du feu, le sable s'est effondré autour de lui, et de cette pierre brute une belle figure dorée a émergé. Avec cela, la princesse a compris qu'elle-même devrait être comme le feu et s'occuper de séparer ce qui est inutile de ce qui est vraiment important.

  Au cours des mois suivants, elle entreprit de changer le royaume et consacra sa vie, sa sagesse et ses richesses à séparer ce qui a vraiment de la valeur de ce qui ne l'est pas. Elle a renoncé au luxe, aux bijoux, à l'excès ; et cela signifiait que tout le monde dans le royaume avait maintenant de la nourriture à manger et des livres à lire. Tant de personnes sont sorties de leur interaction avec la princesse enchantées par son caractère et son charisme. Sa simple présence transmettait une telle chaleur humaine qu'ils ont commencé à l'appeler \"La Princesse du Feu\".

  Et comme pour le caillou, le feu de sa présence fit fondre la dureté du cœur du jeune homme. Et comme il l'avait promis, il devint si tendre et prévenant qu'il rendit la princesse heureuse jusqu'à la fin de ses jours.", genre: "Aventure", age: "8 à 10 ans", tags: "Chevaliers", rating: 3, user_id: user3.id)

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

  En effet, ils ont si bien réussi cela qu'ils ne voient plus d'inconvénient à être exclus de l'arc-en-ciel. Ils sont maintenant les plus sérieux et les plus importants de toutes les couleurs, et personne ne peut rien faire sans eux.", genre: "Fantaisie", age: "8 à 10 ans", tags: "Animaux", rating: 3, user_id: user2.id )

story5 = Story.create!(title: "Une porte ouverte sur le monde", summary: "Vous devez faire attention à ne pas devenir accro aux ordinateurs. Ils peuvent nous séparer de la vie quotidienne et du monde naturel.", content: "Albert était fou d'ordinateurs et de jeux vidéo. Il pouvait passer des heures et des heures devant l'écran, et même si ses parents avaient du mal à y croire, il en appréciait vraiment chaque minute. Il quittait à peine son siège. Lorsque les gens l'encourageaient à s'impliquer dans la vie normale, il répondait :

  -\"C'est ma porte d'entrée sur le monde, il y a bien plus ici que vous ne le pensez.\"

  Parmi tous ses jeux, il y en avait un qu'il aimait particulièrement. Il y déplaçait un personnage, collectant des tortues sur une infinité de niveaux et d'écrans. C'était un vrai expert en la matière. Peut-être qu'il n'y avait personne d'autre au monde qui avait collecté autant de tortues que lui, mais, néanmoins, Albert en voulait toujours de plus en plus...

  Un jour, en rentrant de l'école, tout avait changé. Comme d'habitude, dès son arrivée, il courut dans sa chambre pour allumer l'ordinateur. Mais cette fois, il entendit des bruits étranges, comme du verre brisé. Soudain, l'écran s'est brisé, et de l'intérieur sont apparues des dizaines, puis des centaines, puis des milliers de petites tortues. Et ils ont rempli chaque centimètre carré de sa chambre. Albert était stupéfait. Il ne pouvait pas croire ce qui se passait. Mais après s'être pincé, il a éteint et redémarré l'ordinateur plusieurs fois, et a appelé ses parents pour voir s'il rêvait de cela. En l'occurrence, il a dû accepter que ce jour-là, quelque chose de très étrange se produisait.

  En entrant, ses parents se prennent la tête entre les mains. Voyant que les tortues logeaient dans la chambre d'Albert, ils décidèrent d'en faire sa responsabilité.

  S'occuper de milliers de tortues, jour après jour, n'était pas une tâche facile. Au cours des jours suivants, Albert se mit à apprendre tout ce qu'il pouvait sur les tortues. Il a étudié leur alimentation, leurs habitudes, et il a commencé à imaginer des façons de les nourrir. Il a également essayé de les inciter à quitter sa chambre, mais cela n'a jamais fonctionné. Peu à peu, il s'est habitué à vivre parmi les tortues et a commencé à en profiter. Il aimait jouer avec eux, leur montrer des tours et les appeler par leur nom. Ceci malgré le fait que les nourrir et nettoyer après eux ne lui laissait guère de temps libre. Et tout le monde, y compris ses parents, ses amis et ses professeurs, a aimé entendre les histoires d'Albert et ses connaissances croissantes sur la nature.

  Enfin, le jour est arrivé où Albert a oublié son ordinateur bien-aimé. Il préférait maintenant vivre avec ses tortues, apprendre à les connaître et observer la façon dont elles interagissaient. Il est allé à la campagne pour voir comment ils vivaient là-bas. Il se sentait heureux qu'ils fassent partie de son monde.

  Ce même jour, aussi vite qu'elles étaient arrivées, les tortues ont disparu. En le découvrant, ses parents craignaient qu'il ne revienne à ses jeux vidéo et redevienne grincheux, mais cela ne s'est pas produit. Albert n'a pas versé une larme. Il n'a pas non plus perdu une seconde à chercher les tortues parmi les câbles et les puces de son ordinateur. Au lieu de cela, il a vidé ses économies de sa tirelire et s'est dirigé directement vers l'animalerie. Il est revenu avec une tortue et un autre animal dont il voulait s'occuper et en savoir plus.

  Et aujourd'hui encore, Albert apprend et découvre de nouvelles choses sur les animaux et la nature. Maintenant, il utilise également l'ordinateur pour le faire. Cependant, chaque fois que quelqu'un lui pose des questions à ce sujet, il pointe du doigt ses animaux de compagnie et dit :

  -\"Ils sont définitivement ma porte d'entrée sur le monde, ils sont bien plus que vous ne le pensez.\"", genre: "Fantaisie", age: "8 à 10 ans", tags: "Animaux", rating: 3, user_id: user1.id)

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

  Et ainsi se terminèrent les beaux jours de bonheur de Mozzie ; la mouche qui rugissait, qui menaçait, qui mentait tellement… tellement que quand venait le temps de tenir parole, il n'y avait plus moyen de le faire.", genre: "Fantaisie", age: "8 à 10 ans", tags: "Animaux", rating: 3, user_id: user2.id)

story7 = Story.create!(title: "Le Viking Aux Cent Cornes", summary: "L'ostentation n'apporte rien de positif. Tôt ou tard, cela deviendra une faiblesse.", content: "Olav Brutolsen était le plus terrible de tous les Vikings. Avec seulement ses mains nues, il pouvait combattre un taureau pour le soumettre en quelques secondes. Pour s'assurer que les gens sachent exactement qui il était, son casque et sa cape étaient ornés de ses trophées de victoire. Il avait plus de cent cornes sur son casque, et mille pierres précieuses sur son manteau. une pierre pour chaque ennemi qu'il avait vaincu.

  Dans sa ville, tout le monde lui faisait place au passage, mais un jour un jeune homme qui lisait distraitement en marchant, rencontra Olav. Olav était furieux. Il fit des reproches au jeune homme et le défia d'un combat à mort. Le jeune homme maigre n'avait pas le choix ; tout ce qu'il pouvait faire était d'accepter à une condition :

  -\"Je ne vois pas très bien, et je ne te connais pas, alors j'aurai besoin que tu gardes ton casque et ta cape pendant le combat pour que je puisse te distinguer.\"

  Olav éclata de rire et accepta avec dédain la condition stupide du jeune homme, avant de se lancer sur le jeune homme, avec l'intention de le détruire. Le garçon était agile et il a tout juste réussi à se glisser entre les griffes d'Olav. La même chose se produisait à chaque fois qu'Olav attaquait, et au fur et à mesure que le combat avançait, il devenait plus facile pour le jeune homme d'échapper aux attaques. Bien que personne ne puisse croire comment allait le garçon, ils s'attendaient tous à ce qu'il tombe mort dès qu'Olav porterait le premier coup.

  Mais ce coup n'est jamais venu. Olav avait attaqué pendant plus de cinq minutes et au bout de dix minutes, il est tombé au sol, comme mort.

  De nombreux spectateurs pensaient que le jeune homme devait être une sorte de sorcier, mais le garçon, qui était un étudiant en médecine du nom de Virtensen, avait démontré à tout le monde à quel point la fierté et l'ostentation d'Olav avaient suffi à le faire tomber sous le poids de son casque. et manteau. Quand Olav revint à lui, comme un bon guerrier, il accepta sa défaite. A partir de ce jour, il se débarrasse des trophées inutiles sur son casque et son manteau, et revient à des vêtements simples. Maintenant, partout où il marchait, il était comme n'importe qui d'autre. Partout, c'est-à-dire, sauf lorsqu'il marchait sur le champ de bataille, où il était reconnu non pas pour ses nombreuses cornes ou son manteau orné de bijoux, mais pour sa férocité inégalée.", genre: "Conte", age: "8 à 10 ans", tags: "Animaux", rating: 3, user_id: user3.id)

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261825/IMG_3139_j6nk3m.jpg")
story1.photo.attach(io: file, filename: "IMG_3139_j6nk3m.jpg", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story1.audio.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story1.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261825/IMG_3136_gnnjcn.jpg")
story2.photo.attach(io: file, filename: "IMG_3136_gnnjcn.jpg", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story2.audio.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story2.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261824/IMG_3135_shsmgh.jpg")
story3.photo.attach(io: file, filename: "IMG_3135_shsmgh.jpg", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story3.audio.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story3.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261825/IMG_3137_lumsia.gif")
story4.photo.attach(io: file, filename: "IMG_3137_lumsia.gif", content_type: "image/gif")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story4.audio.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story4.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261820/IMG_3140_kh2cyu.jpg")
story5.photo.attach(io: file, filename: "IMG_3140_kh2cyu.jpg", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story5.audio.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story5.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261824/IMG_3138_srkunj.jpg")
story6.photo.attach(io: file, filename: "IMG_3138_srkunj.jpg", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story6.audio.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story6.save

file = URI.open("https://res.cloudinary.com/dyi2oz7zm/image/upload/v1680261684/IMG_3141_yif7zj.jpg")
story7.photo.attach(io: file, filename: "IMG_3141_yif7zj.jpg", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dyi2oz7zm/video/upload/v1680095816/Float_z5pvtc.mp3")
story7.audio.attach(io: file, filename: "Float_z5pvtc.mp3", content_type: "audio/mp3")
story7.save
