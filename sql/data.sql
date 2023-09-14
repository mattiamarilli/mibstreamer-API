USE faceart;

-- authors

INSERT INTO authors(name_author,infourl_author) 
VALUES ('Leoanardo Da Vinci','https://it.wikipedia.org/wiki/Leonardo_da_Vinci');

INSERT INTO authors(name_author,infourl_author) 
VALUES ('Caravaggio','https://it.wikipedia.org/wiki/Caravaggio');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Vincent Van Gogh', 'https://it.wikipedia.org/wiki/Vincent_van_Gogh');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Raffaello Sanzio', 'https://it.wikipedia.org/wiki/Raffaello_Sanzio');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Antonello da Messina', 'https://it.wikipedia.org/wiki/Antonello_da_Messina');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Tiziano Vecellio', 'https://it.wikipedia.org/wiki/Tiziano_Vecellio');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Andy Warhol', 'https://it.wikipedia.org/wiki/Andy_Warhol');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Gustave Courbet', 'https://it.wikipedia.org/wiki/Gustave_Courbet');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Sandro Botticelli', 'https://it.wikipedia.org/wiki/Sandro_Botticelli');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Jan Vermeer', 'https://it.wikipedia.org/wiki/Jan_Vermeer');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Grant Wood', 'https://it.wikipedia.org/wiki/Grant_Wood');

-- paintings

INSERT INTO paintings(name,year,location,imgurl,infourl,description,id_author) 
VALUES ('Gioconda',1503,'Museo del Louvre, Parigi','https://mattiamarilli.github.io/faceapi-img/gioconda.jpeg','https://it.wikipedia.org/wiki/Gioconda','A wonderful painting by Leonardo Da Vinci',1);

INSERT INTO paintings(name,year,location,imgurl,infourl,description,id_author) 
VALUES ('Scudo con testa di Medusa',1598,'Galleria degli Uffizi, Firenze','https://mattiamarilli.github.io/faceapi-img/medusa.jpg','https://it.wikipedia.org/wiki/Scudo_con_testa_di_Medusa','A wonderful painting by Caravaggio',2);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ('Dama col liocorno', 1505, 'Galleria Borghese, Roma', 'https://mattiamarilli.github.io/faceapi-img/damaLiocorno.jpg', 'https://it.wikipedia.org/wiki/Dama_col_liocorno', 'A wonderful painting by Raffaello Sanzio', 4);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ('La Bella', 1536, 'Galleria Palatina, Firenze', 'https://mattiamarilli.github.io/faceapi-img/laBella.jpg', 'https://it.wikipedia.org/wiki/La_Bella', 'A wonderful painting by Tiziano Vecellio', 6);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ('Nascita di Venere', 1485, 'Galleria degli Uffizi, Firenze', 'https://mattiamarilli.github.io/faceapi-img/venere.jpg', 'https://it.wikipedia.org/wiki/Nascita_di_Venere', 'A wonderful painting by Sandro Botticelli', 9);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ("Ritratto d'uomo", 1476, 'National Gallery, Londra', 'https://mattiamarilli.github.io/faceapi-img/ritrattoUomo.jpg', "https://it.wikipedia.org/wiki/Ritratto_d'uomo_(Antonello_da_Messina_Londra)", 'A wonderful painting by Antonello da Messina', 5);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ("Ragazza col turbante", 1666, 'Mauritshuis, Paesi Bassi', 'https://mattiamarilli.github.io/faceapi-img/ragazzaTurbante.jpg', "https://it.wikipedia.org/wiki/Ragazza_col_turbante", 'A wonderful painting by Jan Vermeer', 10);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ('American Gotic', 1930, 'Art Institute of Chicago, Chicago', 'https://mattiamarilli.github.io/faceapi-img/americanGotic.jpeg', "https://it.wikipedia.org/wiki/American_Gothic_(dipinto)", 'A wonderful painting by Grant Wood', 11);

INSERT paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ('Ritratto di Elisabetta Gonzaga', 1505, "Galleria degli Uffizi, Firenze", 'https://mattiamarilli.github.io/faceapi-img/elisabettaGonzaga.jpg', 'https://it.wikipedia.org/wiki/Ritratto_di_Elisabetta_Gonzaga', 'A wonderful painting by Raffaello Sanzio', 4);

-- tips (3 tips for painting)

--Gioconda
--1
INSERT INTO tips (description) 
VALUES ('Remember, Lisa Gherardini, the woman portrayed by Leonardo da Vinci poses turned left, with the front face,
rotated towards the viewer');

--2
INSERT INTO tips (description) 
VALUES ('Come on you can do it! Leonardo was particularly good at painting the Giocanda. It is not possible 
to distinguish the traces of the brush strokes');

--3
INSERT INTO tips (description) 
VALUES ('The gioconda has a neutral expression since Leonardo wanted to introduce a very deep psychological introspection');

--Scudo con testa di medusa
--4
INSERT INTO tips (description) 
VALUES ('The painting depicts the severed head of Medusa, a monster described as a woman with 
bronze hands and golden wings who had countless venomous snakes on her head in place of her own hair');

--5
INSERT INTO tips (description) 
VALUES ('The painting was commissioned as a commemoration shield by Cardinal Francesco Maria Del Monte, 
who wanted to give it to the Grand Duke of Tuscany, Ferdinando I dei Medici');

--6
INSERT INTO tips (description) 
VALUES ('The level of tenebrism and realism are well portrayed in this painting, creating a three-dimensional appearance');

--Dama col liocorno
--7
INSERT INTO tips (description) 
VALUES ('It was in the course of this work that overpainting was removed, revealing the unicorn');

--8
INSERT INTO tips (description) 
VALUES ('The painting was originally oil on panel, and was transferred to canvas during conservation work in 1934');

--9
INSERT INTO tips (description) 
VALUES ('The composition of the picture, placing the figure in a loggia opening out onto a landscape, 
the three quarter length format was apparently inspired by the Mona Lisa');

--La Bella
--10
INSERT INTO tips (description) 
VALUES ('The woman corresponds perfectly to all the ideals of beauty of the time with possibly the only exception of only medium blond hair');

--11
INSERT INTO tips (description) 
VALUES ('She points with her left hand to a zibellino draped over her right forearm');

--12
INSERT INTO tips (description) 
VALUES ('The portrait represents a young beauty in a blue dress with decollete and rich gold ornaments against a dark background');

--Nascita di Venere
--13
INSERT INTO tips (description) 
VALUES ('There is heavy use of gold as a pigment for highlights, on hair, wings, textiles, the shell and the landscape. 
This was all apparently applied after the painting was framed');

--14
INSERT INTO tips (description) 
VALUES ('Botticelli art was never fully committed to naturalism; in comparison to his contemporary Domenico Ghirlandaio, 
Botticelli seldom gave weight and volume to his figures and rarely used a deep perspectival space');

--15
INSERT INTO tips (description) 
VALUES ('The subject is not strictly the "Birth of Venus", a title given to the painting only in the 
nineteenth century (though given as the subject by Vasari), but the next scene in her story, where she arrives on land, 
blown by the wind');

--Il ritratto d'uomo
--16
INSERT INTO tips(description)
VALUES ('The protagonist of the portrait faces right');

--17
INSERT INTO tips(description)
VALUES ('The look hints at a serious expression and the lips are tightened');

--18
INSERT INTO tips(description)
VALUES ('His face, on the other hand, is slightly rotated towards the front of the painting');

--Ragazza col turbante
--19
INSERT INTO tips(description)
VALUES ('Turn your head three-quarters towards the viewer, in favor of the light falling from the left.');

--20
INSERT INTO tips(description)
VALUES ('Fleshy red lips parting in an astonished sketch of a smile, thin, straight nose, eyes');

--21
INSERT INTO tips(description)
VALUES ("Don't stand too close to the webcam");

--American gotic
--22
INSERT INTO tips(description)
VALUES ("The painting portrays a couple of old gentlemen standing half-length in front of a rural-style wooden house.");

--23
INSERT INTO tips(description)
VALUES ("The man holds a pitchfork in his right hand and looks at the viewer");

--24
INSERT INTO tips(description)
VALUES ("He has a restless expression and typically wear colonial clothes");

--Ritratto di Elisabetta Gonzaga
--25
INSERT INTO tips(description)
VALUES ("She is portrayed half-length in a rather unusual frontal pose with an archaic flavor");

--26
INSERT INTO tips(description)
VALUES ("The face turned slightly to the right, the eyes downwards, in the opposite direction.");

--27
INSERT INTO tips(description)
VALUES ("Elizabeth has a reddened complexion, her hair is loose, two curls in the shape of a tempting snake peek out over her shoulders");

-- tips_paintings

--Gioconda
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (1,1);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (1,2);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (1,3);


--Scudo con testa di Medusa
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (2,4);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (2,5);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (2,6);

--Dama col liocorno
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (3,7);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (3,8);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (3,9);

--La Bella
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (4,10);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (4,11);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (4,12);

--Nascita di Venere
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (5,13);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (5,14);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (5,15);

--Il ritratto d'uomo
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (6,16);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (6,17);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (6,18);

--La ragazza col turbante
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (7,19);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (7,20);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (7,21);

--American Gotic
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (8,22);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (8,23);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (8,24);

--Ritratto di Elisabetta di Gonzaga
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (9,25);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (9,26);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (9,27);