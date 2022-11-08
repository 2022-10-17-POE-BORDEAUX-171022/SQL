INSERT INTO `clients` (`id`, `company_name`, `first_name`, `last_name`, `email`, `phone`, `address`, `zip_code`, `city`, `country`, `state`) VALUES
(1, 'Capgemini', 'Fabrice', 'Martin', 'martin@mail.com\r\n', '0656858433', 'Head Office - Capgemini Service - Place de Étoile - 11 rue de Tilsitt - 75017 Paris', '75017', 'Paris', 'France', 1),
(2, 'M2I Formation', 'Julien', 'Lamard\r\n', 'lamard@mail.com', '0611223344', '17 r Chaillot, 75116 Paris\r\n', '75116', 'Paris', 'France', 0),
(3, 'Atos', 'Jean-Paul', 'Pomodoro', 'jean.paul@mail.com\r\n', '0656853233', 'Laboratoire digital.security 50 avenue Daumesnil Immeuble B 75012 Paris', '76017', 'Paris', 'France', 1),
(4, 'Sopra Steria', 'Alain', 'Lampard', 'alain@sopra.com', '0611298344', 'Paris Presbourg - Kléber. 6 avenue Kleber, 79016, Paris', '79016', 'Paris', 'France', 0);

INSERT INTO `orders` (`id`, `client_id`, `type_presta`, `designation`, `nb_days`, `unit_price`, `state`) VALUES
(1, 2, 'Formation', 'Angular Initiation', 3, 1200, 0),
(2, 2, 'Formation', 'React.js avancé', 3, 1000, 2),
(3, 1, 'Coaching', 'React Techlead', 20, 900, 2),
(4, 1, 'Coaching', 'Nest.js Techlead', 50, 800, 1),
(5, 3, 'Coaching', 'React Techlead', 30, 1100, 2),
(6, 3, 'Coaching', 'Jakarta EE', 57, 1200, 2),
(7, 4, 'Coaching', 'Angular Techlead', 25, 1000, 1),
(8, 2, 'Formation', 'React.js avancé', 3, 1000, 2),
(9, 2, 'Formation', 'React.js avancé', 3, 1000, 1);
