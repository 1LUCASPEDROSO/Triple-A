create database db_Itegreer_project;
use db_Itegreer_project;

create table microsoft(
id_company_microsoft int not null  primary key,
id_game_microsoft int not null,
game_name varchar(80) not null,
Description_game varchar(4000),
oficial_price double null,
ofical_date date not null,
last_event date not null,
next_event date not null
);
create table Sony(
id_company_sony int not null primary key,
id_game_sony int not null ,
game_name varchar(80) not null,
Description_game varchar(4000),
oficial_price double  null,
ofical_date date not null,
last_event date not null,
next_event date  null
);
create table Nintendo(
id_company_nintendo int not null primary key,
id_game_nintendo int not null ,
game_name varchar(80) not null,
Description_game varchar(4000),
oficial_price double  null,
ofical_date date not null,
last_event date not null,
next_event date  null
);
create table PC(
id_company_pc int not null primary key,
id_game_pc int not null,
game_name varchar(80) not null,
Description_game varchar(4000),
oficial_price double null,
ofical_date date not null,
last_event date not null,
next_event date not null
);
create table Game_not_exclusive(
id_game int not null auto_increment primary key,
game_name varchar(80) not null,
Description_game varchar(4000),
oficial_price double  null,
ofical_date date not null,
plataform_microsoft int not null,
plataform_sony int not  null,
plataform_nintendo int not null,
plataform_pc int not null,
foreign key(plataform_microsoft)references microsoft(id_company_microsoft),
foreign key(plataform_sony)references sony(id_company_sony),
foreign key(plataform_nintendo)references nintendo(id_company_nintendo),
foreign key(plataform_pc)references pc(id_company_pc)
);


insert into microsoft values (1,1,"Postal: Brain Damaged",": POSTAL: Brain Damaged é uma nova versão orientada para a ação da série de jogos cult Running With Scissors com gráficos de retrocesso e jogabilidade moderna e em ritmo acelerado. Faça um passeio de montanha-russa selvagem pelo país das maravilhas retorcido envolto na mente confusa do POSTAL DUDE",null,"2022-06-09","2021-09-24","2022-06-12"),
                             (2,2,"The Quarry",": The Quarry é um futuro jogo eletrônico de drama interativo desenvolvido pela Supermassive Games e publicado pela 2K Games. É considerado um sucessor espiritual de Until Dawn e está previsto para ser lançado para Microsoft Windows",269,"2022-07-10","2021-09-24","2022-06-12"),
							 (3,3,"Zorro The Chronicles",":Jogue com Zorro ou sua irmã, Inês, neste jogo de combate e furtividade inspirado na série animada Zorro. Liberte os cidadãos, lute pela justiça e assine seu nome com a ponta da espada para fazer o sargento Garcia passar vergonha!",199,"2022-06-16","2021-09-24","2022-06-12"),
							 (4,4,"Fall Guys: Free For All ",": Fall Guys é um party game para multijogador com até 60 jogadores online, em uma louca corrida free-for-all, com rounds e rounds cada vez mais caóticos até sobrar um único vencedor!",null,"2022-06-21","2021-09-24","2022-06-12"),
                             (5,5,"Sonic Origins",":Tenha uma nova experiência das aventuras clássicas de Sonic The Hedgehog, Sonic The Hedgehog 2, Sonic 3 & Knuckles e Sonic CD no Sonic Origins remasterizado! Da emblemática Zona Green Hill ao traiçoeiro Robô Death Egg, você vai percorrer uma infinidade de momentos memoráveis na sua missão para frustrar os planos do Dr. Robotnik em alta definição! Esta versão atualizada contém áreas inéditas, animações adicionais e um novo Modo Aniversário!",225,"2022-06-22","2021-09-24","2022-06-12"); 

insert into sony values (1,1,"God of War Ragnarök","God of War Ragnarök é um futuro jogo eletrônico de ação-aventura desenvolvido pela Santa Monica Studio e publicado pela Sony Interactive Entertainment. Está programado para ser lançado em 2022 para PlayStation 4 e PlayStation 5.",299,"2022-00-00","2022-06-02",null),
                        (2,2,"Gran Turismo 7","Gran Turismo 7 é um jogo eletrônico de corrida desenvolvido pela Polyphony Digital e publicado pela Sony Interactive Entertainment. É o oitavo título da linha principal da série Gran Turismo.",199,"2022-03-04","2022-06-02",null),  
                        (3,3,"Horizon Forbidden West","Horizon Forbidden West é um jogo eletrônico de RPG de ação desenvolvido pela Guerrilla Games e publicado pela Sony Interactive Entertainment. Foi lançado em 18 de fevereiro de 2022 para PlayStation 4 e PlayStation 5.",259,"2022-02-18","2022-06-02",null),  
                        (4,4,"Forspoken"," Forspoken é um futuro jogo eletrônico de RPG de ação desenvolvido pela Luminous Productions e publicado pela Square Enix. Será lançado em 11 de outubro de 2022 para Microsoft Windows e PlayStation 5.", 199,"2022-10-11","2022-06-02",null),  
                        (5,5," Ghostwire: Tokyo","Ghostwire: Tokyo é um jogo eletrônico de ação-aventura em primeira pessoa desenvolvido pela Tango Gameworks e publicado pela Bethesda Softworks. Foi lançado para Microsoft Windows e PlayStation 5 — como um exclusivo de console temporário — em 25 de março de 2022.",199,"2022-03-25","2022-06-02",null);  
                        
insert into Nintendo values (1,1,"Star Wars: Knights of the Old Republic II"," Star Wars: Knights of the Old Republic II é uma série de videogames de RPG, baseada em uma série de quadrinhos anterior e com uma nova série de quadrinhos subsequente, todas baseadas no universo fictício de Star Wars de George Lucas.",75,"2022-06-08","2022-02-09",null),
                            (2,2,"Mario Strikers: Battle League","Mario Strikers: Battle League é um jogo eletrônico de futebol desenvolvido pela Next Level Games e Nintendo EPD e publicado pela Nintendo. Está programado para um lançamento mundial no Nintendo Switch em 10 de junho de 2022. É o terceiro jogo da série Mario Strikers.",299,"2022-06-10","2022-02-09",null),
                            (3,3,"Fire Emblem Warriors: Three Hopes","Fire Emblem Warriors: Three Hopes é um próximo jogo de RPG de ação hack and slash desenvolvido pela Omega Force e publicado pela Nintendo para o Nintendo Switch.",299,"2022-06-24","2022-02-09",null),
						    (4,4,"Xenoblade Chronicles 3","Xenoblade Chronicles 3 é um jogo de RPG de ação desenvolvido pela Monolith Soft e publicado pela Nintendo para o Nintendo Switch. É uma parte da série Xenoblade Chronicles, parte da metasérie Xeno maior, e está programado para ser lançado em 29 de julho de 2022.",319,"2022-06-29","2022-02-09",null),
                            (5,5,"Splatoon 3","Splatoon 3 é um próximo jogo de tiro em terceira pessoa desenvolvido e publicado pela Nintendo para o console Nintendo Switch. Como seus antecessores da série Splatoon, o jogo consiste em partidas multiplayer online competitivas ao lado de um modo de jogador único baseado em história.",299,"2022-09-09","2022-02-09",null);

insert into pc values (1,1,"The Cycle","The Cycle é um jogo eletrônico de 2019 de tiro em primeira pessoa desenvolvido e publicado pela Yager Development. A Yager classifica o jogo como um jogo competitivo de tiro e aventura e o rotula como PvEvP, uma combinação de jogador contra ambiente e jogador contra jogador.",null,"2022-06-08","2021-08-24","2022-06-12"),
                      (2,2,"20 Minutes Till Dawn","Derrube uma horda cada vez maior de monstros Lovecraftianos para sobreviver à noite. Escolha entre uma variedade de atualizações para criar construções únicas e inovadoras. Desbloqueie um elenco diversificado de personagens e armas com poderes únicos.",null,"2022-03-08","2021-08-24","2022-06-12"),
                      (3,3,"My Lovely Wife","My Lovely Wife investiga as profundezas da dor de um homem após a morte repentina de sua amada esposa. Explore as noções de vontade de fazer qualquer coisa por amor e a importância de deixar ir nesta mistura de simuladores de namoro, gerenciamento e alquimia.",null,"2022-06-08","2021-08-24","2022-06-12"),
                      (4,4,"Postal: Brain Damaged"," Brain Damaged é uma nova versão orientada para a ação da série de jogos cult Running With Scissors com gráficos de retrocesso e jogabilidade moderna e em ritmo acelerado. Faça um passeio de montanha-russa selvagem pelo país das maravilhas retorcido envolto na mente confusa do POSTAL DUDE.",null,"2022-06-09","2021-08-24","2022-06-12"),
                      (5,5,"Builder Simulator","Builder Simulator é o jogo perfeito para quem quer construir uma casa, do zero, um tijolo por vez. No fácil, o jogo irá guiá-lo e ensiná-lo, mostrando-lhe instruções completas, mas no difícil você não terá ajuda - em vez disso, confie em suas habilidades de construtor e faça tudo sozinho.",null,"2022-06-09","2021-08-24","2022-06-12");

insert into Game_not_exclusive values (null,"Postal: Brain Damaged"," Brain Damaged é uma nova versão orientada para a ação da série de jogos cult Running With Scissors com gráficos de retrocesso e jogabilidade moderna e em ritmo acelerado. Faça um passeio de montanha-russa selvagem pelo país das maravilhas retorcido envolto na mente confusa do POSTAL DUDE.",00,"2022-06-09",1,1,1,1),
									  (null,"The Quarry",": The Quarry é um futuro jogo eletrônico de drama interativo desenvolvido pela Supermassive Games e publicado pela 2K Games. É considerado um sucessor espiritual de Until Dawn e está previsto para ser lançado para Microsoft Windows",269,"2022-07-10",2,2,2,2),
									  (null,"Horizon Forbidden West","Horizon Forbidden West é um jogo eletrônico de RPG de ação desenvolvido pela Guerrilla Games e publicado pela Sony Interactive Entertainment. Foi lançado em 18 de fevereiro de 2022 para PlayStation 4 e PlayStation 5.",259,"2022-02-18",3,3,3,3), 
									  (null,"Sonic Origins",":Tenha uma nova experiência das aventuras clássicas de Sonic The Hedgehog, Sonic The Hedgehog 2, Sonic 3 & Knuckles e Sonic CD no Sonic Origins remasterizado! Da emblemática Zona Green Hill ao traiçoeiro Robô Death Egg, você vai percorrer uma infinidade de momentos memoráveis na sua missão para frustrar os planos do Dr. Robotnik em alta definição! Esta versão atualizada contém áreas inéditas, animações adicionais e um novo Modo Aniversário!",225,"2022-06-22",5,5,5,5);

drop database db_itegreer_project;						






















