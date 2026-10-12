-- Ajout du Master MIAGE MBDS (Université Côte d'Azur, en partenariat avec IT University).
-- Le master passe en premier : on décale les formations existantes.

UPDATE formations SET order_index = order_index + 1;

INSERT INTO formations (
  institution,
  logo_url,
  diploma,
  diploma_en,
  period,
  location,
  description,
  description_en,
  debouches,
  debouches_en,
  order_index
) VALUES (
  'Université Côte d''Azur',
  'logos/universite-cote-azur.png',
  'Master MIAGE MBDS — Mobiquité, Big Data et Intégration de Systèmes',
  'Master''s Degree MIAGE MBDS — Mobiquity, Big Data and Systems Integration',
  '2025 - Présent',
  'Antananarivo, Madagascar',
  'Master de l''Université Côte d''Azur suivi en partenariat avec IT University.',
  'Master''s degree from Université Côte d''Azur, delivered in partnership with IT University.',
  ARRAY[
    'Big Data & analyse de données',
    'Cloud',
    'Développement Backend & Frontend',
    'DevOps',
    'IoT',
    'Cybersécurité'
  ],
  ARRAY[
    'Big Data & Data Analysis',
    'Cloud',
    'Backend & Frontend Development',
    'DevOps',
    'IoT',
    'Cybersecurity'
  ],
  0
);
