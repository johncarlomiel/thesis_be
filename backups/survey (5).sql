-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2019 at 06:28 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `type` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id`, `code`, `occupation`, `description`, `type`, `link`) VALUES
(9, 'rsi', 'Data Processing Equipment Repairer', 'Tests faulty equipment and applies knowledge of functional operation of electronic units and systems to diagnose cause of malfunction.', 'build', 'https://www.onetonline.org/link/summary/49-2094.00'),
(10, 'ace', 'Film/Video Editor', 'Edit moving images on film, video, or other media. May edit or synchronize soundtracks with images.', 'color_lens', 'https://careerzone.ny.gov/views/careerzone/search/occupation/occupationProfile.jsf#.Wx3AAmrwa70'),
(11, 'ace', 'Librarian', 'A librarian is a person who works professionally in a library, providing access to information and sometimes social or technical programming. In addition, librarians provide instruction on information literacy.', 'color_lens', 'https://www.onetonline.org/link/summary/25-4021.00'),
(12, 'ace', 'Musician, Instrumental', 'Play one or more musical instruments in recital, in accompaniment, or as members of an orchestra, band, or other musical group.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2042.02'),
(13, 'aci', 'Composer', 'Conduct, direct, plan, and lead instrumental or vocal performances by musical groups, such as orchestras, bands, choirs, and glee clubs. Includes arrangers, composers, choral directors, and orchestrators.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2041.00'),
(14, 'aci', 'Critic (Creative Writer)', 'Create original written works, such as scripts, essays, prose, poetry or song lyrics, for publication or performance.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3043.05'),
(15, 'acr', 'Critic (Creative Writer)', 'Create original written works, such as scripts, essays, prose, poetry or song lyrics, for publication or performance.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3043.05'),
(16, 'acr', 'Librarian', 'Administer libraries and perform related library services. Work in a variety of settings, including public libraries, educational institutions, museums, corporations, government agencies, law firms, non-profit organizations, and healthcare providers.', 'color_lens', ''),
(17, 'acr', 'Music Arranger and Orchestrator', 'Conduct, direct, plan, and lead instrumental or vocal performances by musical groups, such as orchestras, bands, choirs, and glee clubs. Includes arrangers, composers, choral directors, and orchestrators.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2041.00'),
(18, 'acs', 'Composer', 'Conduct, direct, plan, and lead instrumental or vocal performances by musical groups, such as orchestras, bands, choirs, and glee clubs. Includes arrangers, composers, choral directors, and orchestrators.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2041.00'),
(19, 'acs', 'Librarian', 'Administer libraries and perform related library services. Work in a variety of settings, including public libraries, educational institutions, museums, corporations, government agencies, law firms, non-profit organizations, and healthcare providers. Tasks may include selecting, acquiring, cataloguing, classifying, circulating, and maintaining library materials; and furnishing reference, bibliographical, and readers\' advisory services.', 'color_lens', 'https://www.onetonline.org/link/summary/25-4021.00'),
(20, 'acs', 'Musician, Instrumental', 'Play one or more musical instruments in recital, in accompaniment, or as members of an orchestra, band, or other musical group.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2042.02'),
(21, 'aec', 'Advertising & Promotion Manager', 'Plan, direct, or coordinate advertising policies and programs or produce collateral materials, such as posters, contests, coupons, or give-aways, to create extra interest in the purchase of a product or service for a department, an entire organization, or on an account basis.', 'color_lens', 'https://www.onetonline.org/link/summary/11-2011.00'),
(22, 'aec', 'Fashion Designer', 'Design clothing and accessories. Create original designs or adapt fashion trends.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1022.00'),
(23, 'aec', 'Graphic Designers', 'Design or create graphics to meet specific commercial or promotional needs, such as packaging, displays, or logos. May use a variety of mediums to achieve artistic or decorative effects.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1024.00'),
(24, 'aec', 'Interior Designers', 'Plan, design, and furnish interiors of residential, commercial, or industrial buildings. Formulate design which is practical, aesthetic, and conducive to intended purposes, such as raising productivity, selling merchandise, or improving life style. May specialize in a particular field, style, or phase of interior design.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1025.00'),
(25, 'aei', 'Cartoonist', 'Create original artwork using any of a wide variety of media and techniques.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1013.00'),
(26, 'aei', 'Orchestrator', 'Orchestrators work closely with composers and arrangers to design musical scores for movies, plays and symphonies. They are responsible for deciding which instrument will play certain notes, while remaining faithful to the composer\'s original concept.', 'color_lens', 'https://study.com/articles/Orchestrator_Job_Description_and_Requirements_for_Becoming_a_Professional_Orchestrator.html'),
(27, 'aer', 'Dancer', 'Perform dances. May perform on stage, for on-air broadcasting, or for video recording.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2031.00'),
(28, 'aer', 'Painter and Illustrator', 'Create original artwork using any of a wide variety of media and techniques.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1013.00'),
(29, 'aes', 'Actor', 'Play parts in stage, television, radio, video, motion picture productions, or other settings for entertainment, information, or instruction. Interpret serious or comic role by speech, gesture, and body movement to entertain or inform audience. May dance and sing.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2011.00'),
(30, 'aes', 'Advertising & Promotion Manager', 'Plan, direct, or coordinate advertising policies and programs or produce collateral materials, such as posters, contests, coupons, or give-aways, to create extra interest in the purchase of a product or service for a department, an entire organization, or on an account basis.', 'color_lens', 'https://www.onetonline.org/link/summary/11-2011.00'),
(31, 'aes', 'Art Director', 'Formulate design concepts and presentation approaches for visual communications media, such as print, broadcasting, and advertising. Direct workers engaged in art work or layout design.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1011.00'),
(32, 'aes', 'Artist and Repertoire Manager (Talent Director)', 'Audition and interview performers to select most appropriate talent for parts in stage, television, radio, or motion picture productions.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2012.04'),
(33, 'aes', 'Creative Writers', 'Create original written works, such as scripts, essays, prose, poetry or song lyrics, for publication or performance.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3043.05'),
(34, 'aes', 'Choral Director (Music Director)', 'Direct and conduct instrumental or vocal performances by musical groups, such as orchestras or choirs.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2041.01'),
(35, 'aes', 'Continuity Writer (Copy Writer)', 'Write advertising copy for use by publication or broadcast media to promote sale of goods and services.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3043.04'),
(36, 'aes', 'Creative Director (Art Director)', 'Formulate design concepts and presentation approaches for visual communications media, such as print, broadcasting, and advertising. Direct workers engaged in art work or layout design.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1011.00'),
(37, 'aes', 'Director, Stage', 'Interpret script, conduct rehearsals, and direct activities of cast and technical crew for stage, motion pictures, television, or radio programs.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2012.02'),
(38, 'aes', 'Book Editor', 'Plan, coordinate, or edit content of material for publication. May review proposals and drafts for possible publication. Includes technical editors.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3041.00'),
(39, 'aic', 'Curator', 'Administer collections, such as artwork, collectibles, historic items, or scientific specimens of museums or other institutions. May conduct instructional, research, or public service activities of institution.', 'color_lens', 'https://www.onetonline.org/link/summary/25-4012.00'),
(40, 'aic', 'Poet', 'Create original written works, such as scripts, essays, prose, poetry or song lyrics, for publication or performance.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3043.05'),
(41, 'aie', 'Curator', 'Administer collections, such as artwork, collectibles, historic items, or scientific specimens of museums or other institutions. May conduct instructional, research, or public service activities of institution.', 'color_lens', 'https://www.onetonline.org/link/summary/25-4012.00'),
(42, 'aie', 'Reporter', 'Collect and analyze facts about newsworthy events by interview, investigation, or observation. Report and write stories for newspaper, news magazine, radio, or television.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3022.00'),
(43, 'aie', 'English Language and Literature Teacher, Postsecondary', 'Teach courses in English language and literature, including linguistics and comparative literature. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'color_lens', 'https://www.onetonline.org/link/summary/25-1123.00'),
(44, 'aie', 'Writer, Prose', 'Writers and authors develop written content for various types of media, including advertisements; books; magazines; movie, play, and television scripts; and blogs.', 'color_lens', 'https://www.bls.gov/ooh/media-and-communication/writers-and-authors.htm'),
(45, 'air', 'Composer', 'Write and transcribe musical scores.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2041.04'),
(46, 'air', 'Film/Video Editor', 'Edit moving images on film, video, or other media. May edit or synchronize soundtracks with images. Excludes \"Sound Engineering Technicians\"', 'color_lens', 'https://www.bls.gov/Oes/current/oes274032.htm'),
(47, 'air', 'Technical Writer', 'Technical writers, also called technical communicators, prepare instruction manuals, how-to guides, journal articles, and other supporting documents to communicate complex and technical information more easily. They also develop, gather, and disseminate technical information through an organization\'s communications channels.', 'color_lens', 'https://www.bls.gov/ooh/media-and-communication/technical-writers.htm'),
(48, 'ais', 'Curator', 'Administer collections, such as artwork, collectibles, historic items, or scientific specimens of museums or other institutions. May conduct instructional, research, or public service activities of institution.', 'color_lens', 'https://www.onetonline.org/link/summary/25-4012.00'),
(49, 'ais', 'Technical Writer', 'Technical writers, also called technical communicators, prepare instruction manuals, how-to guides, journal articles, and other supporting documents to communicate complex and technical information more easily. They also develop, gather, and disseminate technical information through an organization\'s communications channels.', 'color_lens', 'https://www.bls.gov/ooh/media-and-communication/technical-writers.htm'),
(50, 'arc', 'Camera Operator, Television, Video, Motion Picture', 'Operate television, video, or motion picture camera to record images or scenes for various purposes, such as TV broadcasts, advertising, video production, or motion pictures.', 'color_lens', 'https://www.bls.gov/oes/current/oes274031.htm'),
(52, 'are', 'Set and Exhibit Designers', 'Design special exhibits and movie, television, and theater sets. May study scripts, confer with directors, and conduct research to determine appropriate architectural styles.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1027.00'),
(53, 'are', 'Merchandise Displayer', 'Plan and erect commercial displays, such as those in windows and interiors of retail stores and at trade exhibitions.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1026.00'),
(54, 'are', 'Professional Photographer', 'Photograph people, landscapes, merchandise, or other subjects, using digital or film cameras and equipment. May develop negatives or use computer software to produce finished images and prints. Includes scientific photographers, aerial photographers, and photojournalists.', 'color_lens', 'https://www.onetonline.org/link/summary/27-4021.00'),
(56, 'ari', 'Architect, Except Landscape and Naval', 'Plan and design structures, such as private residences, office buildings, theaters, factories, and other structural property.', 'color_lens', 'https://www.onetonline.org/link/summary/17-1011.00'),
(57, 'ari', 'Landscape Architect', 'Plan and design land areas for projects such as parks and other recreational facilities, airports, highways, hospitals, schools, land subdivisions, and commercial, industrial, and residential sites.', 'color_lens', 'https://www.onetonline.org/link/summary/17-1012.00'),
(58, 'ari', 'Museum Technicians and Conservator', 'Restore, maintain, or prepare objects in museum collections for storage, research, or exhibit. May work with specimens such as fossils, skeletal parts, or botanicals; or artifacts, textiles, or art. May identify and record objects or install and arrange them in exhibits. Includes book or document conservators.', 'color_lens', 'https://www.onetonline.org/link/summary/25-4013.00'),
(59, 'ari', 'Painter and Illustrator', 'Create original artwork using any of a wide variety of media and techniques.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1013.00'),
(60, 'ars', 'Professional Photographer', 'Photograph people, landscapes, merchandise, or other subjects, using digital or film cameras and equipment. May develop negatives or use computer software to produce finished images and prints. Includes scientific photographers, aerial photographers, and photojournalists.', 'color_lens', 'https://www.onetonline.org/link/summary/27-4021.00'),
(61, 'ars', 'Sculptor', 'Create original artwork using any of a wide variety of media and techniques.', 'color_lens', 'https://www.onetonline.org/link/summary/27-1013.00'),
(62, 'asc', 'Broadcast News Analyst', 'Analyze, interpret, and broadcast news received from various sources.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3021.00'),
(63, 'asc', 'Film/Video Editor', 'Edit moving images on film, video, or other media. May edit or synchronize soundtracks with images.', 'color_lens', 'https://www.onetonline.org/link/summary/27-4032.00'),
(64, 'ase', 'Art, Drama, and Music Teacher, Postsecondary', 'Teach courses in drama, music, and the arts including fine and applied art, such as painting and sculpture, or design and crafts. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'color_lens', 'https://www.onetonline.org/link/summary/25-1121.00'),
(65, 'ase', 'Broadcast News Analyst', 'Analyze, interpret, and broadcast news received from various sources.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3021.00'),
(66, 'ase', 'Choreographer', 'Create new dance routines. Rehearse performance of routines. May direct and stage presentations.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2032.00'),
(67, 'ase', 'Composer', 'Write and transcribe musical scores.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2041.04'),
(68, 'ase', 'Music Director', 'Direct and conduct instrumental or vocal performances by musical groups, such as orchestras or choirs.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2041.01'),
(69, 'ase', 'Orchestrator', 'Orchestrators transpose music and write scores based off a Composer\'s initial draft or sketch.', 'color_lens', 'https://www.careersinmusic.com/orchestrator/'),
(70, 'ase', 'Lyricist (Poet and Lyricist)', 'Create original written works, such as scripts, essays, prose, poetry or song lyrics, for publication or performance.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3043.05'),
(71, 'ase', 'Playwright (Creative Writer)', 'Create original written works, such as scripts, essays, prose, poetry or song lyrics, for publication or performance.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3043.05'),
(72, 'ase', 'Producer', 'Plan and coordinate various aspects of radio, television, stage, or motion picture production, such as selecting script, coordinating writing, directing and editing, and arranging financing.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2012.01'),
(73, 'ase', 'Screenwriter (Creative Writer)', 'Create original written works, such as scripts, essays, prose, poetry or song lyrics, for publication or performance.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3043.05'),
(74, 'asi', 'Art, Drama, and Music Teacher, Postsecondary', 'Teach courses in drama, music, and the arts including fine and applied art, such as painting and sculpture, or design and crafts. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'color_lens', 'https://www.onetonline.org/link/summary/25-1121.00'),
(75, 'asi', 'Broadcast News Analyst', 'Analyze, interpret, and broadcast news received from various sources.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3021.00'),
(76, 'asi', 'Creative Writer', 'Create original written works, such as scripts, essays, prose, poetry or song lyrics, for publication or performance.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3043.05'),
(77, 'asi', 'English Language and Literature Teacher, Postsecondary', 'Teach courses in English language and literature, including linguistics and comparative literature. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'color_lens', 'https://www.onetonline.org/link/summary/25-1123.00'),
(78, 'asi', 'Foreign Language and Literature Teacher, Postsecondary', 'Teach languages and literature courses in languages other than English. Includes teachers of American Sign Language (ASL). Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'color_lens', 'https://www.onetonline.org/link/summary/25-1124.00'),
(79, 'asi', 'Interpreters and Translator', 'Interpret oral or sign language, or translate written text from one language into another.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3091.00'),
(80, 'asi', 'Music Arranger and Orchestrator', 'Write and transcribe musical scores.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2041.04'),
(81, 'asi', 'Musician, Instrumental', 'Play one or more musical instruments in recital, in accompaniment, or as members of an orchestra, band, or other musical group.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2042.02'),
(82, 'asi', 'Recreational Therapist', 'Plan, direct, or coordinate medically-approved recreation programs for patients in hospitals, nursing homes, or other institutions. Activities include sports, trips, dramatics, social activities, and arts and crafts. May assess a patient condition and recommend appropriate recreational activity.', 'color_lens', 'https://www.onetonline.org/link/summary/29-1125.00'),
(83, 'asi', 'Reporter and Correspondent', 'Collect and analyze facts about newsworthy events by interview, investigation, or observation. Report and write stories for newspaper, news magazine, radio, or television.', 'color_lens', 'https://www.onetonline.org/link/summary/27-3022.00'),
(84, 'asr', 'Dancer', 'Perform dances. May perform on stage, for on-air broadcasting, or for video recording.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2031.00'),
(85, 'asr', 'Music Arranger and Orchestrator', 'Write and transcribe musical scores.', 'color_lens', 'https://www.onetonline.org/link/summary/27-2041.04'),
(86, 'cei', 'Accountant and Auditor', 'Examine, analyze, and interpret accounting records to prepare financial statements, give advice, or audit and evaluate statements prepared by others. Install or advise on systems of recording costs or other financial and budgetary data.', 'description', 'https://www.onetonline.org/link/summary/13-2011.00'),
(87, 'cir', 'Actuary', 'Analyze statistical data, such as mortality, accident, sickness, disability, and retirement rates and construct probability tables to forecast risk and liability for payment of future benefits. May ascertain insurance rates required and cash reserves necessary to ensure payment of future benefits.', 'description', 'https://www.onetonline.org/link/summary/15-2011.00'),
(88, 'cie', 'Actuary', 'Analyze statistical data, such as mortality, accident, sickness, disability, and retirement rates and construct probability tables to forecast risk and liability for payment of future benefits. May ascertain insurance rates required and cash reserves necessary to ensure payment of future benefits.', 'description', 'https://www.onetonline.org/link/summary/15-2011.00'),
(89, 'cre', 'Air Traffic Controller', 'Control air traffic on and within vicinity of airport and movement of air traffic between altitude sectors and control centers according to established procedures and policies. Authorize, regulate, and control commercial airline flights according to government or company regulations to expedite and ensure flight safety.', 'description', 'https://www.onetonline.org/link/summary/53-2021.00'),
(90, 'cei', 'Assessor', 'Appraise real and personal property to determine its fair value. May assess taxes in accordance with prescribed schedules.', 'description', 'https://www.onetonline.org/link/summary/13-2021.01'),
(91, 'csr', 'Audio-Visual Collections Specialist', 'Prepare, plan, and operate multimedia teaching aids for use in education. May record, catalogue, and file materials.\r\n\r\n', 'description', 'https://www.onetonline.org/link/summary/25-9011.00'),
(92, 'csi', 'Audio/Video Equipment Technician', 'Set up, or set up and operate audio and video equipment including microphones, sound speakers, video screens, projectors, video monitors, recording equipment, connecting wires and cables, sound and mixing boards, and related electronic equipment for concerts, sports events, meetings and conventions, presentations, and news conferences. May also set up and operate associated spotlights and other custom lighting systems.', 'description', 'https://www.onetonline.org/link/summary/27-4011.00'),
(93, 'cei', 'Auditor', 'Examine and analyze accounting records to determine financial status of establishment and prepare financial reports concerning operating procedures.', 'description', 'https://www.onetonline.org/link/summary/13-2011.02'),
(94, 'cei', 'Budget Analyst', 'Examine budget estimates for completeness, accuracy, and conformance with procedures and regulations. Analyze budgeting and accounting reports.', 'description', 'https://www.onetonline.org/link/summary/13-2031.00'),
(95, 'cer', 'Budget Analyst', 'Examine budget estimates for completeness, accuracy, and conformance with procedures and regulations. Analyze budgeting and accounting reports.', 'description', 'https://www.onetonline.org/link/summary/13-2031.00'),
(96, 'cir', 'Cartographers and Photogrammetrist', 'Collect, analyze, and interpret geographic information provided by geodetic surveys, aerial photographs, and satellite data. Research, study, and prepare maps and other spatial data in digital or graphic form for legal, social, political, educational, and design purposes. May work with Geographic Information Systems (GIS). May design and evaluate algorithms, data structures, and user interfaces for GIS and mapping systems.', 'description', 'https://www.onetonline.org/link/summary/17-1021.00'),
(97, 'ces', 'City Planning Aide', 'Compile data from various sources, such as maps, reports, and field and file investigations, for use by city planner in making planning studies.', 'description', 'https://www.onetonline.org/link/summary/19-4061.01'),
(98, 'cei', 'Claims Examiner, Property and Casualty Insurance', 'Review settled insurance claims to determine that payments and settlements have been made in accordance with company practices and procedures. Report overpayments, underpayments, and other irregularities. Confer with legal counsel on claims requiring litigation.', 'description', 'https://www.onetonline.org/link/summary/13-1031.01'),
(99, 'ces', 'Claims Examiner, Property and Casualty Insurance', 'Review settled insurance claims to determine that payments and settlements have been made in accordance with company practices and procedures. Report overpayments, underpayments, and other irregularities. Confer with legal counsel on claims requiring litigation.', 'description', 'https://www.onetonline.org/link/summary/13-1031.01'),
(100, 'csr', 'Computer Operator', 'Monitor and control electronic computer and peripheral electronic data processing equipment to process business, scientific, engineering, and other data according to operating instructions. Monitor and respond to operating and error messages. May enter commands at a computer terminal and set controls on computer and peripheral devices.', 'description', 'https://www.onetonline.org/link/summary/43-9011.00'),
(101, 'cri', 'Computer Operator', 'Monitor and control electronic computer and peripheral electronic data processing equipment to process business, scientific, engineering, and other data according to operating instructions. Monitor and respond to operating and error messages. May enter commands at a computer terminal and set controls on computer and peripheral devices.', 'description', 'https://www.onetonline.org/link/summary/43-9011.00'),
(102, 'cri', 'Construction and Building Inspector', 'Inspect structures using engineering skills to determine structural soundness and compliance with specifications, building codes, and other regulations. Inspections may be general in nature or may be limited to a specific area, such as electrical systems or plumbing.', 'description', 'https://www.onetonline.org/link/summary/47-4011.00'),
(103, 'cei', 'Cost Estimator', 'Prepare cost estimates for product manufacturing, construction projects, or services to aid management in bidding on or determining price of product or service. May specialize according to particular service performed or type of product manufactured.', 'description', 'https://www.onetonline.org/link/summary/13-1051.00'),
(104, 'cer', 'Cost Estimator', 'Prepare cost estimates for product manufacturing, construction projects, or services to aid management in bidding on or determining price of product or service. May specialize according to particular service performed or type of product manufactured.', 'description', 'https://www.onetonline.org/link/summary/13-1051.00'),
(105, 'cse', 'Court Reporter', 'Use verbatim methods and equipment to capture, store, retrieve, and transcribe pretrial and trial proceedings or other information. Includes stenocaptioners who operate computerized stenographic captioning equipment to provide captions of live or prerecorded broadcasts for hearing-impaired viewers.', 'description', 'https://www.onetonline.org/link/summary/23-2091.00'),
(106, 'cei', 'Credit Analyst', 'Analyze credit data and financial statements of individuals or firms to determine the degree of risk involved in extending credit or lending money. Prepare reports with credit information for use in decision making.', 'description', 'https://www.onetonline.org/link/summary/13-2041.00'),
(107, 'cer', 'Credit Analyst', 'Analyze credit data and financial statements of individuals or firms to determine the degree of risk involved in extending credit or lending money. Prepare reports with credit information for use in decision making.', 'description', 'https://www.onetonline.org/link/summary/13-2041.00'),
(108, 'cri', 'Electrical Drafter', 'Develop specifications and instructions for installation of voltage transformers, overhead or underground cables, and related electrical equipment used to conduct electrical energy from transmission lines or high-voltage distribution lines to consumers.', 'description', 'https://www.onetonline.org/link/summary/17-3012.02'),
(109, 'ces', 'Executive Secretaries and Administrative Assistant', 'Provide high-level administrative support by conducting research, preparing statistical reports, handling information requests, and performing clerical functions such as preparing correspondence, receiving visitors, arranging conference calls, and scheduling meetings. May also train and supervise lower-level clerical staff.', 'description', 'https://www.onetonline.org/link/summary/43-6011.00'),
(110, 'ces', 'Human Resources Assistant, Except Payroll and Timekeeping', 'Compile and keep personnel records. Record data for each employee, such as address, weekly earnings, absences, amount of sales or production, supervisory reports, and date of and reason for termination. May prepare reports for employment records, file employment records, or search employee files and furnish information to authorized persons.', 'description', 'https://www.onetonline.org/link/summary/43-4161.00'),
(111, 'cse', 'Insurance Underwriter', 'Review individual applications for insurance to evaluate degree of risk involved and determine acceptance of applications.', 'description', 'https://www.onetonline.org/link/summary/13-2053.00'),
(112, 'cea', 'Insurance Underwriter', 'Review individual applications for insurance to evaluate degree of risk involved and determine acceptance of applications.', 'description', 'https://www.onetonline.org/link/summary/13-2053.00'),
(113, 'cei', 'Insurance Underwriter', 'Review individual applications for insurance to evaluate degree of risk involved and determine acceptance of applications.', 'description', 'https://www.onetonline.org/link/summary/13-2053.00'),
(114, 'cri', 'Library Assistant, Clerical', 'Compile records, sort, shelve, issue, and receive library materials such as books, electronic media, pictures, cards, slides and microfilm. Locate library materials for loan and replace material in shelving area, stacks, or files according to identification number and title. Register patrons to permit them to borrow books, periodicals, and other library materials.', 'description', 'https://www.onetonline.org/link/summary/43-4121.00'),
(115, 'cri', 'Mapping Technician', 'Calculate mapmaking information from field notes, and draw and verify accuracy of topographical maps.', 'description', 'https://www.onetonline.org/link/summary/17-3031.02'),
(116, 'cre', 'Marine Cargo Inspector', 'Inspect the handling, storage, and stowing of freight and cargoes.', 'description', 'https://www.onetonline.org/link/summary/53-6051.08'),
(117, 'cie', 'Medical Records and Health Information Technician', 'Compile, process, and maintain medical records of hospital and clinic patients in a manner consistent with medical, administrative, ethical, legal, and regulatory requirements of the health care system. Process, maintain, compile, and report patient information for health requirements and standards in a manner consistent with the healthcare industry\'s numerical coding system.', 'description', 'https://www.onetonline.org/link/summary/29-2071.00'),
(118, 'cra', 'Medical Records and Health Information Technician', 'Compile, process, and maintain medical records of hospital and clinic patients in a manner consistent with medical, administrative, ethical, legal, and regulatory requirements of the health care system. Process, maintain, compile, and report patient information for health requirements and standards in a manner consistent with the healthcare industry\'s numerical coding system.', 'description', 'https://www.onetonline.org/link/summary/29-2071.00'),
(119, 'cia', 'Medical Records and Health Information Technician', 'Compile, process, and maintain medical records of hospital and clinic patients in a manner consistent with medical, administrative, ethical, legal, and regulatory requirements of the health care system. Process, maintain, compile, and report patient information for health requirements and standards in a manner consistent with the healthcare industry\'s numerical coding system.', 'description', 'https://www.onetonline.org/link/summary/29-2071.00'),
(120, 'car', 'Medical Records and Health Information Technician', 'Compile, process, and maintain medical records of hospital and clinic patients in a manner consistent with medical, administrative, ethical, legal, and regulatory requirements of the health care system. Process, maintain, compile, and report patient information for health requirements and standards in a manner consistent with the healthcare industry\'s numerical coding system.', 'description', 'https://www.onetonline.org/link/summary/29-2071.00'),
(121, 'cas', 'Medical Records and Health Information Technician', 'Compile, process, and maintain medical records of hospital and clinic patients in a manner consistent with medical, administrative, ethical, legal, and regulatory requirements of the health care system. Process, maintain, compile, and report patient information for health requirements and standards in a manner consistent with the healthcare industry\'s numerical coding system.', 'description', 'https://www.onetonline.org/link/summary/29-2071.00'),
(122, 'cri', 'Pharmacy Technician', 'Prepare medications under the direction of a pharmacist. May measure, mix, count out, label, and record amounts and dosages of medications according to prescription orders.', 'description', 'https://www.onetonline.org/link/summary/29-2052.00'),
(123, 'crs', 'Pharmacy Technician', 'Prepare medications under the direction of a pharmacist. May measure, mix, count out, label, and record amounts and dosages of medications according to prescription orders.', 'description', 'https://www.onetonline.org/link/summary/29-2052.00'),
(124, 'cri', 'Police Identification and Records Officer', 'Collect evidence at crime scene, classify and identify fingerprints, and photograph evidence for use in criminal and civil cases.', 'description', 'https://www.onetonline.org/link/summary/33-3021.02'),
(125, 'crs', 'Police Identification and Records Officer', 'Collect evidence at crime scene, classify and identify fingerprints, and photograph evidence for use in criminal and civil cases.', 'description', 'https://www.onetonline.org/link/summary/33-3021.02'),
(126, 'cei', 'Procurement Clerk', 'Compile information and records to draw up purchase orders for procurement of materials and services.', 'description', 'https://www.onetonline.org/link/summary/43-3061.00'),
(127, 'ces', 'Procurement Clerk', 'Compile information and records to draw up purchase orders for procurement of materials and services.', 'description', 'https://www.onetonline.org/link/summary/43-3061.00'),
(128, 'cie', 'Proofreader and Copy Marker', 'Read transcript or proof type setup to detect and mark for correction any grammatical, typographical, or compositional errors. Includes proofreaders of Braille.', 'description', 'https://www.onetonline.org/link/summary/43-9081.00'),
(129, 'csa', 'Proofreader and Copy Marker', 'Read transcript or proof type setup to detect and mark for correction any grammatical, typographical, or compositional errors. Includes proofreaders of Braille.', 'description', 'https://www.onetonline.org/link/summary/43-9081.00'),
(130, 'cei', 'Tax Examiner, Collectors and Revenue Agent', 'Determine tax liability or collect taxes from individuals or business firms according to prescribed laws and regulations.', 'description', 'https://www.onetonline.org/link/summary/13-2081.00'),
(131, 'ces', 'Tax Examiner, Collectors and Revenue Agent', 'Determine tax liability or collect taxes from individuals or business firms according to prescribed laws and regulations.', 'description', 'https://www.onetonline.org/link/summary/13-2081.00'),
(132, 'isa', 'Agricultural Sciences Teacher, Postsecondary', 'Teach courses in the agricultural sciences. Includes teachers of agronomy, dairy sciences, fisheries management, horticultural sciences, poultry sciences, range management, and agricultural soil conservation. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'create', 'https://www.onetonline.org/link/summary/25-1041.00'),
(133, 'ira', 'Anesthesiologist', 'Physicians who administer anesthetics prior to, during, or after surgery or other medical procedures.', 'create', 'https://www.onetonline.org/link/summary/29-1061.00'),
(134, 'isa', 'Anthropologist', 'Research, evaluate, and establish public policy concerning the origins of humans; their physical, social, linguistic, and cultural development; and their behavior, as well as the cultures, organizations, and institutions they have created.', 'create', 'https://www.onetonline.org/link/summary/19-3091.01'),
(135, 'ire', 'Archeologist', 'Conduct research to reconstruct record of past human life and culture from human remains, artifacts, architectural features, and structures recovered through excavation, underwater recovery, or other means of discovery.', 'create', 'https://www.onetonline.org/link/summary/19-3091.02'),
(136, 'iae', 'Architect, Except Landscape and Naval', 'Plan and design structures, such as private residences, office buildings, theaters, factories, and other structural property.', 'create', 'https://www.onetonline.org/link/summary/17-1011.00'),
(137, 'ice', 'Archivist', 'Appraise, edit, and direct safekeeping of permanent records and historically valuable documents. Participate in research activities based on archival materials.', 'create', 'https://www.onetonline.org/link/summary/25-4011.00'),
(138, 'irs', 'Biological Scientist', 'Research or study basic principles of plant and animal life, such as origin, relationship, development, anatomy, and functions.', 'create', 'https://www.onetonline.org/link/summary/19-1020.01'),
(139, 'ire', 'Biological Scientist', 'Research or study basic principles of plant and animal life, such as origin, relationship, development, anatomy, and functions.', 'create', 'https://www.onetonline.org/link/summary/19-1020.01'),
(140, 'icr', 'Cardiovascular Technologists and Technician', 'Conduct tests on pulmonary or cardiovascular systems of patients for diagnostic purposes. May conduct or assist in electrocardiograms, cardiac catheterizations, pulmonary functions, lung capacity, and similar tests. Includes vascular technologists.', 'create', 'https://www.onetonline.org/link/summary/29-2031.00'),
(141, 'ier', 'Chemist', 'Conduct qualitative and quantitative chemical analyses or experiments in laboratories for quality or process control or to develop new products or knowledge.', 'create', 'https://www.onetonline.org/link/summary/19-2031.00'),
(142, 'irc', 'Chemist', 'Conduct qualitative and quantitative chemical analyses or experiments in laboratories for quality or process control or to develop new products or knowledge.', 'create', 'https://www.onetonline.org/link/summary/19-2031.00'),
(143, 'isr', 'Chiropractor', 'Assess, treat, and care for patients by manipulation of spine and musculoskeletal system. May provide spinal adjustment or address sacral or pelvic misalignment.', 'create', 'https://www.onetonline.org/link/summary/29-1011.00'),
(144, 'irs', 'Chiropractor', 'Assess, treat, and care for patients by manipulation of spine and musculoskeletal system. May provide spinal adjustment or address sacral or pelvic misalignment.', 'create', 'https://www.onetonline.org/link/summary/29-1011.00'),
(145, 'irs', 'Civil Engineer', 'Perform engineering duties in planning, designing, and overseeing construction and maintenance of building structures, and facilities, such as roads, railroads, airports, bridges, harbors, channels, dams, irrigation projects, pipelines, power plants, and water and sewage systems.', 'create', 'https://www.onetonline.org/link/summary/17-2051.00'),
(146, 'ire', 'Clinical Laboratory Technologist', 'Perform complex medical laboratory tests for diagnosis, treatment, and prevention of disease. May train or supervise staff.', 'create', 'https://www.onetonline.org/link/summary/29-2011.00'),
(147, 'ice', 'Compensation, Benefits, and Job Analysis Specialist', 'Conduct programs of compensation and benefits and job analysis for employer. May specialize in specific areas, such as position classification and pension programs.', 'create', 'https://www.onetonline.org/link/summary/13-1141.00'),
(148, 'irc', 'Computer Hardware Engineer', 'Research, design, develop, or test computer or computer-related equipment for commercial, industrial, military, or scientific use. May supervise the manufacturing and installation of computer or computer-related equipment and components.', 'create', 'https://www.onetonline.org/link/summary/17-2061.00'),
(149, 'ire', 'Computer Science Teacher, Postsecondary', 'Teach courses in computer science. May specialize in a field of computer science, such as the design and function of computers or operations and research analysis. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'create', 'https://www.onetonline.org/link/summary/25-1021.00'),
(150, 'ice', 'Computer Science Teacher, Postsecondary', 'Teach courses in computer science. May specialize in a field of computer science, such as the design and function of computers or operations and research analysis. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'create', 'https://www.onetonline.org/link/summary/25-1021.00'),
(151, 'irc', 'Computer Security Specialist', 'Plan, implement, upgrade, or monitor security measures for the protection of computer networks and information. May ensure appropriate security controls are in place that will safeguard digital files and vital electronic infrastructure. May respond to computer security breaches and viruses.', 'create', 'https://www.onetonline.org/link/summary/15-1122.00?redir=15-1071.01'),
(152, 'ire', 'Computer Software Engineer', 'Develop, create, and modify general computer applications software or specialized utility programs. Analyze user needs and develop software solutions. Design software or customize software for client use with the aim of optimizing operational efficiency. May analyze and design databases within an application area, working individually or coordinating database development as part of a team. May supervise computer programmers.', 'create', 'https://www.onetonline.org/link/summary/15-1132.00'),
(153, 'irc', 'Computer Software Engineer', 'Develop, create, and modify general computer applications software or specialized utility programs. Analyze user needs and develop software solutions. Design software or customize software for client use with the aim of optimizing operational efficiency. May analyze and design databases within an application area, working individually or coordinating database development as part of a team. May supervise computer programmers.', 'create', 'https://www.onetonline.org/link/summary/15-1132.00'),
(154, 'icr', 'Computer Systems Analyst', 'Analyze science, engineering, business, and other data processing problems to implement and improve computer systems. Analyze user requirements, procedures, and problems to automate or improve existing systems and review computer system capabilities, workflow, and scheduling limitations. May analyze or recommend commercially available software.', 'create', 'https://www.onetonline.org/link/summary/15-1121.00'),
(155, 'irs', 'Conservation Scientist and Forester', 'Provide technical assistance regarding the conservation of soil, water, forests, or related natural resources. May compile data pertaining to size, content, condition, and other characteristics of forest tracts, under the direction of foresters; or train and lead forest workers in forest propagation, fire prevention and suppression. May assist conservation scientists in managing, improving, and protecting rangelands and wildlife habitats.', 'create', 'https://www.onetonline.org/link/summary/19-4093.00'),
(156, 'irs', 'Database Administrator', 'Administer, test, and implement computer databases, applying knowledge of database management systems. Coordinate changes to computer databases. May plan, coordinate, and implement security measures to safeguard computer databases.', 'create', 'https://www.onetonline.org/link/summary/15-1141.00'),
(157, 'icr', 'Database Administrator', 'Administer, test, and implement computer databases, applying knowledge of database management systems. Coordinate changes to computer databases. May plan, coordinate, and implement security measures to safeguard computer databases.', 'create', 'https://www.onetonline.org/link/summary/15-1141.00'),
(158, 'ire', 'Dentist', 'Examine, diagnose, and treat diseases, injuries, and malformations of teeth and gums. May treat diseases of nerve, pulp, and other dental tissues affecting oral hygiene and retention of teeth. May fit dental appliances or provide preventive care.', 'create', 'https://www.onetonline.org/link/summary/29-1021.00'),
(159, 'irs', 'Dentist', 'Examine, diagnose, and treat diseases, injuries, and malformations of teeth and gums. May treat diseases of nerve, pulp, and other dental tissues affecting oral hygiene and retention of teeth. May fit dental appliances or provide preventive care.', 'create', 'https://www.onetonline.org/link/summary/29-1021.00'),
(160, 'ies', 'Dietician & Nutritionist', 'Plan and conduct food service or nutritional programs to assist in the promotion of health and control of disease. May supervise activities of a department providing quantity food services, counsel individuals, or conduct nutritional research.', 'create', 'https://www.onetonline.org/link/summary/29-1031.00'),
(161, 'ier', 'Dietician & Nutritionist', 'Plan and conduct food service or nutritional programs to assist in the promotion of health and control of disease. May supervise activities of a department providing quantity food services, counsel individuals, or conduct nutritional research.', 'create', 'https://www.onetonline.org/link/summary/29-1031.00'),
(162, 'ire', 'Drafter', 'Draw wiring diagrams, circuit board assembly diagrams, schematics, and layout drawings used for manufacture, installation, and repair of electronic equipment.', 'create', 'https://www.onetonline.org/link/summary/17-3012.01'),
(163, 'iec', 'Economist', 'Conduct research, prepare reports, or formulate plans to address economic problems related to the production and distribution of goods and services or monetary and fiscal policy. May collect and process economic and statistical data using sampling techniques and econometric methods.', 'create', 'https://www.onetonline.org/link/summary/19-3011.00'),
(164, 'ire', 'Electrical and Electronic Engineer, Except Computer', 'Research, design, develop, or test electronic components and systems for commercial, industrial, military, or scientific use employing knowledge of electronic theory and materials properties. Design electronic circuits and components for use in fields such as telecommunications, aerospace guidance and propulsion control, acoustics, or instruments and controls.', 'create', 'https://www.onetonline.org/link/summary/17-2072.00'),
(165, 'ier', 'Engineering and Natural Science Manager', 'Plan, direct, or coordinate activities in such fields as life sciences, physical sciences, mathematics, statistics, and research and development in these fields.', 'create', 'https://www.onetonline.org/link/summary/11-9121.00'),
(166, 'irs', 'Environmental Scientist and Geoscientist', 'Study the composition, structure, and other physical aspects of the Earth. May use geological, physics, and mathematics knowledge in exploration for oil, gas, minerals, or underground water; or in waste disposal, land reclamation, or other environmental problems. May study the Earth\'s internal composition, atmospheres, oceans, and its magnetic, electrical, and gravitational forces. Includes mineralogists, crystallographers, paleontologists, stratigraphers, geodesists, and seismologists.', 'create', 'https://www.onetonline.org/link/summary/19-2042.00'),
(167, 'ire', 'Environmental Scientist and Geoscientist', 'Study the composition, structure, and other physical aspects of the Earth. May use geological, physics, and mathematics knowledge in exploration for oil, gas, minerals, or underground water; or in waste disposal, land reclamation, or other environmental problems. May study the Earth\'s internal composition, atmospheres, oceans, and its magnetic, electrical, and gravitational forces. Includes mineralogists, crystallographers, paleontologists, stratigraphers, geodesists, and seismologists.', 'create', 'https://www.onetonline.org/link/summary/19-2042.00'),
(168, 'ice', 'Family and General Practitioner', 'Physicians who diagnose, treat, and help prevent diseases and injuries that commonly occur in the general population. May refer patients to specialists when needed for further diagnosis or treatment.', 'create', 'https://www.onetonline.org/link/summary/29-1062.00'),
(169, 'iec', 'Family and General Practitioner', 'Physicians who diagnose, treat, and help prevent diseases and injuries that commonly occur in the general population. May refer patients to specialists when needed for further diagnosis or treatment.', 'create', 'https://www.onetonline.org/link/summary/29-1062.00');
INSERT INTO `code` (`id`, `code`, `occupation`, `description`, `type`, `link`) VALUES
(170, 'ire', 'Family and General Practitioner', 'Physicians who diagnose, treat, and help prevent diseases and injuries that commonly occur in the general population. May refer patients to specialists when needed for further diagnosis or treatment.', 'create', 'https://www.onetonline.org/link/summary/29-1062.00'),
(171, 'ies', 'Family and General Practitioner', 'Physicians who diagnose, treat, and help prevent diseases and injuries that commonly occur in the general population. May refer patients to specialists when needed for further diagnosis or treatment.', 'create', 'https://www.onetonline.org/link/summary/29-1062.00'),
(172, 'ice', 'Financial Analyst', 'Conduct quantitative analyses of information affecting investment programs of public or private institutions.', 'create', 'https://www.onetonline.org/link/summary/13-2051.00'),
(173, 'iec', 'Fire-Prevention and Protection Engineer', 'Research causes of fires, determine fire protection methods, and design or recommend materials or equipment such as structural components or fire-detection equipment to assist organizations in safeguarding life and property against fire, explosion, and related hazards.', 'create', 'https://www.onetonline.org/link/summary/17-2111.02'),
(174, 'isa', 'Forestry and Conservation Science Teacher, Postsecondary', 'Teach courses in forestry and conservation science. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'create', 'https://www.onetonline.org/link/summary/25-1043.00'),
(175, 'ire', 'Geographer', 'Study the nature and use of areas of the Earth\'s surface, relating and interpreting interactions of physical and cultural phenomena. Conduct research on physical aspects of a region, including land forms, climates, soils, plants, and animals, and conduct research on the spatial implications of human activities within a given area, including social characteristics, economic activities, and political organization, as well as researching interdependence between regions at scales ranging from local to global.', 'create', 'https://www.onetonline.org/link/summary/19-3092.00'),
(176, 'irc', 'Geologist', 'Conduct sub-surface surveys to identify the characteristics of potential land or mining development sites. May specify the ground support systems, processes and equipment for safe, economical, and environmentally sound extraction or underground construction activities. May inspect areas for unsafe geological conditions, equipment, and working conditions. May design, implement, and coordinate mine safety programs.', 'create', 'https://www.onetonline.org/link/summary/17-2151.00'),
(177, 'isa', 'Health Specialties Teacher, Postsecondary', 'Teach courses in health specialties, in fields such as dentistry, laboratory technology, medicine, pharmacy, public health, therapy, and veterinary medicine.', 'create', 'https://www.onetonline.org/link/summary/25-1071.00'),
(178, 'iac', 'Historian', 'Research, analyze, record, and interpret the past as recorded in sources, such as government and institutional records, newspapers and other periodicals, photographs, interviews, films, electronic media, and unpublished manuscripts, such as personal diaries and letters.', 'create', 'https://www.onetonline.org/link/summary/19-3093.00'),
(179, 'ier', 'Industrial Engineer   (Tech)', 'Apply engineering theory and principles to problems of industrial layout or manufacturing production, usually under the direction of engineering staff. May perform time and motion studies on worker operations in a variety of industries for purposes such as establishing standard production rates or improving efficiency.', 'create', 'https://www.onetonline.org/link/summary/17-3026.00'),
(180, 'ica', 'Industrial Engineer   (Tech)', 'Apply engineering theory and principles to problems of industrial layout or manufacturing production, usually under the direction of engineering staff. May perform time and motion studies on worker operations in a variety of industries for purposes such as establishing standard production rates or improving efficiency.', 'create', 'https://www.onetonline.org/link/summary/17-3026.00'),
(181, 'ice', 'Industrial Engineer   (Tech)', 'Apply engineering theory and principles to problems of industrial layout or manufacturing production, usually under the direction of engineering staff. May perform time and motion studies on worker operations in a variety of industries for purposes such as establishing standard production rates or improving efficiency.', 'create', 'https://www.onetonline.org/link/summary/17-3026.00'),
(182, 'iec', 'Industrial Safety and Health Engineer', 'Plan, implement, and coordinate safety programs, requiring application of engineering principles and technology, to prevent or correct unsafe environmental working conditions.', 'create', 'https://www.onetonline.org/link/summary/17-2111.01'),
(183, 'ire', 'Internist', 'Physicians who diagnose and provide non-surgical treatment of diseases and injuries of internal organ systems. Provide care mainly for adults who have a wide range of problems associated with the internal organs.', 'create', 'https://www.onetonline.org/link/summary/29-1063.00'),
(184, 'ice', 'Internist', 'Physicians who diagnose and provide non-surgical treatment of diseases and injuries of internal organ systems. Provide care mainly for adults who have a wide range of problems associated with the internal organs.', 'create', 'https://www.onetonline.org/link/summary/29-1063.00'),
(185, 'isc', 'Internist', 'Physicians who diagnose and provide non-surgical treatment of diseases and injuries of internal organ systems. Provide care mainly for adults who have a wide range of problems associated with the internal organs.', 'create', 'https://www.onetonline.org/link/summary/29-1063.00'),
(186, 'ies', 'Internist', 'Physicians who diagnose and provide non-surgical treatment of diseases and injuries of internal organ systems. Provide care mainly for adults who have a wide range of problems associated with the internal organs.', 'create', 'https://www.onetonline.org/link/summary/29-1063.00'),
(187, 'iec', 'Market Research Analyst', 'Research market conditions in local, regional, or national areas, or gather information to determine potential sales of a product or service, or create a marketing campaign. May gather information on competitors, prices, sales, and methods of marketing and distribution.', 'create', 'https://www.onetonline.org/link/summary/13-1161.00'),
(188, 'ire', 'Mathematical Science Teacher, Postsecondary', 'Teach courses pertaining to mathematical concepts, statistics, and actuarial science and to the application of original and standardized mathematical techniques in solving specific problems and situations. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'create', 'https://www.onetonline.org/link/summary/25-1022.00'),
(189, 'isc', 'Mathematical Science Teacher, Postsecondary', 'Teach courses pertaining to mathematical concepts, statistics, and actuarial science and to the application of original and standardized mathematical techniques in solving specific problems and situations. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'create', 'https://www.onetonline.org/link/summary/25-1022.00'),
(190, 'ice', 'Mathematician', 'Conduct research in fundamental mathematics or in application of mathematical techniques to science, management, and other fields. Solve problems in various fields using mathematical methods.', 'create', 'https://www.onetonline.org/link/summary/15-2021.00'),
(191, 'ics', 'Mathematician', 'Conduct research in fundamental mathematics or in application of mathematical techniques to science, management, and other fields. Solve problems in various fields using mathematical methods.', 'create', 'https://www.onetonline.org/link/summary/15-2021.00'),
(192, 'ica', 'Mathematician', 'Conduct research in fundamental mathematics or in application of mathematical techniques to science, management, and other fields. Solve problems in various fields using mathematical methods.', 'create', 'https://www.onetonline.org/link/summary/15-2021.00'),
(193, 'irc', 'Medical and Clinical Laboratory Technologists', 'Perform complex medical laboratory tests for diagnosis, treatment, and prevention of disease. May train or supervise staff.', 'create', 'https://www.onetonline.org/link/summary/29-2011.00'),
(194, 'irs', 'Medical Scientists, Except Epidemiologists', 'Conduct research dealing with the understanding of human diseases and the improvement of human health. Engage in clinical investigation, research and development, or other related activities. Includes physicians, dentists, public health specialists, pharmacologists, and medical pathologists who primarily conduct research.', 'create', 'https://www.onetonline.org/link/summary/19-1042.00'),
(195, 'ira', 'Microbiologist', 'Investigate the growth, structure, development, and other characteristics of microscopic organisms, such as bacteria, algae, or fungi. Includes medical microbiologists who study the relationship between organisms and disease or the effects of antibiotics on microorganisms.', 'create', 'https://www.onetonline.org/link/summary/19-1022.00'),
(196, 'ire', 'Microbiologist', 'Investigate the growth, structure, development, and other characteristics of microscopic organisms, such as bacteria, algae, or fungi. Includes medical microbiologists who study the relationship between organisms and disease or the effects of antibiotics on microorganisms.', 'create', 'https://www.onetonline.org/link/summary/19-1022.00'),
(197, 'iec', 'Natural Sciences Manager', 'Plan, direct, or coordinate activities in such fields as life sciences, physical sciences, mathematics, statistics, and research and development in these fields.', 'create', 'https://www.onetonline.org/link/summary/11-9121.00'),
(198, 'ier', 'Natural Sciences Manager', 'Plan, direct, or coordinate activities in such fields as life sciences, physical sciences, mathematics, statistics, and research and development in these fields.', 'create', 'https://www.onetonline.org/link/summary/11-9121.00'),
(199, 'irc', 'Network Systems and Data Communications Analyst', 'Install, configure, and support an organization\'s local area network (LAN), wide area network (WAN), and Internet systems or a segment of a network system. Monitor network to ensure network availability to all system users and may perform necessary maintenance to support network availability. May monitor and test Web site performance to ensure Web sites operate correctly and without interruption. May assist in network modeling, analysis, planning, and coordination between network and data communications hardware and software. May supervise computer user support specialists and computer network support specialists. May administer network security measures.', 'create', 'https://www.onetonline.org/link/summary/15-1142.00'),
(200, 'ire', 'Nuclear Engineer', 'Conduct research on nuclear engineering projects or apply principles and theory of nuclear science to problems concerned with release, control, and use of nuclear energy and nuclear waste disposal.', 'create', 'https://www.onetonline.org/link/summary/17-2161.00'),
(201, 'iac', 'Obstetrician & Gynecologist', 'Physicians who provide medical care related to pregnancy or childbirth and those who diagnose, treat, and help prevent diseases of women, particularly those affecting the reproductive system. May also provide general medical care to women.', 'create', 'https://www.onetonline.org/link/summary/29-1064.00'),
(202, 'ice', 'Obstetrician & Gynecologist', 'Physicians who provide medical care related to pregnancy or childbirth and those who diagnose, treat, and help prevent diseases of women, particularly those affecting the reproductive system. May also provide general medical care to women.', 'create', 'https://www.onetonline.org/link/summary/29-1064.00'),
(203, 'iec', 'Obstetrician & Gynecologist', 'Physicians who provide medical care related to pregnancy or childbirth and those who diagnose, treat, and help prevent diseases of women, particularly those affecting the reproductive system. May also provide general medical care to women.', 'create', 'https://www.onetonline.org/link/summary/29-1064.00'),
(204, 'ies', 'Obstetrician & Gynecologist', 'Physicians who provide medical care related to pregnancy or childbirth and those who diagnose, treat, and help prevent diseases of women, particularly those affecting the reproductive system. May also provide general medical care to women.', 'create', 'https://www.onetonline.org/link/summary/29-1064.00'),
(205, 'irc', 'Optometrist', 'Diagnose, manage, and treat conditions and diseases of the human eye and visual system. Examine eyes and visual system, diagnose problems or impairments, prescribe corrective lenses, and provide treatment. May prescribe therapeutic drugs to treat specific eye conditions.', 'create', 'https://www.onetonline.org/link/summary/29-1041.00'),
(206, 'irs', 'Optometrist', 'Diagnose, manage, and treat conditions and diseases of the human eye and visual system. Examine eyes and visual system, diagnose problems or impairments, prescribe corrective lenses, and provide treatment. May prescribe therapeutic drugs to treat specific eye conditions.', 'create', 'https://www.onetonline.org/link/summary/29-1041.00'),
(207, 'irs', 'Oral and Maxillofacial Surgeon', 'Perform surgery and related procedures on the hard and soft tissues of the oral and maxillofacial regions to treat diseases, injuries, or defects. May diagnose problems of the oral and maxillofacial regions. May perform surgery to improve function or appearance.', 'create', 'https://www.onetonline.org/link/summary/29-1022.00'),
(208, 'irs', 'Orthodontist', 'Examine, diagnose, and treat dental malocclusions and oral cavity anomalies. Design and fabricate appliances to realign teeth and jaws to produce and maintain normal function and to improve appearance.', 'create', 'https://www.onetonline.org/link/summary/29-1023.00'),
(209, 'iar', 'Pediatrician', 'Physicians who diagnose, treat, and help prevent children\'s diseases and injuries.', 'create', 'https://www.onetonline.org/link/summary/29-1065.00'),
(210, 'ice', 'Pediatrician', 'Physicians who diagnose, treat, and help prevent children\'s diseases and injuries.', 'create', 'https://www.onetonline.org/link/summary/29-1065.00'),
(211, 'iec', 'Pediatrician', 'Physicians who diagnose, treat, and help prevent children\'s diseases and injuries.', 'create', 'https://www.onetonline.org/link/summary/29-1065.00'),
(212, 'ies', 'Pediatrician', 'Physicians who diagnose, treat, and help prevent children\'s diseases and injuries.\r\n\r\n', 'create', 'https://www.onetonline.org/link/summary/29-1065.00'),
(213, 'ise', 'Pharmacist', 'Dispense drugs prescribed by physicians and other health practitioners and provide information to patients about medications and their use. May advise physicians and other health practitioners on the selection, dosage, interactions, and side effects of medications.', 'create', 'https://www.onetonline.org/link/summary/29-1051.00'),
(214, 'icr', 'Pharmacist', 'Dispense drugs prescribed by physicians and other health practitioners and provide information to patients about medications and their use. May advise physicians and other health practitioners on the selection, dosage, interactions, and side effects of medications.', 'create', 'https://www.onetonline.org/link/summary/29-1051.00'),
(215, 'ice', 'Pharmacist', 'Dispense drugs prescribed by physicians and other health practitioners and provide information to patients about medications and their use. May advise physicians and other health practitioners on the selection, dosage, interactions, and side effects of medications.', 'create', 'https://www.onetonline.org/link/summary/29-1051.00'),
(216, 'isa', 'Physician Assistant', 'Provide healthcare services typically performed by a physician, under the supervision of a physician. Conduct complete physicals, provide treatment, and counsel patients. May, in some cases, prescribe medication. Must graduate from an accredited educational program for physician assistants.', 'create', 'https://www.onetonline.org/link/summary/29-1071.00'),
(217, 'ise', 'Physician Assistant', 'Provide healthcare services typically performed by a physician, under the supervision of a physician. Conduct complete physicals, provide treatment, and counsel patients. May, in some cases, prescribe medication. Must graduate from an accredited educational program for physician assistants.', 'create', 'https://www.onetonline.org/link/summary/29-1071.00'),
(218, 'isr', 'Physics Teacher, Postsecondary', 'Teach courses pertaining to the laws of matter and energy. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'create', 'https://www.onetonline.org/link/summary/25-1054.00'),
(219, 'ias', 'Political Scientist', 'Study the origin, development, and operation of political systems. May study topics, such as public opinion, political decision-making, and ideology. May analyze the structure and operation of governments, as well as various political entities. May conduct public opinion surveys, analyze election results, or analyze public documents.\r\n', 'create', 'https://www.onetonline.org/link/summary/19-3094.00'),
(220, 'ias', 'Psychiatrist', 'Physicians who diagnose, treat, and help prevent disorders of the mind.', 'create', 'https://www.onetonline.org/link/summary/29-1066.00'),
(221, 'ise', 'Psychologist', 'Diagnose or evaluate mental and emotional disorders of individuals through observation, interview, and psychological tests, and formulate and administer programs of treatment.', 'create', 'https://www.onetonline.org/link/summary/19-3031.02'),
(222, 'ias', 'Psychologist', 'Diagnose or evaluate mental and emotional disorders of individuals through observation, interview, and psychological tests, and formulate and administer programs of treatment.', 'create', 'https://www.onetonline.org/link/summary/19-3031.02'),
(223, 'irs', 'Radiologic Technologist and Technician', 'Take x rays and CAT scans or administer nonradioactive materials into patient\'s blood stream for diagnostic purposes. Includes technologists who specialize in other scanning modalities.', 'create', 'https://www.onetonline.org/link/summary/29-2034.00'),
(224, 'irs', 'Respiratory Therapist', 'Assess, treat, and care for patients with breathing disorders. Assume primary responsibility for all respiratory care modalities, including the supervision of respiratory therapy technicians. Initiate and conduct therapeutic procedures; maintain patient records; and select, assemble, check, and operate equipment.', 'create', 'https://www.onetonline.org/link/summary/29-1126.00'),
(225, 'ias', 'Sociologist', 'Study human society and social behavior by examining the groups and social institutions that people form, as well as various social, religious, political, and business organizations. May study the behavior and interaction of groups, trace their origin and growth, and analyze the influence of group activities on individual members.', 'create', 'https://www.onetonline.org/link/summary/19-3041.00'),
(226, 'ire', 'Soil Scientist', 'Conduct research in breeding, physiology, production, yield, and management of crops and agricultural plants or trees, shrubs, and nursery stock, their growth in soils, and control of pests; or study the chemical, physical, biological, and mineralogical composition of soils as they relate to plant or crop growth. May classify and map soils and investigate effects of alternative practices on soil and crop productivity.', 'create', 'https://www.onetonline.org/link/summary/19-1013.00'),
(227, 'isr', 'Speech Language Pathologists and Audiologist', 'Assess and treat persons with hearing and related disorders. May fit hearing aids and provide auditory training. May perform research related to hearing problems.', 'create', 'https://www.onetonline.org/link/summary/29-1181.00'),
(228, 'ice', 'Statistician', 'Develop or apply mathematical or statistical theory and methods to collect, organize, interpret, and summarize numerical data to provide usable information. May specialize in fields such as bio-statistics, agricultural statistics, business statistics, or economic statistics. Includes mathematical and survey statisticians.', 'create', 'https://www.onetonline.org/link/summary/15-2041.00'),
(229, 'ire', 'Surgeon', 'Physicians who treat diseases, injuries, and deformities by invasive, minimally-invasive, or non-invasive surgical methods, such as using instruments, appliances, or by manual manipulation.', 'create', 'https://www.onetonline.org/link/summary/29-1067.00'),
(230, 'irs', 'Surgeon', 'Physicians who treat diseases, injuries, and deformities by invasive, minimally-invasive, or non-invasive surgical methods, such as using instruments, appliances, or by manual manipulation.', 'create', 'https://www.onetonline.org/link/summary/29-1067.00'),
(231, 'isr', 'Surgical Technologist', 'Assist in operations, under the supervision of surgeons, registered nurses, or other surgical personnel. May help set up operating room, prepare and transport patients for surgery, adjust lights and equipment, pass instruments and other supplies to surgeons and surgeon\'s assistants, hold retractors, cut sutures, and help count sponges, needles, supplies, and instruments.', 'create', 'https://www.onetonline.org/link/summary/29-2055.00'),
(232, 'ier', 'Surveyor, Cartographer, Photogrammetrist, and Surveying Technicians', 'Collect, analyze, and interpret geographic information provided by geodetic surveys, aerial photographs, and satellite data. Research, study, and prepare maps and other spatial data in digital or graphic form for legal, social, political, educational, and design purposes. May work with Geographic Information Systems (GIS). May design and evaluate algorithms, data structures, and user interfaces for GIS and mapping systems.', 'create', 'https://www.onetonline.org/link/summary/17-1021.00'),
(233, 'iea', 'Surveyor, Cartographer, Photogrammetrist, and Surveying Technicians', 'Collect, analyze, and interpret geographic information provided by geodetic surveys, aerial photographs, and satellite data. Research, study, and prepare maps and other spatial data in digital or graphic form for legal, social, political, educational, and design purposes. May work with Geographic Information Systems (GIS). May design and evaluate algorithms, data structures, and user interfaces for GIS and mapping systems.', 'create', 'https://www.onetonline.org/link/summary/17-1021.00'),
(234, 'iec', 'Surveyor, Cartographer, Photogrammetrist, and Surveying Technicians', 'Collect, analyze, and interpret geographic information provided by geodetic surveys, aerial photographs, and satellite data. Research, study, and prepare maps and other spatial data in digital or graphic form for legal, social, political, educational, and design purposes. May work with Geographic Information Systems (GIS). May design and evaluate algorithms, data structures, and user interfaces for GIS and mapping systems.', 'create', 'https://www.onetonline.org/link/summary/17-1021.00'),
(235, 'ire', 'Systems Analyst, Electronic (Computer Scientist and Database Administrator)', 'Analyze science, engineering, business, and other data processing problems to implement and improve computer systems. Analyze user requirements, procedures, and problems to automate or improve existing systems and review computer system capabilities, workflow, and scheduling limitations. May analyze or recommend commercially available software.', 'create', 'https://www.onetonline.org/link/summary/15-1121.00'),
(236, 'iec', 'Urban and Regional Planner', 'Develop comprehensive plans and programs for use of land and physical facilities of jurisdictions, such as towns, cities, counties, and metropolitan areas.', 'create', 'https://www.onetonline.org/link/summary/19-3051.00'),
(237, 'ire', 'Veterinarian', 'Diagnose, treat, or research diseases and injuries of animals. Includes veterinarians who conduct research and development, inspect livestock, or care for pets and companion animals.', 'create', 'https://www.onetonline.org/link/summary/29-1131.00'),
(238, 'irs', 'Writer and Editor', 'Plan, coordinate, or edit content of material for publication. May review proposals and drafts for possible publication. Includes technical editors.', 'create', 'https://www.onetonline.org/link/summary/27-3041.00'),
(239, 'sea', 'Adult Literacy, Remedial Education, and GED Teacher and Instructor', 'Teach or instruct out-of-school youths and adults in remedial education classes, preparatory classes for the General Educational Development test, literacy, or English as a Second Language. Teaching may or may not take place in a traditional educational institution.', 'group', 'https://www.onetonline.org/link/summary/25-3011.00'),
(240, 'sae', 'Adult Literacy, Remedial Education, and GED Teacher and Instructor', 'Teach or instruct out-of-school youths and adults in remedial education classes, preparatory classes for the General Educational Development test, literacy, or English as a Second Language. Teaching may or may not take place in a traditional educational institution.', 'group', 'https://www.onetonline.org/link/summary/25-3011.00'),
(241, 'sai', 'Adult Literacy, Remedial Education, and GED Teacher and Instructor', 'Teach or instruct out-of-school youths and adults in remedial education classes, preparatory classes for the General Educational Development test, literacy, or English as a Second Language. Teaching may or may not take place in a traditional educational institution.', 'group', 'https://www.onetonline.org/link/summary/25-3011.00'),
(242, 'ser', 'Air Traffic Controller', 'Control air traffic on and within vicinity of airport and movement of air traffic between altitude sectors and control centers according to established procedures and policies. Authorize, regulate, and control commercial airline flights according to government or company regulations to expedite and ensure flight safety.', 'group', 'https://www.onetonline.org/link/summary/53-2021.00'),
(243, 'sia', 'Anthropology and Archeology Teacher, Postsecondary', 'Teach courses in anthropology or archeology. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'group', 'https://www.onetonline.org/link/summary/25-1061.00'),
(244, 'sce', 'Appraiser, Real Estate', 'Appraise real property to determine its value for purchase, sales, investment, mortgage, or loan purposes.', 'group', 'https://www.onetonline.org/link/summary/13-2021.02'),
(245, 'sia', 'Area, Ethnic, and Cultural Studies Teacher, Postsecondary', 'Teach courses pertaining to the culture and development of an area, an ethnic group, or any other group, such as Latin American studies, women\'s studies, or urban affairs. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'group', 'https://www.onetonline.org/link/summary/25-1062.00'),
(246, 'sra', 'Athletic Trainer', 'Evaluate and advise individuals to assist recovery from or avoid athletic-related injuries or illnesses, or maintain peak physical fitness. May provide first aid or emergency care.', 'group', 'https://www.onetonline.org/link/summary/29-9091.00'),
(247, 'sre', 'Athletic Trainer', 'Evaluate and advise individuals to assist recovery from or avoid athletic-related injuries or illnesses, or maintain peak physical fitness. May provide first aid or emergency care.', 'group', 'https://www.onetonline.org/link/summary/29-9091.00'),
(248, 'sri', 'Athletic Trainer', 'Evaluate and advise individuals to assist recovery from or avoid athletic-related injuries or illnesses, or maintain peak physical fitness. May provide first aid or emergency care.', 'group', 'https://www.onetonline.org/link/summary/29-9091.00'),
(249, 'sae', 'Clergy', 'Conduct religious worship and perform other spiritual functions associated with beliefs and practices of religious faith or denomination. Provide spiritual and moral guidance and assistance to members.', 'group', 'https://www.onetonline.org/link/summary/21-2011.00'),
(250, 'scr', 'Computer Support Specialists & Administrator', 'Provide technical assistance to computer users. Answer questions or resolve computer problems for clients in person, or via telephone or electronically. May provide assistance concerning the use of computer hardware and software, including printing, installation, word processing, electronic mail, and operating systems.', 'group', 'https://www.onetonline.org/link/summary/15-1151.00'),
(251, 'ser', 'Correction Officer', 'Guard inmates in penal or rehabilitative institutions in accordance with established regulations and procedures. May guard prisoners in transit between jail, courtroom, prison, or other point. Includes deputy sheriffs and police who spend the majority of their time guarding prisoners in correctional institutions.', 'group', 'https://www.onetonline.org/link/summary/33-3012.00'),
(252, 'sia', 'Counseling Psychologist', 'Assess and evaluate individuals\' problems through the use of case history, interview, and observation and provide individual or group counseling services to assist individuals in achieving more effective personal, social, educational, and vocational development and adjustment.', 'group', 'https://www.onetonline.org/link/summary/19-3031.03'),
(253, 'sea', 'Counselor  (School)', 'Counsel individuals and provide group educational and vocational guidance services.', 'group', 'https://www.onetonline.org/link/summary/21-1012.00'),
(254, 'sar', 'Counselor  (School)', 'Counsel individuals and provide group educational and vocational guidance services.', 'group', 'https://www.onetonline.org/link/summary/21-1012.00'),
(255, 'sai', 'Dental Assistant', 'Assist dentist, set up equipment, prepare patient for treatment, and keep records.', 'group', 'https://www.onetonline.org/link/summary/31-9091.00'),
(256, 'sre', 'Dental Assistant', 'Assist dentist, set up equipment, prepare patient for treatment, and keep records.', 'group', 'https://www.onetonline.org/link/summary/31-9091.00'),
(257, 'sai', 'Dental Hygienist', 'Clean teeth and examine oral areas, head, and neck for signs of oral disease. May educate patients on oral hygiene, take and develop x rays, or apply fluoride or sealants.', 'group', 'https://www.onetonline.org/link/summary/29-2021.00'),
(258, 'scr', 'Dental Hygienist', 'Clean teeth and examine oral areas, head, and neck for signs of oral disease. May educate patients on oral hygiene, take and develop x rays, or apply fluoride or sealants.', 'group', 'https://www.onetonline.org/link/summary/29-2021.00'),
(259, 'sce', 'Dental Hygienist', 'Clean teeth and examine oral areas, head, and neck for signs of oral disease. May educate patients on oral hygiene, take and develop x rays, or apply fluoride or sealants.', 'group', 'https://www.onetonline.org/link/summary/29-2021.00'),
(260, 'sei', 'Dietetic Technician', 'Assist in the provision of food service and nutritional programs, under the supervision of a dietitian. May plan and produce meals based on established guidelines, teach principles of food and nutrition, or counsel individuals.', 'group', 'https://www.onetonline.org/link/summary/29-2051.00'),
(261, 'sri', 'Dietetic Technician', 'Assist in the provision of food service and nutritional programs, under the supervision of a dietitian. May plan and produce meals based on established guidelines, teach principles of food and nutrition, or counsel individuals.', 'group', 'https://www.onetonline.org/link/summary/29-2051.00'),
(262, 'sie', 'Dietician and Nutritionist', 'Plan and conduct food service or nutritional programs to assist in the promotion of health and control of disease. May supervise activities of a department providing quantity food services, counsel individuals, or conduct nutritional research.', 'group', 'https://www.onetonline.org/link/summary/29-1031.00'),
(263, 'sia', 'Economics Teacher, Postsecondary', 'Teach courses in economics. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'group', 'https://www.onetonline.org/link/summary/25-1063.00'),
(264, 'sri', 'Emergency Medical Technician and Paramedic', 'Assess injuries, administer emergency medical care, and extricate trapped individuals. Transport injured or sick persons to medical facilities.', 'group', 'https://www.onetonline.org/link/summary/29-2041.00'),
(265, 'sci', 'Graduate Teaching Assistant', 'Assist faculty or other instructional staff in postsecondary institutions by performing teaching or teaching-related duties, such as teaching lower level courses, developing teaching materials, preparing and giving examinations, and grading examinations or papers. Graduate teaching assistants must be enrolled in a graduate school program. Graduate assistants who primarily perform non-teaching duties, such as research, should be reported in the occupational category related to the work performed.', 'group', 'https://www.onetonline.org/link/summary/25-1191.00'),
(266, 'sia', 'History Teacher, Postsecondary', 'Teach courses in human history and historiography. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'group', 'https://www.onetonline.org/link/summary/25-1125.00'),
(267, 'ser', 'Human Resources, Training, and Labor Relations Manager and Specialist', 'Plan, direct, or coordinate human resources activities and staff of an organization.', 'group', 'https://www.onetonline.org/link/summary/11-3121.00'),
(268, 'sei', 'Instructional Coordinator', 'Develop instructional material, coordinate educational content, and incorporate current technology in specialized fields that provide guidelines to educators and instructors for developing curricula and conducting courses. Includes educational consultants and specialists, and instructional material directors.', 'group', 'https://www.onetonline.org/link/summary/25-9031.00'),
(269, 'sia', 'Instructional Coordinator', 'Develop instructional material, coordinate educational content, and incorporate current technology in specialized fields that provide guidelines to educators and instructors for developing curricula and conducting courses. Includes educational consultants and specialists, and instructional material directors.', 'group', 'https://www.onetonline.org/link/summary/25-9031.00'),
(270, 'sie', 'Instructional Coordinator', 'Develop instructional material, coordinate educational content, and incorporate current technology in specialized fields that provide guidelines to educators and instructors for developing curricula and conducting courses. Includes educational consultants and specialists, and instructional material directors.', 'group', 'https://www.onetonline.org/link/summary/25-9031.00'),
(271, 'sea', 'Librarian', 'Administer libraries and perform related library services. Work in a variety of settings, including public libraries, educational institutions, museums, corporations, government agencies, law firms, non-profit organizations, and healthcare providers. Tasks may include selecting, acquiring, cataloguing, classifying, circulating, and maintaining library materials; and furnishing reference, bibliographical, and readers\' advisory services. May perform in-depth, strategic research, and synthesize, analyze, edit, and filter information. May set up or work with databases and information systems to catalogue and access information.', 'group', 'https://www.onetonline.org/link/summary/25-4021.00'),
(272, 'scr', 'Library Technician', 'Assist librarians by helping readers in the use of library catalogs, databases, and indexes to locate books and other materials; and by answering questions that require only brief consultation of standard reference. Compile records; sort and shelve books or other media; remove or repair damaged books or other media; register patrons; and check materials in and out of the circulation process. Replace materials in shelving area (stacks) or files. Includes bookmobile drivers who assist with providing services in mobile libraries.', 'group', 'https://www.onetonline.org/link/summary/25-4031.00'),
(273, 'sce', 'Loan Officer and Counselor', 'Provide guidance to prospective loan applicants who have problems qualifying for traditional loans. Guidance may include determining the best type of loan and explaining loan requirements or restrictions.', 'group', 'https://www.onetonline.org/link/summary/13-2071.01'),
(274, 'sec', 'Medical and Health Service Manager', 'Plan, direct, or coordinate medical and health services in hospitals, clinics, managed care organizations, public health agencies, or similar organizations.', 'group', 'https://www.onetonline.org/link/summary/11-9111.00'),
(275, 'sre', 'Medical Assistant', 'Perform administrative and certain clinical duties under the direction of a physician. Administrative duties may include scheduling appointments, maintaining medical records, billing, and coding information for insurance purposes. Clinical duties may include taking and recording vital signs and medical histories, preparing patients for examination, drawing blood, and administering medications as directed by physician.', 'group', 'https://www.onetonline.org/link/summary/31-9092.00'),
(276, 'scr', 'Medical Assistant', 'Perform administrative and certain clinical duties under the direction of a physician. Administrative duties may include scheduling appointments, maintaining medical records, billing, and coding information for insurance purposes. Clinical duties may include taking and recording vital signs and medical histories, preparing patients for examination, drawing blood, and administering medications as directed by physician.', 'group', 'https://www.onetonline.org/link/summary/31-9092.00'),
(277, 'sic', 'Mental Health Counselor', 'Counsel with emphasis on prevention. Work with individuals and groups to promote optimum mental and emotional health. May help individuals deal with issues associated with addictions and substance abuse; family, parenting, and marital problems; stress management; self-esteem; and aging.', 'group', 'https://www.onetonline.org/link/summary/21-1014.00'),
(278, 'sie', 'Nurse, Registered', 'Assess patient health problems and needs, develop and implement nursing care plans, and maintain medical records. Administer nursing care to ill, injured, convalescent, or disabled patients. May advise patients on health maintenance and disease prevention or provide case management. Licensing or registration required.', 'group', 'https://www.onetonline.org/link/summary/29-1141.00'),
(279, 'sic', 'Nurse, Registered', 'Assess patient health problems and needs, develop and implement nursing care plans, and maintain medical records. Administer nursing care to ill, injured, convalescent, or disabled patients. May advise patients on health maintenance and disease prevention or provide case management. Licensing or registration required.', 'group', 'https://www.onetonline.org/link/summary/29-1141.00'),
(280, 'sir', 'Nurse, Registered', 'Assess patient health problems and needs, develop and implement nursing care plans, and maintain medical records. Administer nursing care to ill, injured, convalescent, or disabled patients. May advise patients on health maintenance and disease prevention or provide case management. Licensing or registration required.', 'group', 'https://www.onetonline.org/link/summary/29-1141.00'),
(281, 'sia', 'Nursing Instructor and Teacher, Postsecondary', 'Demonstrate and teach patient care in classroom and clinical units to nursing students. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'group', 'https://www.onetonline.org/link/summary/25-1072.00'),
(282, 'sra', 'Occupational Therapist', 'Assess, plan, organize, and participate in rehabilitative programs that help build or restore vocational, homemaking, and daily living skills, as well as general independence, to persons with disabilities or developmental delays.', 'group', 'https://www.onetonline.org/link/summary/29-1122.00'),
(283, 'sec', 'Occupational Therapist (Assistant and Aide)', 'Under close supervision of an occupational therapist or occupational therapy assistant, perform only delegated, selected, or routine tasks in specific situations. These duties include preparing patient and treatment room.', 'group', 'https://www.onetonline.org/link/summary/31-2012.00'),
(284, 'src', 'Occupational Therapist (Assistant and Aide)', 'Under close supervision of an occupational therapist or occupational therapy assistant, perform only delegated, selected, or routine tasks in specific situations. These duties include preparing patient and treatment room.', 'group', 'https://www.onetonline.org/link/summary/31-2012.00'),
(285, 'sec', 'Paralegal and Legal Assistant', 'Assist lawyers by investigating facts, preparing legal documents, or researching legal precedent. Conduct research to support a legal proceeding, to formulate a defense, or to initiate legal action.', 'group', 'https://www.onetonline.org/link/summary/23-2011.00'),
(286, 'sec', 'Personal Financial Advisor', 'Advise clients on financial plans using knowledge of tax and investment strategies, securities, insurance, pension plans, and real estate. Duties include assessing clients\' assets, liabilities, cash flow, insurance coverage, tax status, and financial objectives.', 'group', 'https://www.onetonline.org/link/summary/13-2052.00'),
(287, 'sec', 'Physical Therapist Assistant and Aide', 'Under close supervision of a physical therapist or physical therapy assistant, perform only delegated, selected, or routine tasks in specific situations. These duties include preparing the patient and the treatment area.', 'group', 'https://www.onetonline.org/link/summary/31-2022.00'),
(288, 'sec', 'Physical Therapist', 'Assess, plan, organize, and participate in rehabilitative programs that improve mobility, relieve pain, increase strength, and improve or correct disabling conditions resulting from disease or injury.', 'group', 'https://www.onetonline.org/link/summary/29-1123.00'),
(289, 'sir', 'Podiatrist', 'Diagnose and treat diseases and deformities of the human foot.', 'group', 'https://www.onetonline.org/link/summary/29-1081.00'),
(290, 'ser', 'Police and Detective', 'Conduct investigations to prevent crimes or solve criminal cases.', 'group', 'https://www.onetonline.org/link/summary/33-3021.01'),
(291, 'sre', 'Police Patrol Officer', 'Patrol assigned area to enforce laws and ordinances, regulate traffic, control crowds, prevent crime, and arrest violators.', 'group', 'https://www.onetonline.org/link/summary/33-3051.01'),
(292, 'sia', 'Political Science Teacher, Postsecondary', 'Teach courses in political science, international affairs, and international relations. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'group', 'https://www.onetonline.org/link/summary/25-1065.00'),
(293, 'sia', 'Psychology Teacher, Postsecondary', 'Teach courses in psychology, such as child, clinical, and developmental psychology, and psychological counseling. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'group', 'https://www.onetonline.org/link/summary/25-1066.00'),
(294, 'sri', 'Radiation Therapist', 'Provide radiation therapy to patients as prescribed by a radiologist according to established practices and standards. Duties may include reviewing prescription and diagnosis; acting as liaison with physician and supportive care personnel; preparing equipment, such as immobilization, treatment, and protection devices; and maintaining records, reports, and files. May assist in dosimetry procedures and tumor localization.', 'group', 'https://www.onetonline.org/link/summary/29-1124.00'),
(295, 'sie', 'Recreational Therapist', 'Plan, direct, or coordinate medically-approved recreation programs for patients in hospitals, nursing homes, or other institutions. Activities include sports, trips, dramatics, social activities, and arts and crafts. May assess a patient condition and recommend appropriate recreational activity.', 'group', 'https://www.onetonline.org/link/summary/29-1125.00'),
(296, 'sar', 'Recreational Therapist', 'Plan, direct, or coordinate medically-approved recreation programs for patients in hospitals, nursing homes, or other institutions. Activities include sports, trips, dramatics, social activities, and arts and crafts. May assess a patient condition and recommend appropriate recreational activity.', 'group', 'https://www.onetonline.org/link/summary/29-1125.00'),
(297, 'sec', 'Residential Advisor', 'Coordinate activities in residential facilities in secondary and college dormitories, group homes, or similar establishments. Order supplies and determine need for maintenance, repairs, and furnishings. May maintain household records and assign rooms. May assist residents with problem solving or refer them to counseling resources.', 'group', 'https://www.onetonline.org/link/summary/39-9041.00'),
(298, 'sca', 'Residential Advisor', 'Coordinate activities in residential facilities in secondary and college dormitories, group homes, or similar establishments. Order supplies and determine need for maintenance, repairs, and furnishings. May maintain household records and assign rooms. May assist residents with problem solving or refer them to counseling resources.', 'group', 'https://www.onetonline.org/link/summary/39-9041.00'),
(299, 'sri', 'Respiratory Therapist', 'Assess, treat, and care for patients with breathing disorders. Assume primary responsibility for all respiratory care modalities, including the supervision of respiratory therapy technicians. Initiate and conduct therapeutic procedures; maintain patient records; and select, assemble, check, and operate equipment.', 'group', 'https://www.onetonline.org/link/summary/29-1126.00'),
(300, 'ser', 'Sheriff and Deputy Sheriff (Police and Detective)', 'Enforce law and order in rural or unincorporated districts or serve legal processes of courts. May patrol courthouse, guard court or grand jury, or escort defendants.', 'group', 'https://www.onetonline.org/link/summary/33-3051.03'),
(301, 'sea', 'Social and Community Service Manager', 'Plan, direct, or coordinate the activities of a social service program or community outreach organization. Oversee the program or organization\'s budget and policies regarding participant involvement, program requirements, and benefits. Work may involve directing social workers, counselors, or probation officers.', 'group', 'https://www.onetonline.org/link/summary/11-9151.00'),
(302, 'sce', 'Social and Human Service Assistant', 'Assist in providing client services in a wide variety of fields, such as psychology, rehabilitation, or social work, including support for families. May assist clients in identifying and obtaining available benefits and social and community services. May assist social workers with developing, organizing, and conducting programs to prevent and resolve problems relevant to substance abuse, human relationships, rehabilitation, or dependent care.', 'group', 'https://www.onetonline.org/link/summary/21-1093.00'),
(303, 'sec', 'Social Worker, Except Medical and Psychiatric', 'Provide social services and assistance to improve the social and psychological functioning of children and their families and to maximize the family well-being and the academic functioning of children. May assist parents, arrange adoptions, and find foster homes for abandoned or abused children. In schools, they address such problems as teenage pregnancy, misbehavior, and truancy. May also advise teachers.', 'group', 'https://www.onetonline.org/link/summary/21-1021.00'),
(304, 'sci', 'Social Worker, Except Medical and Psychiatric', 'Provide social services and assistance to improve the social and psychological functioning of children and their families and to maximize the family well-being and the academic functioning of children. May assist parents, arrange adoptions, and find foster homes for abandoned or abused children. In schools, they address such problems as teenage pregnancy, misbehavior, and truancy. May also advise teachers.', 'group', 'https://www.onetonline.org/link/summary/21-1021.00'),
(305, 'sra', 'Social Worker, Except Medical and Psychiatric', 'Provide social services and assistance to improve the social and psychological functioning of children and their families and to maximize the family well-being and the academic functioning of children. May assist parents, arrange adoptions, and find foster homes for abandoned or abused children. In schools, they address such problems as teenage pregnancy, misbehavior, and truancy. May also advise teachers.', 'group', 'https://www.onetonline.org/link/summary/21-1021.00'),
(306, 'sae', 'Social Worker, Except Medical and Psychiatric', 'Provide social services and assistance to improve the social and psychological functioning of children and their families and to maximize the family well-being and the academic functioning of children. May assist parents, arrange adoptions, and find foster homes for abandoned or abused children. In schools, they address such problems as teenage pregnancy, misbehavior, and truancy. May also advise teachers.', 'group', 'https://www.onetonline.org/link/summary/21-1021.00');
INSERT INTO `code` (`id`, `code`, `occupation`, `description`, `type`, `link`) VALUES
(307, 'ser', 'Social Worker, Except Medical and Psychiatric', 'Provide social services and assistance to improve the social and psychological functioning of children and their families and to maximize the family well-being and the academic functioning of children. May assist parents, arrange adoptions, and find foster homes for abandoned or abused children. In schools, they address such problems as teenage pregnancy, misbehavior, and truancy. May also advise teachers.', 'group', 'https://www.onetonline.org/link/summary/21-1021.00'),
(308, 'sea', 'Social Worker, Medical and Psychiatric', 'Assist mentally impaired or emotionally disturbed patients, working under direction of nursing and medical staff. May assist with daily living activities, lead patients in educational and recreational activities, or accompany patients to and from examinations and treatments. May restrain violent patients. Includes psychiatric orderlies.', 'group', 'https://www.onetonline.org/link/summary/31-1013.00'),
(309, 'sia', 'Sociology Teacher, Postsecondary', 'Teach courses in sociology. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'group', 'https://www.onetonline.org/link/summary/25-1067.00'),
(310, 'sir', 'Speech Language Pathologist', 'Assess and treat persons with speech, language, voice, and fluency disorders. May select alternative communication systems and teach their use. May perform research related to speech and language problems.', 'group', 'https://www.onetonline.org/link/summary/29-1127.00'),
(311, 'sea', 'Teacher, Elementary School', 'Teach students basic academic, social, and other formative skills in public or private schools at the elementary level.', 'group', 'https://www.onetonline.org/link/summary/25-2021.00'),
(312, 'sai', 'Teacher, Elementary School', 'Teach students basic academic, social, and other formative skills in public or private schools at the elementary level.', 'group', 'https://www.onetonline.org/link/summary/25-2021.00'),
(313, 'sec', 'Teacher, Kindergarten', 'Teach elemental natural and social science, personal hygiene, music, art, and literature to kindergarten students. Promote physical, mental, and social development. May be required to hold State certification.', 'group', 'https://www.onetonline.org/link/summary/25-2012.00'),
(314, 'sai', 'Teacher, Kindergarten', 'Teach elemental natural and social science, personal hygiene, music, art, and literature to kindergarten students. Promote physical, mental, and social development. May be required to hold State certification.', 'group', 'https://www.onetonline.org/link/summary/25-2012.00'),
(315, 'sae', 'Teacher, Preschool', 'Instruct preschool-aged children in activities designed to promote social, physical, and intellectual growth needed for primary school in preschool, day care center, or other child development facility. May be required to hold State certification.', 'group', 'https://www.onetonline.org/link/summary/25-2011.00'),
(316, 'sai', 'Teacher, Preschool', 'Instruct preschool-aged children in activities designed to promote social, physical, and intellectual growth needed for primary school in preschool, day care center, or other child development facility. May be required to hold State certification.', 'group', 'https://www.onetonline.org/link/summary/25-2011.00'),
(317, 'ser', 'Teacher, Secondary School', 'Teach students in one or more subjects, such as English, mathematics, or social studies at the secondary level in public or private schools. May be designated according to subject matter specialty.', 'group', 'https://www.onetonline.org/link/summary/25-2031.00'),
(318, 'sai', 'Teacher, Secondary School', 'Teach students in one or more subjects, such as English, mathematics, or social studies at the secondary level in public or private schools. May be designated according to subject matter specialty.', 'group', 'https://www.onetonline.org/link/summary/25-2031.00'),
(319, 'sec', 'Teacher, Special Education', 'Teach school subjects to educationally and physically handicapped students. Includes teachers who specialize and work with audibly and visually handicapped students and those who teach basic academic and life processes skills to the mentally impaired.', 'group', 'https://www.onetonline.org/link/summary/25-2051.00'),
(320, 'sac', 'Teacher, Special Education', 'Teach school subjects to educationally and physically handicapped students. Includes teachers who specialize and work with audibly and visually handicapped students and those who teach basic academic and life processes skills to the mentally impaired.', 'group', 'https://www.onetonline.org/link/summary/25-2051.00'),
(321, 'ser', 'Teacher, Vocational Education and Training', 'Teach or instruct vocational or occupational subjects at the postsecondary level (but at less than the baccalaureate) to students who have graduated or left high school. Includes correspondence school, industrial, and commercial instructors; and adult education teachers and instructors who prepare persons to operate industrial machinery and equipment and transportation and communications equipment. Teaching may take place in public or private schools whose primary business is education or in a school associated with an organization whose primary business is other than education.', 'group', 'https://www.onetonline.org/link/summary/25-1194.00'),
(322, 'sai', 'Teacher, Vocational Education and Training', 'Teach or instruct vocational or occupational subjects at the postsecondary level (but at less than the baccalaureate) to students who have graduated or left high school. Includes correspondence school, industrial, and commercial instructors; and adult education teachers and instructors who prepare persons to operate industrial machinery and equipment and transportation and communications equipment. Teaching may take place in public or private schools whose primary business is education or in a school associated with an organization whose primary business is other than education.', 'group', 'https://www.onetonline.org/link/summary/25-1194.00'),
(323, 'sec', 'Training and Development Specialist', 'Design and conduct training and development programs to improve individual and organizational performance. May analyze training needs.', 'group', 'https://www.onetonline.org/link/summary/13-1151.00'),
(324, 'esa', 'Administrative Law Judge, Adjudicator and Hearing Officer', 'Conduct hearings to recommend or make decisions on claims concerning government programs or other government-related matters. Determine liability, sanctions, or penalties, or recommend the acceptance or rejection of claims or settlements.', 'business_center', 'https://www.onetonline.org/link/summary/23-1021.00'),
(325, 'esr', 'Administrative Services Manager', 'Plan, direct, or coordinate one or more administrative services of an organization, such as records and information management, mail distribution, facilities planning and maintenance, custodial operations, and other office support services.', 'business_center', 'https://www.onetonline.org/link/summary/11-3011.00'),
(326, 'esa', 'Agent and Business Manager of Artists, Performers and Athletes', 'Represent and promote artists, performers, and athletes in dealings with current or prospective employers. May handle contract negotiation and other business matters for clients.', 'business_center', 'https://www.onetonline.org/link/summary/13-1011.00'),
(327, 'esa', 'Arbitrator, Mediator and Conciliator', 'Facilitate negotiation and conflict resolution through dialogue. Resolve conflicts outside of the court system by mutual consent of parties involved.', 'business_center', 'https://www.onetonline.org/link/summary/23-1022.00'),
(328, 'ers', 'Athletes and Sports Competitor', 'Compete in athletic events.', 'business_center', 'https://www.onetonline.org/link/summary/27-2021.00'),
(329, 'era', 'Chef & Head Cook', 'Direct and may participate in the preparation, seasoning, and cooking of salads, soups, fish, meats, vegetables, desserts, or other foods. May plan and price menu items, order supplies, and keep records and accounts.', 'business_center', 'https://www.onetonline.org/link/summary/35-1011.00'),
(330, 'erc', 'Chef & Head Cook', 'Direct and may participate in the preparation, seasoning, and cooking of salads, soups, fish, meats, vegetables, desserts, or other foods. May plan and price menu items, order supplies, and keep records and accounts.', 'business_center', 'https://www.onetonline.org/link/summary/35-1011.00'),
(331, 'esr', 'Compliance Officer and Enforcement Inspector (Compliance Officer)', 'Examine, evaluate, and investigate eligibility for or conformity with laws and regulations governing contract compliance of licenses and permits, and perform other compliance and enforcement inspection and analysis activities not classified elsewhere.', 'business_center', 'https://www.onetonline.org/link/summary/13-1041.00'),
(332, 'ers', 'Construction Manager', 'Plan, direct, or coordinate, usually through subordinate supervisory personnel, activities concerned with the construction and maintenance of structures, facilities, and systems. Participate in the conceptual development of a construction project and oversee its organization, scheduling, budgeting, and implementation. Includes managers in specialized construction fields, such as carpentry or plumbing.', 'business_center', 'https://www.onetonline.org/link/summary/11-9021.00'),
(333, 'erc', 'Construction Manager', 'Plan, direct, or coordinate, usually through subordinate supervisory personnel, activities concerned with the construction and maintenance of structures, facilities, and systems. Participate in the conceptual development of a construction project and oversee its organization, scheduling, budgeting, and implementation. Includes managers in specialized construction fields, such as carpentry or plumbing.', 'business_center', 'https://www.onetonline.org/link/summary/11-9021.00'),
(334, 'eic', 'Criminal Investigator and Special Agent', 'Investigate alleged or suspected criminal violations of Federal, state, or local laws to determine if evidence is sufficient to recommend prosecution.', 'business_center', 'https://www.onetonline.org/link/summary/33-3021.03'),
(335, 'eir', 'Criminal Investigator and Special Agent', 'Investigate alleged or suspected criminal violations of Federal, state, or local laws to determine if evidence is sufficient to recommend prosecution.', 'business_center', 'https://www.onetonline.org/link/summary/33-3021.03'),
(336, 'eia', 'Criminal Investigator and Special Agent', 'Investigate alleged or suspected criminal violations of Federal, state, or local laws to determine if evidence is sufficient to recommend prosecution.', 'business_center', 'https://www.onetonline.org/link/summary/33-3021.03'),
(337, 'eis', 'Criminal Investigator and Special Agent', 'Investigate alleged or suspected criminal violations of Federal, state, or local laws to determine if evidence is sufficient to recommend prosecution.', 'business_center', 'https://www.onetonline.org/link/summary/33-3021.03'),
(338, 'esa', 'Education Administrator', 'Plan, direct, or coordinate the academic, administrative, or auxiliary activities of public or private elementary or secondary level schools.', 'business_center', 'https://www.onetonline.org/link/summary/11-9032.00'),
(339, 'ecr', 'Financial Examiner', 'Enforce or ensure compliance with laws and regulations governing financial and securities institutions and financial and real estate transactions. May examine, verify, or authenticate records.', 'business_center', 'https://www.onetonline.org/link/summary/13-2061.00'),
(340, 'esr', 'Financial Manager', 'Plan, direct, or coordinate accounting, investing, banking, insurance, securities, and other financial activities of a branch, office, or department of an establishment.', 'business_center', 'https://www.onetonline.org/link/summary/11-3031.00'),
(341, 'eca', 'Financial Manager', 'Plan, direct, or coordinate accounting, investing, banking, insurance, securities, and other financial activities of a branch, office, or department of an establishment.', 'business_center', 'https://www.onetonline.org/link/summary/11-3031.00'),
(342, 'ers', 'Fire Fighting and Prevention Supervisor', 'Supervise fire fighters who control and extinguish municipal fires, protect life and property, and conduct rescue efforts.', 'business_center', 'https://www.onetonline.org/link/summary/33-1021.01'),
(343, 'ecr', 'First-Line Supervisor/ Manager (office/personnel )', 'Directly supervise and coordinate the activities of clerical and administrative support workers.', 'business_center', 'https://www.onetonline.org/link/summary/43-1011.00'),
(344, 'erc', 'Fish Hatchery Manager', 'Direct and coordinate, through subordinate supervisory personnel, activities of workers engaged in fish hatchery production for corporations, cooperatives, or other owners.', 'business_center', 'https://www.onetonline.org/link/summary/11-9013.03'),
(345, 'esr', 'Food Service Manager', 'Plan, direct, or coordinate activities of an organization or department that serves food and beverages.', 'business_center', 'https://www.onetonline.org/link/summary/11-9051.00'),
(346, 'eci', 'Gaming Manager', 'Plan, direct, or coordinate gaming operations in a casino. May formulate house rules.', 'business_center', 'https://www.onetonline.org/link/summary/11-9071.00'),
(347, 'ecr', 'Gaming Manager', 'Plan, direct, or coordinate gaming operations in a casino. May formulate house rules.', 'business_center', 'https://www.onetonline.org/link/summary/11-9071.00'),
(348, 'eci', 'Gaming Supervisor', 'Supervise and coordinate activities of workers in assigned gaming areas. Circulate among tables and observe operations. Ensure that stations and games are covered for each shift. May explain and interpret operating rules of house to patrons. May plan and organize activities and services for guests in hotels/casinos. May address service complaints.', 'business_center', 'https://www.onetonline.org/link/summary/39-1011.00'),
(349, 'ecr', 'Gaming Supervisor', 'Supervise and coordinate activities of workers in assigned gaming areas. Circulate among tables and observe operations. Ensure that stations and games are covered for each shift. May explain and interpret operating rules of house to patrons. May plan and organize activities and services for guests in hotels/casinos. May address service complaints.', 'business_center', 'https://www.onetonline.org/link/summary/39-1011.00'),
(350, 'esr', 'Housekeeping Supervisor', 'Directly supervise and coordinate work activities of cleaning personnel in hotels, hospitals, offices, and other establishments.', 'business_center', 'https://www.onetonline.org/link/summary/37-1011.00'),
(351, 'ecr', 'Housekeeping Supervisor', 'Directly supervise and coordinate work activities of cleaning personnel in hotels, hospitals, offices, and other establishments.', 'business_center', 'https://www.onetonline.org/link/summary/37-1011.00'),
(352, 'esr', 'Industrial Production Manager', 'Plan, direct, or coordinate the work activities and resources necessary for manufacturing products in accordance with cost, quality, and quantity specifications.', 'business_center', 'https://www.onetonline.org/link/summary/11-3051.00'),
(353, 'ecr', 'Industrial Production Manager', 'Plan, direct, or coordinate the work activities and resources necessary for manufacturing products in accordance with cost, quality, and quantity specifications.', 'business_center', 'https://www.onetonline.org/link/summary/11-3051.00'),
(354, 'eic', 'Insurance Adjuster, Examiner, and Investigator', 'Investigate, analyze, and determine the extent of insurance company\'s liability concerning personal, casualty, or property loss or damages, and attempt to effect settlement with claimants. Correspond with or interview medical specialists, agents, witnesses, or claimants to compile information. Calculate benefit payments and approve payment of claims within a certain monetary limit.', 'business_center', 'https://www.onetonline.org/link/summary/13-1031.02'),
(355, 'esc', 'Insurance Adjuster, Examiner, and Investigator', 'Investigate, analyze, and determine the extent of insurance company\'s liability concerning personal, casualty, or property loss or damages, and attempt to effect settlement with claimants. Correspond with or interview medical specialists, agents, witnesses, or claimants to compile information. Calculate benefit payments and approve payment of claims within a certain monetary limit.', 'business_center', 'https://www.onetonline.org/link/summary/13-1031.02'),
(356, 'eis', 'Insurance Adjuster, Examiner, and Investigator', 'Investigate, analyze, and determine the extent of insurance company\'s liability concerning personal, casualty, or property loss or damages, and attempt to effect settlement with claimants. Correspond with or interview medical specialists, agents, witnesses, or claimants to compile information. Calculate benefit payments and approve payment of claims within a certain monetary limit.', 'business_center', 'https://www.onetonline.org/link/summary/13-1031.02'),
(357, 'ers', 'Laborer and Material Mover', 'Manually move freight, stock, or other materials or perform other general labor. Includes all manual laborers not elsewhere classified.', 'business_center', 'https://www.onetonline.org/link/summary/53-7062.00'),
(358, 'esr', 'Lawn Service Manager', 'Directly supervise and coordinate activities of workers engaged in landscaping or groundskeeping activities. Work may involve reviewing contracts to ascertain service, machine, and workforce requirements; answering inquiries from potential customers regarding methods, material, and price ranges; and preparing estimates according to labor, material, and machine costs.', 'business_center', 'https://www.onetonline.org/link/summary/37-1012.00'),
(359, 'eci', 'Lawyer', 'Represent clients in criminal and civil litigation and other legal proceedings, draw up legal documents, or manage or advise clients on legal transactions. May specialize in a single area or may practice broadly in many areas of law.', 'business_center', 'https://www.onetonline.org/link/summary/23-1011.00'),
(360, 'esc', 'Loan Officer', 'Evaluate, authorize, or recommend approval of commercial, real estate, or credit loans. Advise borrowers on financial status and payment methods. Includes mortgage loan officers and agents, collection analysts, loan servicing officers, and loan underwriters.', 'business_center', 'https://www.onetonline.org/link/summary/13-2072.00'),
(361, 'esr', 'Lodging Manager', 'Plan, direct, or coordinate activities of an organization or department that provides lodging and other accommodations.', 'business_center', 'https://www.onetonline.org/link/summary/11-9081.00'),
(362, 'esc', 'Management Analyst', 'Conduct organizational studies and evaluations, design systems and procedures, conduct work simplification and measurement studies, and prepare operations and procedures manuals to assist management in operating more efficiently and effectively. Includes program analysts and management consultants.', 'business_center', 'https://www.onetonline.org/link/summary/13-1111.00'),
(363, 'eci', 'Management Analyst', 'Conduct organizational studies and evaluations, design systems and procedures, conduct work simplification and measurement studies, and prepare operations and procedures manuals to assist management in operating more efficiently and effectively. Includes program analysts and management consultants.', 'business_center', 'https://www.onetonline.org/link/summary/13-1111.00'),
(364, 'esa', 'Medical and Health Services Manager', 'Plan, direct, or coordinate medical and health services in hospitals, clinics, managed care organizations, public health agencies, or similar organizations.', 'business_center', 'https://www.onetonline.org/link/summary/11-9111.00'),
(365, 'esi', 'Medical and Health Services Manager', 'Plan, direct, or coordinate medical and health services in hospitals, clinics, managed care organizations, public health agencies, or similar organizations.', 'business_center', 'https://www.onetonline.org/link/summary/11-9111.00'),
(366, 'erc', 'Nursery and Greenhouse Manager', 'Plan, organize, direct, control, and coordinate activities of workers engaged in propagating, cultivating, and harvesting horticultural specialties, such as trees, shrubs, flowers, mushrooms, and other plants.', 'business_center', 'https://www.onetonline.org/link/summary/11-9013.01'),
(367, 'ecr', 'Optician, Dispensing', 'Design, measure, fit, and adapt lenses and frames for client according to written optical prescription or specification. Assist client with inserting, removing, and caring for contact lenses. Assist client with selecting frames. Measure customer for size of eyeglasses and coordinate frames with facial and eye measurements and optical prescription. Prepare work order for optical laboratory containing instructions for grinding and mounting lenses in frames. Verify exactness of finished lens spectacles. Adjust frame and lens position to fit client. May shape or reshape frames. Includes contact lens opticians.', 'business_center', 'https://www.onetonline.org/link/summary/29-2081.00'),
(368, 'eci', 'Paralegal and Legal Assistant', 'Assist lawyers by investigating facts, preparing legal documents, or researching legal precedent. Conduct research to support a legal proceeding, to formulate a defense, or to initiate legal action.', 'business_center', 'https://www.onetonline.org/link/summary/23-2011.00'),
(369, 'ecr', 'Paralegal and Legal Assistant', 'Assist lawyers by investigating facts, preparing legal documents, or researching legal precedent. Conduct research to support a legal proceeding, to formulate a defense, or to initiate legal action.', 'business_center', 'https://www.onetonline.org/link/summary/23-2011.00'),
(370, 'esa', 'Personnel Recruiter', 'Perform activities in the human resource area. Includes employment specialists who screen, recruit, interview, and place workers.', 'business_center', 'https://www.onetonline.org/link/summary/13-1071.00'),
(371, 'esr', 'Personnel, Training, and Labor Relations Manager (Personnel Recruiters)', 'Perform activities in the human resource area. Includes employment specialists who screen, recruit, interview, and place workers.', 'business_center', 'https://www.onetonline.org/link/summary/13-1071.00'),
(372, 'esr', 'Police and Detective Supervisor', 'Directly supervise and coordinate activities of members of police force.', 'business_center', 'https://www.onetonline.org/link/summary/33-1012.00'),
(373, 'esa', 'Police Detective', 'Conduct investigations to prevent crimes or solve criminal cases.', 'business_center', 'https://www.onetonline.org/link/summary/33-3021.01'),
(374, 'esi', 'Police Detective', 'Conduct investigations to prevent crimes or solve criminal cases.', 'business_center', 'https://www.onetonline.org/link/summary/33-3021.01'),
(375, 'eas', 'Producer, Director, and Related Workers', 'Produce or direct stage, television, radio, video, or motion picture productions for entertainment, information, or instruction. Responsible for creative decisions, such as interpretation of script, choice of actors or guests, set design, sound, special effects, and choreography.', 'business_center', 'https://www.onetonline.org/link/summary/27-2012.00'),
(376, 'eac', 'Program Director', 'Direct and coordinate activities of personnel engaged in preparation of radio or television station program schedules and programs, such as sports or news.', 'business_center', 'https://www.onetonline.org/link/summary/27-2012.03'),
(377, 'ear', 'Program Director', 'Direct and coordinate activities of personnel engaged in preparation of radio or television station program schedules and programs, such as sports or news.', 'business_center', 'https://www.onetonline.org/link/summary/27-2012.03'),
(378, 'eas', 'Program Director', 'Direct and coordinate activities of personnel engaged in preparation of radio or television station program schedules and programs, such as sports or news.', 'business_center', 'https://www.onetonline.org/link/summary/27-2012.03'),
(379, 'eci', 'Property and Real Estate Manager', 'Operate real estate office, or work for commercial real estate firm, overseeing real estate transactions. Other duties usually include selling real estate or renting properties and arranging loans.', 'business_center', 'https://www.onetonline.org/link/summary/41-9021.00'),
(380, 'esr', 'Property and Real Estate Manager', 'Operate real estate office, or work for commercial real estate firm, overseeing real estate transactions. Other duties usually include selling real estate or renting properties and arranging loans.', 'business_center', 'https://www.onetonline.org/link/summary/41-9021.00'),
(381, 'eai', 'Public Relations Specialist', 'Engage in promoting or creating an intended public image for individuals, groups, or organizations. May write or select material for release to various communications media.', 'business_center', 'https://www.onetonline.org/link/summary/27-3031.00'),
(382, 'eas', 'Public Relations Specialist', 'Engage in promoting or creating an intended public image for individuals, groups, or organizations. May write or select material for release to various communications media.', 'business_center', 'https://www.onetonline.org/link/summary/27-3031.00'),
(383, 'eci', 'Public Transportation Inspector', 'Inspect and monitor transportation equipment, vehicles, or systems to ensure compliance with regulations and safety standards.', 'business_center', 'https://www.onetonline.org/link/summary/53-6051.07'),
(384, 'ecr', 'Public Transportation Inspector', 'Inspect and monitor transportation equipment, vehicles, or systems to ensure compliance with regulations and safety standards.', 'business_center', 'https://www.onetonline.org/link/summary/53-6051.07'),
(385, 'eci', 'Purchasing Agent, Except Wholesale, Retail, and Farm Products', 'Purchase machinery, equipment, tools, parts, supplies, or services necessary for the operation of an establishment. Purchase raw or semi-finished materials for manufacturing.', 'business_center', 'https://www.onetonline.org/link/summary/13-1023.00'),
(386, 'esc', 'Purchasing Agent, Except Wholesale, Retail, and Farm Products', 'Purchase machinery, equipment, tools, parts, supplies, or services necessary for the operation of an establishment. Purchase raw or semi-finished materials for manufacturing.', 'business_center', 'https://www.onetonline.org/link/summary/13-1023.00'),
(387, 'esr', 'Purchasing Manager', 'Plan, direct, or coordinate the activities of buyers, purchasing officers, and related workers involved in purchasing materials, products, and services. Includes wholesale or retail trade merchandising managers and procurement managers.', 'business_center', 'https://www.onetonline.org/link/summary/11-3061.00'),
(388, 'esr', 'Recreation Worker', 'Conduct recreation activities with groups in public, private, or volunteer agencies or recreation facilities. Organize and promote activities, such as arts and crafts, sports, games, music, dramatics, social recreation, camping, and hobbies, taking into account the needs and interests of individual members.', 'business_center', 'https://www.onetonline.org/link/summary/39-9032.00'),
(389, 'esa', 'Sales Agent, Advertising', 'Sell or solicit advertising space, time, or media in publications, signage, TV, radio, or the Internet. Includes individuals who obtain leases for outdoor advertising sites or persuade retailers to use sales promotion display items.', 'business_center', 'https://www.onetonline.org/link/summary/41-3011.00'),
(390, 'esa', 'Sales Agent, Real Estate', 'Rent, buy, or sell property for clients. Perform duties, such as study property listings, interview prospective clients, accompany clients to property site, discuss conditions of sale, and draw up real estate contracts. Includes agents who represent buyer.', 'business_center', 'https://www.onetonline.org/link/summary/41-9022.00'),
(391, 'esc', 'Sales Agent, Securities, Commodities, and Financial Services', 'Buy and sell securities and commodities to transfer debt, capital, or risk. Establish and negotiate unit prices and terms of sale.', 'business_center', 'https://www.onetonline.org/link/summary/41-3031.03'),
(392, 'esc', 'Sales Agent/Placer, Insurance', 'Sell life, property, casualty, health, automotive, or other types of insurance. May refer clients to independent brokers, work as an independent broker, or be employed by an insurance company.', 'business_center', 'https://www.onetonline.org/link/summary/41-3021.00'),
(393, 'eri', 'Sales Engineer', 'Sell business goods or services, the selling of which requires a technical background equivalent to a baccalaureate degree in engineering.', 'business_center', 'https://www.onetonline.org/link/summary/41-9031.00'),
(394, 'eci', 'Sales Manager', 'Plan, direct, or coordinate the actual distribution or movement of a product or service to the customer. Coordinate sales distribution by establishing sales territories, quotas, and goals and establish training programs for sales representatives. Analyze sales statistics gathered by staff to determine sales potential and inventory requirements and monitor the preferences of customers.', 'business_center', 'https://www.onetonline.org/link/summary/11-2022.00'),
(395, 'erc', 'Ship and Boat Captain', 'Command vessels in oceans, bays, lakes, rivers, or coastal waters.', 'business_center', 'https://www.onetonline.org/link/summary/53-5021.01'),
(396, 'ecr', 'Storage and Distribution Manager', 'Plan, direct, or coordinate the storage or distribution operations within an organization or the activities of organizations that are engaged in storing or distributing materials or products.', 'business_center', 'https://www.onetonline.org/link/summary/11-3071.02'),
(397, 'ers', 'Supervisor/Manager of Mechanics, Installers, and Repairers', 'Directly supervise and coordinate the activities of mechanics, installers, and repairers.', 'business_center', 'https://www.onetonline.org/link/summary/49-1011.00'),
(398, 'ers', 'Supervisor/Manager  of Transportation and Material-Moving Machine or Vehicle Operators', 'Directly supervise and coordinate activities of transportation and material-moving machine and vehicle operators and helpers.', 'business_center', 'https://www.onetonline.org/link/summary/53-1031.00'),
(399, 'eri', 'Tax Examiner, Collector, and Revenue Agent', 'Determine tax liability or collect taxes from individuals or business firms according to prescribed laws and regulations.', 'business_center', 'https://www.onetonline.org/link/summary/13-2081.00'),
(400, 'esr', 'Teacher, Postsecondary', 'Teach courses pertaining to education, such as counseling, curriculum, guidance, instruction, teacher education, and teaching English as a second language. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', 'business_center', 'https://www.onetonline.org/link/summary/25-1081.00'),
(401, 'esr', 'Top Executive', 'Determine and formulate policies and provide overall direction of companies or private and public sector organizations within guidelines set up by a board of directors or similar governing body. Plan, direct, or coordinate operational activities at the highest level of management with the help of subordinate executives and staff managers.', 'business_center', 'https://www.onetonline.org/link/summary/11-1011.00'),
(402, 'eci', 'Transportation Manager', 'Plan, direct, or coordinate the transportation operations within an organization or the activities of organizations that provide transportation services.', 'business_center', 'https://www.onetonline.org/link/summary/11-3071.01'),
(403, 'ecr', 'Transportation Manager', 'Plan, direct, or coordinate the transportation operations within an organization or the activities of organizations that provide transportation services.', 'business_center', 'https://www.onetonline.org/link/summary/11-3071.01'),
(404, 'eci', 'Treasurer, Controller, and Chief Financial Officer', 'Direct financial activities, such as planning, procurement, and investments for all or part of an organization.', 'business_center', 'https://www.onetonline.org/link/summary/11-3031.01'),
(405, 'ecr', 'Treasurer, Controller, and Chief Financial Officer', 'Direct financial activities, such as planning, procurement, and investments for all or part of an organization.', 'business_center', 'https://www.onetonline.org/link/summary/11-3031.01'),
(406, 'esr', 'Wholesale and Retail Buyer, Except Farm Products', 'Buy merchandise or commodities, other than farm products, for resale to consumers at the wholesale or retail level, including both durable and nondurable goods. Analyze past buying trends, sales records, price, and quality of merchandise to determine value and yield. Select, order, and authorize payment for merchandise according to contractual agreements. May conduct meetings with sales personnel and introduce new products. Includes assistant wholesale and retail buyers of nonfarm products.', 'business_center', 'https://www.onetonline.org/link/summary/13-1022.00'),
(407, 'rei', 'Aircraft Engine Mechanic', 'Diagnose, adjust, repair, or overhaul aircraft engines and assemblies, such as hydraulic and pneumatic systems. Includes helicopter and aircraft engine specialists.', 'build', 'https://www.onetonline.org/link/summary/49-3011.00'),
(408, 'rei', 'Airline Pilot, Copilot, and Flight Engineer', 'Pilot and navigate the flight of fixed-wing, multi-engine aircraft, usually on scheduled air carrier routes, for the transport of passengers and cargo. Requires Federal Air Transport Pilot certificate and rating for specific aircraft type used. Includes regional, National, and international airline pilots and flight instructors of airline pilots.', 'build', 'https://www.onetonline.org/link/summary/53-2011.00'),
(409, 'rei', 'Automotive Body and Related Repairer', 'Repair and refinish automotive vehicle bodies and straighten vehicle frames.', 'build', 'https://www.onetonline.org/link/summary/49-3021.00'),
(410, 'res', 'Automotive Mechanic', 'Repair automobiles, trucks, buses, and other vehicles. Master mechanics repair virtually any part on the vehicle or specialize in the transmission system.', 'build', 'https://www.onetonline.org/link/summary/49-3023.01'),
(411, 'rsa', 'Baker, Bread and Pastry', 'Mix and bake ingredients to produce breads, rolls, cookies, cakes, pies, pastries, or other baked goods.', 'build', 'https://www.onetonline.org/link/summary/51-3011.00'),
(412, 'rae', 'Bookbinder', 'Bind books and other publications or finish printed products by hand or machine. May set up binding and finishing machines.', 'build', 'https://www.onetonline.org/link/summary/51-5113.00'),
(413, 'rec', 'Brick mason', 'Lay and bind building materials, such as brick, structural tile, concrete block, cinder block, glass block, and terra-cotta block, with mortar and other substances to construct or repair walls, partitions, arches, sewers, and other structures.', 'build', 'https://www.onetonline.org/link/summary/47-2021.00'),
(414, 'ras', 'Broadcast Technician', 'Set up, operate, and maintain the electronic equipment used to transmit radio and television programs. Control audio equipment to regulate volume level and quality of sound during radio and television broadcasts. Operate transmitter to broadcast radio or television programs.', 'build', 'https://www.onetonline.org/link/summary/27-4012.00'),
(415, 'rei', 'Bus and Truck Mechanic and Diesel Specialist', 'Diagnose, adjust, repair, or overhaul buses and trucks, or maintain and repair any type of diesel engines. Includes mechanics working primarily with automobile or marine diesel engines.', 'build', 'https://www.onetonline.org/link/summary/49-3031.00'),
(416, 'rca', 'Cabinetmaker', 'Cut, shape, and assemble wooden articles or set up and operate a variety of woodworking machines, such as power saws, jointers, and mortisers to surface, cut, or shape lumber or to fabricate parts for wood products.', 'build', 'https://www.onetonline.org/link/summary/51-7011.00'),
(417, 'rac', 'Cabinetmaker', 'Cut, shape, and assemble wooden articles or set up and operate a variety of woodworking machines, such as power saws, jointers, and mortisers to surface, cut, or shape lumber or to fabricate parts for wood products.', 'build', 'https://www.onetonline.org/link/summary/51-7011.00'),
(418, 'rci', 'Calibration and Instrumentation Technician', 'Lay out, build, test, troubleshoot, repair, and modify developmental and production electronic components, parts, equipment, and systems, such as computer equipment, missile control instrumentation, electron tubes, test equipment, and machine tool numerical controls, applying principles and theories of electronics, electrical circuitry, engineering mathematics, electronic and electrical testing, and physics. Usually work under direction of engineering staff.', 'build', 'https://www.onetonline.org/link/summary/17-3023.01'),
(419, 'rae', 'Camera and Photographic Equipment Repairer', 'Repair and adjust cameras and photographic equipment, including commercial video and motion picture camera equipment.', 'build', 'https://www.onetonline.org/link/summary/49-9061.00'),
(420, 'res', 'Carpenter', 'Construct, erect, install, or repair structures and fixtures made of wood, such as concrete forms; building frameworks, including partitions, joists, studding, and rafters; and wood stairways, window and door frames, and hardwood floors. May also install cabinets, siding, drywall and batt or roll insulation. Includes brattice builders who build doors or brattices (ventilation walls or partitions) in underground passageways.', 'build', 'https://www.onetonline.org/link/summary/47-2031.00'),
(421, 'rac', 'Carpenter', 'Construct, erect, install, or repair structures and fixtures made of wood, such as concrete forms; building frameworks, including partitions, joists, studding, and rafters; and wood stairways, window and door frames, and hardwood floors. May also install cabinets, siding, drywall and batt or roll insulation. Includes brattice builders who build doors or brattices (ventilation walls or partitions) in underground passageways.', 'build', 'https://www.onetonline.org/link/summary/47-2031.00'),
(422, 'rse', 'Central Office and PBX Installer and Repairer', 'Install, set-up, rearrange, or remove switching, distribution, routing, and dialing equipment used in central offices or headends. Service or repair telephone, cable television, Internet, and other communications equipment on customers\' property. May install communications equipment or communications wiring in buildings.', 'build', 'https://www.onetonline.org/link/summary/49-2022.00'),
(423, 'ric', 'Civil Engineer', 'Perform engineering duties in planning, designing, and overseeing construction and maintenance of building structures, and facilities, such as roads, railroads, airports, bridges, harbors, channels, dams, irrigation projects, pipelines, power plants, and water and sewage systems.', 'build', 'https://www.onetonline.org/link/summary/17-2051.00'),
(424, 'rcs', 'Coil Winder, Taper, and Finisher', 'Wind wire coils used in electrical components, such as resistors and transformers, and in electrical equipment and instruments, such as field cores, bobbins, armature cores, electrical motors, generators, and control equipment.', 'build', 'https://www.onetonline.org/link/summary/51-2021.00'),
(425, 'rec', 'Comb.  Machine Tool Operator & Tender', 'Set up, operate, or tend more than one type of cutting or forming machine tool or robot.', 'build', 'https://www.onetonline.org/link/summary/51-4081.00'),
(426, 'rie', 'Combination Machine Tool Setter and Operator, Metal and Plastic', 'Set up, operate, or tend more than one type of cutting or forming machine tool or robot.', 'build', 'https://www.onetonline.org/link/summary/51-4081.00'),
(427, 'rce', 'Cost Estimator', 'Prepare cost estimates for product manufacturing, construction projects, or services to aid management in bidding on or determining price of product or service. May specialize according to particular service performed or type of product manufactured.', 'build', 'https://www.onetonline.org/link/summary/13-1051.00'),
(428, 'ris', 'Data Processing Equipment Repairer', 'Repair, maintain, or install computers, word processing systems, automated teller machines, and electronic office machines, such as duplicating and fax machines.', 'build', 'https://www.onetonline.org/link/summary/49-2011.00'),
(429, 'rce', 'Electrical and Electronic Assembler', 'Assemble or modify electrical or electronic equipment, such as computers, test equipment telemetering systems, electric motors, and batteries.', 'build', 'https://www.onetonline.org/link/summary/51-2022.00'),
(430, 'rse', 'Electrical Power-Line Installer and Repairer', 'Install or repair cables or wires used in electrical power or distribution systems. May erect poles and light or heavy duty transmission towers.', 'build', 'https://www.onetonline.org/link/summary/49-9051.00'),
(431, 'res', 'Electrician', 'Install, maintain, and repair electrical wiring, equipment, and fixtures. Ensure that work is in accordance with relevant codes. May install or service street lights, intercom systems, or electrical control systems.', 'build', 'https://www.onetonline.org/link/summary/47-2111.00'),
(432, 'ris', 'Electro-Mechanical Technician', 'Operate, test, maintain, or calibrate unmanned, automated, servo-mechanical, or electromechanical equipment. May operate unmanned submarines, aircraft, or other equipment at worksites, such as oil rigs, deep ocean exploration, or hazardous waste removal. May assist engineers in testing and designing robotics equipment.', 'build', 'https://www.onetonline.org/link/summary/17-3024.00'),
(433, 'rie', 'Electronics Engineering Technician', 'Lay out, build, test, troubleshoot, repair, and modify developmental and production electronic components, parts, equipment, and systems, such as computer equipment, missile control instrumentation, electron tubes, test equipment, and machine tool numerical controls, applying principles and theories of electronics, electrical circuitry, engineering mathematics, electronic and electrical testing, and physics. Usually work under direction of engineering staff.', 'build', 'https://www.onetonline.org/link/summary/17-3023.01'),
(434, 'ric', 'Electronics Repairer, Commercial and Industrial Equipment', 'Repair, test, adjust, or install electronic equipment, such as industrial controls, transmitters, and antennas.', 'build', 'https://www.onetonline.org/link/summary/49-2094.00'),
(435, 'rea', 'Film Laboratory Technician', 'Edit moving images on film, video, or other media. May edit or synchronize soundtracks with images.', 'build', 'https://www.onetonline.org/link/summary/27-4032.00'),
(436, 'rec', 'Film Laboratory Technician', 'Edit moving images on film, video, or other media. May edit or synchronize soundtracks with images.', 'build', 'https://www.onetonline.org/link/summary/27-4032.00'),
(437, 'res', 'Heating and Air Conditioning Mechanic', 'Install, service, or repair heating and air conditioning systems in residences or commercial establishments.', 'build', 'https://www.onetonline.org/link/summary/49-9021.01'),
(438, 'rie', 'Industrial Engineering Technician', 'Apply engineering theory and principles to problems of industrial layout or manufacturing production, usually under the direction of engineering staff. May perform time and motion studies on worker operations in a variety of industries for purposes such as establishing standard production rates or improving efficiency.', 'build', 'https://www.onetonline.org/link/summary/17-3026.00'),
(439, 'res', 'Machine Assembler (Engine & Other)', 'Construct, assemble, or rebuild machines, such as engines, turbines, and similar equipment used in such industries as construction, extraction, textiles, and paper manufacturing.', 'build', 'https://www.onetonline.org/link/summary/51-2031.00'),
(440, 'rei', 'Machinery Maintenance Mechanic', 'Repair, install, adjust, or maintain industrial production and processing machinery or refinery and pipeline distribution systems.', 'build', 'https://www.onetonline.org/link/summary/49-9041.00'),
(441, 'rie', 'Machinist', 'Set up and operate a variety of machine tools to produce precision parts and instruments. Includes precision instrument makers who fabricate, modify, or repair mechanical instruments. May also fabricate and modify parts to make or repair machine tools or maintain industrial machines, applying knowledge of mechanics, mathematics, metal properties, layout, and machining procedures.', 'build', 'https://www.onetonline.org/link/summary/51-4041.00'),
(442, 'rec', 'Manufactured Building and Mobile Home Installer', 'Move or install mobile homes or prefabricated buildings.', 'build', 'https://www.onetonline.org/link/summary/49-9095.00'),
(443, 'rci', 'Mechanical Drafter', 'Prepare detailed working diagrams of machinery and mechanical devices, including dimensions, fastening methods, and other engineering information.', 'build', 'https://www.onetonline.org/link/summary/17-3013.00'),
(444, 'rie', 'Mechanical Engineering Technician', 'Apply theory and principles of mechanical engineering to modify, develop, test, or calibrate machinery and equipment under direction of engineering staff or physical scientists.', 'build', 'https://www.onetonline.org/link/summary/17-3027.00'),
(445, 'rie', 'Mechanical Engineer', 'Perform engineering duties in planning and designing tools, engines, machines, and other mechanically functioning equipment. Oversee installation, operation, maintenance, and repair of equipment such as centralized heat, gas, water, and steam systems.', 'build', 'https://www.onetonline.org/link/summary/17-2141.00'),
(446, 'rei', 'Mechanical Inspector', 'Apply theory and principles of mechanical engineering to modify, develop, test, or calibrate machinery and equipment under direction of engineering staff or physical scientists.', 'build', 'https://www.onetonline.org/link/summary/17-3027.00'),
(447, 'rie', 'Medical and Clinical Laboratory Technician', 'Perform routine medical laboratory tests for the diagnosis, treatment, and prevention of disease. May work under the supervision of a medical technologist.', 'build', 'https://www.onetonline.org/link/summary/29-2012.00'),
(448, 'rai', 'Merchandise Displayer and Window Trimmer', 'Plan and erect commercial displays, such as those in windows and interiors of retail stores and at trade exhibitions.', 'build', 'https://www.onetonline.org/link/summary/27-1026.00'),
(449, 'rei', 'Mobile Heavy Equipment Mechanic', 'Diagnose, adjust, repair, or overhaul mobile mechanical, hydraulic, and pneumatic equipment, such as cranes, bulldozers, graders, and conveyors, used in construction, logging, and surface mining.', 'build', 'https://www.onetonline.org/link/summary/49-3042.00'),
(450, 'rsc', 'Musical Instrument Repairer and Tuner', 'Repair percussion, stringed, reed, or wind instruments. May specialize in one area, such as piano tuning.', 'build', 'https://www.onetonline.org/link/summary/49-9063.00'),
(451, 'rei', 'Numerical Control Machine Tool Operator and Tender, Metal or Plastic', 'Operate computer-controlled machines or robots to perform one or more machine functions on metal or plastic work pieces.', 'build', 'https://www.onetonline.org/link/summary/51-4011.00'),
(452, 'ris', 'Occupational Therapist', 'Assess, plan, organize, and participate in rehabilitative programs that help build or restore vocational, homemaking, and daily living skills, as well as general independence, to persons with disabilities or developmental delays.', 'build', 'https://www.onetonline.org/link/summary/29-1122.00'),
(453, 'ris', 'Optician, Dispensing', 'Design, measure, fit, and adapt lenses and frames for client according to written optical prescription or specification. Assist client with inserting, removing, and caring for contact lenses. Assist client with selecting frames. Measure customer for size of eyeglasses and coordinate frames with facial and eye measurements and optical prescription. Prepare work order for optical laboratory containing instructions for grinding and mounting lenses in frames. Verify exactness of finished lens spectacles. Adjust frame and lens position to fit client. May shape or reshape frames. Includes contact lens opticians.', 'build', 'https://www.onetonline.org/link/summary/29-2081.00'),
(454, 'rae', 'Percussion Instrument Repairer and Tuner', 'Repair percussion, stringed, reed, or wind instruments. May specialize in one area, such as piano tuning.', 'build', 'https://www.onetonline.org/link/summary/49-9063.00'),
(455, 'rae', 'Photoengraver', 'Photographs copy, develops negatives, and prepares photosensitized metal plates, such as copper, zinc, aluminum, and magnesium for use in printing, using photography and developing equipment and engravers\' handtools: Positions copy on copy board of darkroom camera and exposes film to copy.', 'build', 'https://dot-job-descriptions.careerplanner.com/PHOTOENGRAVER.cfm'),
(456, 'ria', 'Photographer', 'Photograph people, landscapes, merchandise, or other subjects, using digital or film cameras and equipment. May develop negatives or use computer software to produce finished images and prints. Includes scientific photographers, aerial photographers, and photojournalists.', 'build', 'https://www.onetonline.org/link/summary/27-4021.00'),
(457, 'rse', 'Police Patrol Officer', 'Patrol assigned area to enforce laws and ordinances, regulate traffic, control crowds, prevent crime, and arrest violators.\r\n\r\n', 'build', 'https://www.onetonline.org/link/summary/33-3051.01');
INSERT INTO `code` (`id`, `code`, `occupation`, `description`, `type`, `link`) VALUES
(458, 'rsc', 'Police Patrol Officer', 'Patrol assigned area to enforce laws and ordinances, regulate traffic, control crowds, prevent crime, and arrest violators.\r\n\r\n', 'build', 'https://www.onetonline.org/link/summary/33-3051.01'),
(459, 'rce', 'Production Inspector', 'Inspect, test, sort, sample, or weigh nonagricultural raw materials or processed, machined, fabricated, or assembled parts or products for defects, wear, and deviations from specifications. May use precision measuring instruments and complex test equipment.', 'build', 'https://www.onetonline.org/link/summary/51-9061.00'),
(460, 'rci', 'Radiologic Technician', 'Maintain and use equipment and supplies necessary to demonstrate portions of the human body on x-ray film or fluoroscopic screen for diagnostic purposes.', 'build', 'https://www.onetonline.org/link/summary/29-2099.06'),
(461, 'ris', 'Screen Printing Machine Setter', 'Set up and operate digital, letterpress, lithographic, flexographic, gravure, or other printing machines. Includes short-run offset printing presses.', 'build', 'https://www.onetonline.org/link/summary/51-5112.00'),
(462, 'rie', 'Sheet Metal Worker', 'Fabricate, assemble, install, and repair sheet metal products and equipment, such as ducts, control boxes, drainpipes, and furnace casings. Work may involve any of the following: setting up and operating fabricating machines to cut, bend, and straighten sheet metal; shaping metal over anvils, blocks, or forms using hammer; operating soldering and welding equipment to join sheet metal parts; or inspecting, assembling, and smoothing seams and joints of burred surfaces. Includes sheet metal duct installers who install prefabricated sheet metal ducts used for heating, air conditioning, or other purposes.', 'build', 'https://www.onetonline.org/link/summary/47-2211.00'),
(463, 'rec', 'Ship Engineer', 'Supervise and coordinate activities of crew engaged in operating and maintaining engines, boilers, deck machinery, and electrical, sanitary, and refrigeration equipment aboard ship.', 'build', 'https://www.onetonline.org/link/summary/53-5031.00'),
(464, 'rac', 'Stonemason', 'Build stone structures, such as piers, walls, and abutments. Lay walks, curbstones, or special types of masonry for vats, tanks, and floors.', 'build', 'https://www.onetonline.org/link/summary/47-2022.00'),
(465, 'res', 'Supervisor (Construction Worker)', 'Directly supervise and coordinate activities of construction or extraction workers.\r\n\r\n', 'build', 'https://www.onetonline.org/link/summary/47-1011.00'),
(466, 'res', 'Supervisor or Manager, Production & Operating Workers', 'Directly supervise and coordinate the activities of production and operating workers, such as inspectors, precision workers, machine setters and operators, assemblers, fabricators, and plant and system operators.', 'build', 'https://www.onetonline.org/link/summary/51-1011.00'),
(467, 'ris', 'Telephone and Cable TV Installer and Repairer', 'Install, set-up, rearrange, or remove switching, distribution, routing, and dialing equipment used in central offices or headends. Service or repair telephone, cable television, Internet, and other communications equipment on customers\' property. May install communications equipment or communications wiring in buildings.', 'build', 'https://www.onetonline.org/link/summary/49-2022.00'),
(468, 'rce', 'Textile Machine Operator', 'Set up, operate, or tend machines that cut textiles.', 'build', 'https://www.onetonline.org/link/summary/51-6062.00'),
(469, 'rie', 'Tool and Die Maker', 'Analyze specifications, lay out metal stock, set up and operate machine tools, and fit and assemble parts to make and repair dies, cutting tools, jigs, fixtures, gauges, and machinists\' hand tools.', 'build', 'https://www.onetonline.org/link/summary/51-4111.00'),
(470, 'rie', 'Welder and Cutter', 'Use hand-welding or flame-cutting equipment to weld or join metal components or to fill holes, indentations, or seams of fabricated metal products.', 'build', 'https://www.onetonline.org/link/summary/51-4121.06'),
(471, 'ecs', 'First-Line Supervisors of Retail Sales Workers', 'Directly supervise and coordinate activities of retail sales workers in an establishment or department. Duties may include management functions, such as purchasing, budgeting, accounting, and personnel work, in addition to supervisory duties.', 'business_center', 'https://careerzone.ny.gov/views/careerzone/search/occupation/occupationProfile.jsf#.WzmYnWpua70'),
(472, 'ecs', 'General and Operations Managers', 'Plan, direct, or coordinate the operations of public or private sector organizations. Duties and responsibilities include formulating policies, managing daily operations, and planning the use of materials and human resources, but are too diverse and general in nature to be classified in any one functional area of management or administration, such as personnel, purchasing, or administrative services.', 'business_center', 'https://careerzone.ny.gov/views/careerzone/search/occupation/occupationProfile.jsf#.WzmZiWpua70'),
(473, 'ecs', 'Lodging Managers', 'Plan, direct, or coordinate activities of an organization or department that provides lodging and other accommodations.', 'business_center', 'https://careerzone.ny.gov/views/careerzone/search/occupation/occupationProfile.jsf#.WzmZvmpua70'),
(474, 'ecs', 'Compensation and Benefits Managers', 'Plan, direct, or coordinate compensation and benefits activities of an organization.', 'business_center', 'https://careerzone.ny.gov/views/careerzone/search/occupation/occupationProfile.jsf#.WzmaSGpua70'),
(475, 'ecs', 'First-Line Supervisors of Non-Retail Sales Workers', 'Directly supervise and coordinate activities of sales workers other than retail sales workers. May perform duties such as budgeting, accounting, and personnel work, in addition to supervisory duties.', 'business_center', 'https://careerzone.ny.gov/views/careerzone/search/occupation/occupationProfile.jsf#.WzmahWpua70'),
(476, 'ecs', 'Education Administrators, Postsecondary', 'Plan, direct, or coordinate research, instructional, student administration and services, and other educational activities at postsecondary institutions, including universities, colleges, and junior and community colleges.', 'business_center', 'https://careerzone.ny.gov/views/careerzone/search/occupation/occupationProfile.jsf#.Wzman2pua70'),
(477, 'ecs', 'Medical and Health Services Managers', 'Plan, direct, or coordinate medical and health services in hospitals, clinics, managed care organizations, public health agencies, or similar organizations.', 'business_center', 'https://careerzone.ny.gov/views/careerzone/search/occupation/occupationProfile.jsf#.Wzmavmpua70'),
(478, 'cai', 'Medical Records and Health Information Technician', 'Compile, process, and maintain medical records of hospital and clinic patients in a manner consistent with medical, administrative, ethical, legal, and regulatory requirements of the health care system. Process, maintain, compile, and report patient information for health requirements and standards in a manner consistent with the healthcare industry\'s numerical coding system.', 'description', '	https://www.onetonline.org/link/summary/29-2071.00'),
(479, 'cae', 'Insurance Underwriter', 'Review individual applications for insurance to evaluate degree of risk involved and determine acceptance of applications.', 'description', 'https://www.onetonline.org/link/summary/13-2053.00'),
(480, 'cis', 'Audio/Video Equipment Technician', 'Set up, or set up and operate audio and video equipment including microphones, sound speakers, video screens, projectors, video monitors, recording equipment, connecting wires and cables, sound and mixing boards, and related electronic equipment for concerts, sports events, meetings and conventions, presentations, and news conferences. May also set up and operate associated spotlights and other custom lighting systems.', 'description', 'https://www.onetonline.org/link/summary/27-4011.00');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `user_id` int(11) NOT NULL,
  `contact_user_id` int(11) NOT NULL,
  `convo_name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `o` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`user_id`, `contact_user_id`, `convo_name`, `timestamp`, `o`) VALUES
(270, 234, '6kkcx97gjrejvr6e', '2019-01-27 06:56:01', 57),
(234, 270, '6kkcx97gjrejvr6e', '2019-01-27 06:56:01', 58),
(270, 256, '6kkcx97gjrejvr6f', '2019-01-27 06:56:01', 59),
(256, 270, '6kkcx97gjrejvr6f', '2019-01-27 06:56:01', 60),
(271, 234, '6kkcx3x8jrtw8vaz', '2019-02-07 00:38:41', 61),
(234, 271, '6kkcx3x8jrtw8vaz', '2019-02-07 00:38:41', 62),
(271, 256, '6kkcx3x8jrtw8vb0', '2019-02-07 00:38:41', 63),
(256, 271, '6kkcx3x8jrtw8vb0', '2019-02-07 00:38:41', 64);

-- --------------------------------------------------------

--
-- Table structure for table `convo_ptcpant`
--

CREATE TABLE `convo_ptcpant` (
  `convo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `convo_ptcpant`
--

INSERT INTO `convo_ptcpant` (`convo_id`, `user_id`) VALUES
(1, 259),
(1, 234),
(2, 260),
(2, 234),
(3, 260),
(3, 256),
(4, 261),
(4, 234),
(5, 261),
(5, 256),
(6, 262),
(6, 234),
(7, 262),
(7, 256),
(8, 263),
(8, 234),
(9, 263),
(9, 256),
(10, 264),
(10, 234),
(11, 264),
(11, 256),
(12, 265),
(12, 234),
(13, 265),
(13, 256),
(14, 266),
(14, 234),
(15, 266),
(15, 256),
(16, 269),
(16, 234),
(17, 269),
(17, 256),
(18, 270),
(18, 234),
(19, 270),
(19, 256),
(20, 271),
(20, 234),
(21, 271),
(21, 256);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `location` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `time_from` varchar(255) NOT NULL,
  `time_to` varchar(255) NOT NULL,
  `poster_url` varchar(255) NOT NULL,
  `likes_counter` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `name`, `location`, `date`, `time_from`, `time_to`, `poster_url`, `likes_counter`, `created_at`) VALUES
(24, 'hey', 'qwe', 'February 03 2019', '01:35 PM', '06:20 AM', 'public/posters/15504997932313.jpg', 0, '2019-02-18 14:23:13'),
(25, 'Event 1', 'Gordon College', 'March 02 2019', '12:05 AM', '09:20 AM', 'public/posters/1550555640465boi.jpg', 0, '2019-02-19 05:54:00'),
(26, 'Event 2', 'Olongapo City, SM', 'March 17 2019', '03:25 AM', '08:20 AM', 'public/posters/1550555669266FVJEG19O26AP9HD82FP3.jpg', 0, '2019-02-19 05:54:29'),
(27, 'Event 3', 'Pampangga', 'April 14 2019', '10:20 AM', '05:05 AM', 'public/posters/1550555694873maxresdefault (1).jpg', 0, '2019-02-19 05:54:54'),
(28, 'Hey', 'QWqwq', 'March 29 2019', '12:45 PM', '09:50 PM', 'public/posters/155141478228412.jpg', 0, '2019-03-01 04:33:02'),
(29, 'dwqdw', 'dqwdwq', 'March 16 2019', '04:45 PM', '09:50 PM', 'public/posters/1551414887563excited umuwe.jpg', 0, '2019-03-01 04:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `user_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `letter` text NOT NULL,
  `word` text NOT NULL,
  `e` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`user_id`, `value`, `letter`, `word`, `e`, `timestamp`) VALUES
(236, 36, 'R', 'Realistic', 25, '2019-03-01 04:48:37'),
(236, 38, 'I', 'Investigative', 26, '2019-03-01 04:48:37'),
(236, 39, 'A', 'Artistic', 27, '2019-03-01 04:48:37'),
(236, 41, 'S', 'Social', 28, '2019-03-01 04:48:37'),
(236, 33, 'E', 'Enterprising', 29, '2019-03-01 04:48:37'),
(236, 34, 'C', 'Convensional', 30, '2019-03-01 04:48:37'),
(238, 39, 'R', 'Realistic', 31, '2019-03-01 04:48:37'),
(238, 29, 'I', 'Investigative', 32, '2019-03-01 04:48:37'),
(238, 36, 'A', 'Artistic', 33, '2019-03-01 04:48:37'),
(238, 32, 'S', 'Social', 34, '2019-03-01 04:48:37'),
(238, 27, 'E', 'Enterprising', 35, '2019-03-01 04:48:37'),
(238, 26, 'C', 'Convensional', 36, '2019-03-01 04:48:37'),
(239, 36, 'R', 'Realistic', 37, '2019-03-01 04:48:37'),
(239, 29, 'I', 'Investigative', 38, '2019-03-01 04:48:37'),
(239, 29, 'A', 'Artistic', 39, '2019-03-01 04:48:37'),
(239, 35, 'S', 'Social', 40, '2019-03-01 04:48:37'),
(239, 35, 'E', 'Enterprising', 41, '2019-03-01 04:48:37'),
(239, 28, 'C', 'Convensional', 42, '2019-03-01 04:48:37'),
(240, 31, 'R', 'Realistic', 43, '2019-03-01 04:48:37'),
(240, 24, 'I', 'Investigative', 44, '2019-03-01 04:48:37'),
(240, 33, 'A', 'Artistic', 45, '2019-03-01 04:48:37'),
(240, 28, 'S', 'Social', 46, '2019-03-01 04:48:37'),
(240, 30, 'E', 'Enterprising', 47, '2019-03-01 04:48:37'),
(240, 25, 'C', 'Convensional', 48, '2019-03-01 04:48:37'),
(241, 27, 'R', 'Realistic', 49, '2019-03-01 04:48:37'),
(241, 29, 'I', 'Investigative', 50, '2019-03-01 04:48:37'),
(241, 27, 'A', 'Artistic', 51, '2019-03-01 04:48:37'),
(241, 28, 'S', 'Social', 52, '2019-03-01 04:48:37'),
(241, 28, 'E', 'Enterprising', 53, '2019-03-01 04:48:37'),
(241, 28, 'C', 'Convensional', 54, '2019-03-01 04:48:37'),
(237, 33, 'R', 'Realistic', 55, '2019-03-01 04:48:37'),
(237, 34, 'I', 'Investigative', 56, '2019-03-01 04:48:37'),
(237, 35, 'A', 'Artistic', 57, '2019-03-01 04:48:37'),
(237, 30, 'S', 'Social', 58, '2019-03-01 04:48:37'),
(237, 37, 'E', 'Enterprising', 59, '2019-03-01 04:48:37'),
(237, 36, 'C', 'Convensional', 60, '2019-03-01 04:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `liked_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `event_id`, `liked_at`) VALUES
(207, 24, '2019-02-19 06:16:36'),
(207, 25, '2019-02-19 06:16:36'),
(208, 24, '2019-02-19 06:17:20'),
(209, 24, '2019-02-19 06:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `convo_name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `message`, `user_id`, `convo_name`, `timestamp`) VALUES
(3, 'sq', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:10:48'),
(4, 'sqsss', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:10:57'),
(5, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:44'),
(6, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:44'),
(7, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:45'),
(8, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:45'),
(9, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:45'),
(10, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:45'),
(11, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:45'),
(12, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:46'),
(13, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:46'),
(14, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:46'),
(15, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:46'),
(16, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:46'),
(17, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:46'),
(18, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:46'),
(19, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:47'),
(20, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:47'),
(21, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:47'),
(22, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:47'),
(23, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:47'),
(24, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:47'),
(25, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:47'),
(26, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:47'),
(27, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:48'),
(28, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:48'),
(29, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:48'),
(30, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:48'),
(31, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:48'),
(32, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:48'),
(33, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:48'),
(34, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:49'),
(35, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:49'),
(36, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:49'),
(37, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:49'),
(38, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:49'),
(39, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:49'),
(40, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:49'),
(41, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:50'),
(42, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:50'),
(43, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:50'),
(44, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:50'),
(45, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:50'),
(46, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:51'),
(47, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:51'),
(48, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:51'),
(49, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:51'),
(50, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:51'),
(51, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:51'),
(52, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:52'),
(53, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:52'),
(54, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:52'),
(55, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:52'),
(56, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:52'),
(57, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:52'),
(58, 'dw', 270, '6kkcx97gjrejvr6e', '2019-01-27 09:25:52'),
(59, 'hello', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:47:31'),
(60, 'hello', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:48:52'),
(61, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:48:59'),
(62, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:49:08'),
(63, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:49:53'),
(64, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:49:53'),
(65, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:49:56'),
(66, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:50:07'),
(67, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:50:18'),
(68, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:50:50'),
(69, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:50:54'),
(70, 'realtime?', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:51:02'),
(71, 'hey bro', 234, '6kkcx97gjrejvr6e', '2019-01-27 11:51:17'),
(72, 'u doin good nibba?', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:51:31'),
(73, 'yes bro', 234, '6kkcx97gjrejvr6e', '2019-01-27 11:51:39'),
(74, 'This is some goodshit bro', 234, '6kkcx97gjrejvr6e', '2019-01-27 11:52:35'),
(75, 'lol', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:52:42'),
(76, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:52:54'),
(77, 'realtime?', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:53:02'),
(78, 'hey bro', 234, '6kkcx97gjrejvr6e', '2019-01-27 11:53:17'),
(79, 'u doin good nibba?', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:53:31'),
(80, 'yes bro', 234, '6kkcx97gjrejvr6e', '2019-01-27 11:53:39'),
(81, 'This is some goodshit bro', 234, '6kkcx97gjrejvr6e', '2019-01-27 11:54:35'),
(82, 'lol', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:54:42'),
(83, 'why tho', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:57:16'),
(84, 'why tho', 270, '6kkcx97gjrejvr6e', '2019-01-27 11:57:50'),
(85, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 12:06:18'),
(86, 'duplicate?', 234, '6kkcx97gjrejvr6e', '2019-01-27 12:06:32'),
(87, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-27 12:08:18'),
(88, 'duplicate?', 234, '6kkcx97gjrejvr6e', '2019-01-27 12:08:32'),
(89, 'wtf', 270, '6kkcx97gjrejvr6e', '2019-01-27 12:09:02'),
(90, 'wtf', 270, '6kkcx97gjrejvr6e', '2019-01-27 12:11:02'),
(91, 'd2d2', 270, '6kkcx97gjrejvr6e', '2019-01-27 12:13:35'),
(92, 's', 234, '6kkcx97gjrejvr6e', '2019-01-27 12:19:49'),
(93, 'hey', 234, '6kkcx97gjrejvr6e', '2019-01-27 12:21:49'),
(94, 's', 234, '6kkcx97gjrejvr6e', '2019-01-27 12:24:13'),
(95, 's', 234, '6kkcx97gjrejvr6e', '2019-01-27 12:26:13'),
(96, 'hey', 234, '6kkcx97gjrejvr6e', '2019-01-27 13:36:47'),
(97, 'hey', 234, '6kkcx97gjrejvr6e', '2019-01-27 13:36:54'),
(98, 'wtf?', 234, '6kkcx97gjrejvr6e', '2019-01-27 13:37:08'),
(99, 'hey', 234, '6kkcx97gjrejvr6e', '2019-01-27 13:37:53'),
(100, 'x', 234, '6kkcx97gjrejvr6e', '2019-01-27 13:43:07'),
(101, 'hey', 234, '6kkcx97gjrejvr6e', '2019-01-27 13:53:02'),
(102, 'hey', 234, '6kkcx97gjrejvr6e', '2019-01-27 13:55:02'),
(103, 'new?', 234, '6kkcx97gjrejvr6e', '2019-01-27 13:56:17'),
(104, '', 234, '6kkcx97gjrejvr6e', '2019-01-27 13:59:16'),
(105, '', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:00:22'),
(106, 'wtf', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:00:28'),
(107, 'd', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:01:20'),
(108, '', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:02:22'),
(109, 'wtf', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:02:28'),
(110, 'xd', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:03:05'),
(111, 'zulul', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:03:14'),
(112, 'zululhey', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:03:18'),
(113, 'xd', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:05:05'),
(114, 'zulul', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:05:14'),
(115, 'new', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:07:53'),
(116, 'x', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:09:53'),
(117, 'wtf', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:09:58'),
(118, 'o', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:10:03'),
(119, 'ok', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:10:06'),
(120, 'ok', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:10:09'),
(121, 'ok', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:10:13'),
(122, 'ok', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:10:47'),
(123, 'o', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:10:47'),
(124, 'x', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:10:47'),
(125, 'ok', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:10:47'),
(126, 'ok', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:10:47'),
(127, 'ok', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:10:47'),
(128, 'wtf', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:11:16'),
(129, 'wtfx', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:11:38'),
(130, 'new', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:13:10'),
(131, 'new', 234, '6kkcx97gjrejvr6e', '2019-01-27 14:15:10'),
(132, 'x', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:35:02'),
(133, '', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:35:10'),
(134, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:35:31'),
(135, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:35:34'),
(136, 'c', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:37:10'),
(137, '', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:37:20'),
(138, 'wtf', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:37:24'),
(139, '1', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:37:59'),
(140, '1', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:39:59'),
(141, 'x', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:45:31'),
(142, 'w', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:56:31'),
(143, 'wf', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:56:34'),
(144, 'w', 270, '6kkcx97gjrejvr6e', '2019-01-28 10:58:31'),
(145, 'ummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:14:03'),
(146, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:19:27'),
(147, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:21:27'),
(148, 'wtf?', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:32:14'),
(149, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:32:20'),
(150, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:32:56'),
(151, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:32:59'),
(152, 'wtf?', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:34:14'),
(153, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:34:20'),
(154, 'hey', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:34:56'),
(155, 'wtf', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:37:20'),
(156, '0', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:37:34'),
(157, '0', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:37:38'),
(158, '0', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:38:32'),
(159, 'wtf', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:39:20'),
(160, '0', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:39:22'),
(161, '0', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:39:34'),
(162, '', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:39:43'),
(163, 'wtf?', 270, '6kkcx97gjrejvr6e', '2019-01-28 11:39:48'),
(164, 'x', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 00:55:05'),
(165, 'hey', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:21:21'),
(166, 'try', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:21:57'),
(167, 'try', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:22:13'),
(168, 'hey', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:22:17'),
(169, 'hey', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:22:24'),
(170, 'z', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:22:37'),
(171, 'zx', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:22:41'),
(172, 'z', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:22:54'),
(173, 'testing', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:23:08'),
(174, 'is it working?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:23:18'),
(175, 'testing', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:25:08'),
(176, 'is it working?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 01:25:18'),
(177, 'hey', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 01:26:07'),
(178, 'zx', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 01:26:35'),
(179, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 01:27:33'),
(180, '123', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 01:28:40'),
(181, 's', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 01:30:11'),
(182, 's', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 01:30:13'),
(183, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 03:15:16'),
(184, 'hey', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:13:32'),
(185, 'z', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:14:24'),
(186, 'v', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:15:09'),
(187, 'v', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:15:31'),
(188, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:15:34'),
(189, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:15:38'),
(190, 'wadafak?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:15:44'),
(191, 'zulul?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:15:49'),
(192, 'z', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:16:14'),
(193, 'z', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:16:55'),
(194, 'am i live?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:17:13'),
(195, 'hello?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:17:56'),
(196, 'hello? wtf', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:18:02'),
(197, '123', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:19:01'),
(198, '1', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:19:53'),
(199, '1zczxc', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:20:01'),
(200, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:21:04'),
(201, 'xewqewqe', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:21:17'),
(202, 'z', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:22:08'),
(203, 'zx', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:22:19'),
(204, 'xz', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:23:05'),
(205, 'xzxxx', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:23:16'),
(206, '??????', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:23:27'),
(207, 'xz', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:25:05'),
(208, 'xzxxx', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:25:16'),
(209, '??????', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:25:27'),
(210, 'fds', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:30:14'),
(211, 'wadfaK/', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:30:19'),
(212, 'hello', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:31:07'),
(213, 'fds', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:32:14'),
(214, 'wadfaK/', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:32:19'),
(215, 'hello', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:33:07'),
(216, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:44:32'),
(217, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:46:32'),
(218, 's', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:48:13'),
(219, 'hey?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:48:36'),
(220, 'w', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:49:58'),
(221, 'wewe', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:50:00'),
(222, 'i', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:56:52'),
(223, 'i', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:57:13'),
(224, 'i', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:57:32'),
(225, 'animation is cool', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:58:14'),
(226, '10', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:59:53'),
(227, '10', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 04:59:56'),
(228, 'w', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:00:49'),
(229, 'i', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:01:35'),
(230, 'iuiu', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:01:38'),
(231, 'df', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:03:23'),
(232, 'w', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:04:46'),
(233, 'ew', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:05:00'),
(234, 's', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:06:13'),
(235, 'sdsds', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:06:16'),
(236, 's', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:07:40'),
(237, 'sewew', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:07:49'),
(238, 'wow animation?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:07:54'),
(239, 'wow animation?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:08:01'),
(240, 'hjey', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:08:57'),
(241, 'is it animating?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:09:05'),
(242, 'is it animating?e', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:09:09'),
(243, 'is it animating?e', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:09:17'),
(244, 's', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:10:26'),
(245, 'sqw', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:10:34'),
(246, 'z', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:11:20'),
(247, 'wtf?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:11:25'),
(248, 'z', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:13:20'),
(249, 'wtf?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:13:25'),
(250, 'hey', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:22:49'),
(251, 'hey', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:22:59'),
(252, 'hey', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:24:49'),
(253, 'hey', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:24:59'),
(254, 'heyxx', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:25:27'),
(255, 'heyxxzxzxzxz', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:25:36'),
(256, 'l', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:26:14'),
(257, 'x', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:27:56'),
(258, 'asd', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:28:32'),
(259, 'hey', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:29:26'),
(260, 'hey lol', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:29:33'),
(261, 'hello', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:29:41'),
(262, 'oh its working?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:30:00'),
(263, 'hello again?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:30:25'),
(264, 'hey', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:31:26'),
(265, 'hey lol', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:31:33'),
(266, 'wer', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:31:48'),
(267, 'oh its working?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:31:54'),
(268, 'oh its working?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:32:00'),
(269, 'xcv', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:32:48'),
(270, 'xcvdf', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:32:52'),
(271, 'xcvdf', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:33:26'),
(272, 'xcvdf', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:33:33'),
(273, 'xcvdf', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:33:54'),
(274, 'oh its working?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:34:00'),
(275, 'xcv', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:34:09'),
(276, 'oh its working?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:34:09'),
(277, 'xcvdf', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:34:09'),
(278, 'iii', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:34:22'),
(279, 'hello again?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:34:29'),
(280, 'yt', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:35:04'),
(281, 'ytww', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:35:13'),
(282, 'ytwweq', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:35:26'),
(283, 'kl', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:35:56'),
(284, 'kl;', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:35:58'),
(285, 'kl;klkl', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:36:01'),
(286, 'kl;klkluuiu', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:36:05'),
(287, 'iiiqwe', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:36:10'),
(288, 'iii', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:36:22'),
(289, 'kl;', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:37:07'),
(290, 'iii', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:37:07'),
(291, 'wq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:37:31'),
(292, 'wtf', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:37:37'),
(293, 's', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:38:32'),
(294, 'q', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:38:35'),
(295, 'sss', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:38:41'),
(296, 'qsqsq', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:38:44'),
(297, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:39:07'),
(298, 'wq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:39:31'),
(299, 's', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:40:32'),
(300, 'sss', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:40:41'),
(301, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:41:07'),
(302, 'wq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:41:31'),
(303, 'rew', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:42:12'),
(304, 'qweqw', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:43:24'),
(305, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:43:31'),
(306, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:43:31'),
(307, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:43:32'),
(308, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:43:32'),
(309, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:43:32'),
(310, 'ssssqsqdwdqdwq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:24'),
(311, 'ssssqsqdwdqdwq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:31'),
(312, 'ssssqsqdwdqdwq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:31'),
(313, 'ssssqsqdwdqdwq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:32'),
(314, 'qweqw', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:32'),
(315, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:32'),
(316, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:37'),
(317, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:37'),
(318, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:37'),
(319, 'qweqweweqweq', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:37'),
(320, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:37'),
(321, 'qweqw', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:45:37'),
(322, 'ssssqsqdwdqdwq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:46:17'),
(323, 'ssssqsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:46:17'),
(324, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:46:27'),
(325, 'erere', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:46:33'),
(326, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:46:36'),
(327, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:46:37'),
(328, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:46:37'),
(329, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:46:37'),
(330, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:48:27'),
(331, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:48:33'),
(332, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:48:36'),
(333, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:48:37'),
(334, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:48:37'),
(335, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:48:37'),
(336, 'erere', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:49:14'),
(337, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:49:14'),
(338, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:49:14'),
(339, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:49:14'),
(340, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:49:14'),
(341, 'fsdf', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:49:14'),
(342, 'dont flood', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:49:27'),
(343, 'okay sorry', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:49:33'),
(344, 'waduhek', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:49:45'),
(345, 'is it okay?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:50:17'),
(346, 'is it okay? sorry okay?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:50:24'),
(347, 'dont flood', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:51:27'),
(348, 'hey', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:51:33'),
(349, 'are you okay?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:51:40'),
(350, 'yes?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:51:50'),
(351, 'is it okay?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:52:17'),
(352, 'is it okay? sorry okay?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:52:24'),
(353, 'omg', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:53:27'),
(354, 'hey', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:53:33'),
(355, 'are you okay?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:53:40'),
(356, 'yes?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:53:50'),
(357, 'is it okay?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:54:17'),
(358, 'yes?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:54:24'),
(359, 'is it okay? sorry okay?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:55:27'),
(360, 'omg', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:55:33'),
(361, 'hey', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:55:40'),
(362, 'are you okay?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:55:50'),
(363, 'yes?', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:55:55'),
(364, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 05:57:50'),
(365, 'lol?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:58:08'),
(366, 'lol?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:58:14'),
(367, 'lol?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:58:14'),
(368, 'lol?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:58:14'),
(369, 'lol?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:58:14'),
(370, 'lol?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 05:59:50'),
(371, 'lol?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 06:00:08'),
(372, 'lol?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 06:00:14'),
(373, 'lol?sdsds', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 06:00:14'),
(374, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 06:00:14'),
(375, 'lol?', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 06:00:14'),
(376, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 06:02:02'),
(377, 'dw', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 06:02:48'),
(378, 'dw', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 06:03:24'),
(379, 'x', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 06:03:24'),
(380, 'dwsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 06:03:29'),
(381, 'xsq', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 06:03:47'),
(382, 'xsq', 271, '6kkcx3x8jrtw8vaz', '2019-02-07 06:03:56'),
(383, 'dwsq', 234, '6kkcx3x8jrtw8vaz', '2019-02-07 06:03:56'),
(384, 's', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:26:33'),
(385, 'testing', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:27:27'),
(386, 'test', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:27:54'),
(387, 'test', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:28:29'),
(388, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:29:56'),
(389, 'qwe', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:30:10'),
(390, 'qwex', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:30:20'),
(391, 'qwexhe', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:30:22'),
(392, 'qwexher', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:30:25'),
(393, 'testing?', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:30:30'),
(394, 'testing?qwe', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:30:32'),
(395, 'testing?qwehey', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:32:10'),
(396, 'z', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:32:26'),
(397, 'z', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:32:43'),
(398, 's', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:37:32'),
(399, 'sqw', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:37:36'),
(400, 'sqwewq', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:37:37'),
(401, 'test', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:37:52'),
(402, 'testtest', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:37:56'),
(403, 'testtestqwe', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:38:00'),
(404, 'testtestqweew', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:39:32'),
(405, 'testtestqweewew', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:39:36'),
(406, 's', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:39:37'),
(407, 'testtestqweewewqw', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:39:52'),
(408, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:39:56'),
(409, 'test', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:39:59'),
(410, 's', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:39:59'),
(411, 'testtestqwe', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:39:59'),
(412, 'heywe', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:40:03'),
(413, 'test', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:40:16'),
(414, 'tests', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:40:17'),
(415, 'tests', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:40:18'),
(416, 'tests', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:40:19'),
(417, 'tests', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:40:19'),
(418, 'tests', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:40:19'),
(419, 'tests', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:42:16'),
(420, 'tests', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:42:17'),
(421, 'testsdfsdsf', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:42:17'),
(422, 'test', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:42:17'),
(423, 'testsdf', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:42:17'),
(424, 'testsdfsdsf', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:42:33'),
(425, 's', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:55:37'),
(426, 'we', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:55:56'),
(427, 'we', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:56:05'),
(428, 'weqw', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:56:09'),
(429, 'weqwd', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:56:20'),
(430, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:56:23'),
(431, 'sd', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:56:25'),
(432, 'sdfd', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:57:56'),
(433, 'we', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:58:05'),
(434, 'we', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:58:09'),
(435, 'sdfddsf', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:58:20'),
(436, 'weqwd', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:58:23'),
(437, 'sd', 234, '6kkcx97gjrejvr6e', '2019-02-10 13:58:25'),
(438, 'we', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:00:05'),
(439, 'sdfddsf', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:02:35'),
(440, 'sdfddsf', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:02:38'),
(441, 'sdfddsf', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:04:35'),
(442, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:05:46'),
(443, 'heysdf', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:05:51'),
(444, 'dww', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:05:54'),
(445, 'dwwzxc', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:05:57'),
(446, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:06:07'),
(447, 'dww', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:06:07'),
(448, 'ew', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:06:38'),
(449, 'ewdw', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:06:42'),
(450, 'ew', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:06:48'),
(451, 'flood', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:07:00'),
(452, 'flood', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:07:01'),
(453, 'flood', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:07:02'),
(454, 'flood123', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:07:03'),
(455, 'flood123', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:07:04'),
(456, 'flood123', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:07:04'),
(457, 'flood123', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:00'),
(458, 'flood', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:01'),
(459, 'flood12323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:02'),
(460, 'flood12323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:03'),
(461, 'flood12323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:04'),
(462, 'flood12323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:04'),
(463, 'flood1232332323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:31'),
(464, 'flood1232332323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:31'),
(465, 'flood1232332323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:31'),
(466, 'flood1232332323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:31'),
(467, 'flood1232332323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:31'),
(468, 'flood1232332323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:31'),
(469, 'flood1232332323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:34'),
(470, 'flood1232332323', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:34'),
(471, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:40'),
(472, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:40'),
(473, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:41'),
(474, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:41'),
(475, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:41'),
(476, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:09:42'),
(477, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:10:42'),
(478, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:10:42'),
(479, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:10:42'),
(480, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:10:42'),
(481, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:10:42'),
(482, 'ge', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:10:42'),
(483, 'sd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:10:51'),
(484, 'sd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:10:56'),
(485, 'sd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:10:57'),
(486, 'sd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:11:03'),
(487, 'sd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:11:03'),
(488, 'd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:20'),
(489, 'd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:22'),
(490, 'dsfds', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:26'),
(491, 'dsfdssd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:28'),
(492, 'dsfdssddfs', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:30'),
(493, 'dsfdssddfsfsd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:31'),
(494, 'dsfdssddfsfsdfdsf', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:51'),
(495, 'dsfdssddfsfsdfdsffsdfdsf', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:51'),
(496, 'd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:51'),
(497, 'dsfds', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:51'),
(498, 'dsfdssddfsfsd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:51'),
(499, 'dsfdssddfsfsdfdsffsdfdsffdsfsd', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:12:51'),
(500, 'dsfdssddfsfsdfdsffsdfdsffdsfsdsqsq', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:14:20'),
(501, '1', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:14:28'),
(502, '12', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:14:30'),
(503, '123', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:14:31'),
(504, '1234', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:14:32'),
(505, '12345', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:14:33'),
(506, '123456', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:14:34'),
(507, '1234567', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:16:28'),
(508, '12345678', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:16:30'),
(509, '1', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:16:31'),
(510, '123456', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:16:34'),
(511, 'w23', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:25:16'),
(512, 'e', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:25:35'),
(513, 'e123', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:25:40'),
(514, 'e123qwe', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:25:44'),
(515, 'e123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:25:46'),
(516, 'e123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:25:46'),
(517, 'e123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:25:46'),
(518, 'e123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:27:35'),
(519, 'e123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:27:40'),
(520, 'e123qwewqeew', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:27:44'),
(521, 'e', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:27:46'),
(522, 'e123qwe', 234, '6kkcx97gjrejvr6e', '2019-02-10 14:27:46'),
(523, 'wq', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:21:58'),
(524, 'wqwq', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:22:11'),
(525, 'zx', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:22:24'),
(526, 'zxcxzc', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:22:43'),
(527, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:23:57'),
(528, 'heyhey', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:23:59'),
(529, 'heyheyzxc', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:24:01'),
(530, 'heyheyzxczxc', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:24:03'),
(531, 'heyheyzxczxc123', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:24:05'),
(532, 'heyheyzxczxc1234213', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:24:08'),
(533, 'heyheyzxczxc1234213qwe', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:25:57'),
(534, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:25:59'),
(535, 'heyheyzxczxc', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:26:03'),
(536, 'heyheyzxczxc1234213', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:26:08'),
(537, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:26:15'),
(538, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:26:19'),
(539, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:28:15'),
(540, 'sq', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:23'),
(541, 'sq', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:24'),
(542, 'sq', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:25'),
(543, 'sq', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:25'),
(544, 'sqzxc', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:26'),
(545, 'sqzxc', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:27'),
(546, 'sqzxc', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:56'),
(547, 'sq', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:56'),
(548, 'sqzxcsdasd', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:56'),
(549, 'sqzxcsdasd', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:56'),
(550, 'sqzxcsdasd', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:56'),
(551, 'sqzxcsdasd', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:31:56'),
(552, 'sqzxcsdasd232', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:33:56'),
(553, 'sq', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:33:56'),
(554, 'sqzxcsdasd', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:33:56'),
(555, 'sqzxcsdasd', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:33:56'),
(556, 'sqzxcsdasd', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:33:56'),
(557, 'sqzxcsdasd', 234, '6kkcx97gjrejvr6e', '2019-02-11 00:33:56'),
(558, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:15:53'),
(559, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:16:41'),
(560, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:13'),
(561, 'qwe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:47'),
(562, 'qwehey', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:50'),
(563, 'qwehey123', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:51'),
(564, 'qwehey123', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:51'),
(565, 'qwehey123', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:51'),
(566, 'qwehey123', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:52'),
(567, 'qwehey123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:53'),
(568, 'qwehey123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:53'),
(569, 'qwehey123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:53'),
(570, 'qwehey123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:53'),
(571, 'qwehey123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:54'),
(572, 'qwehey123qwewqe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:54'),
(573, 'qwehey123qwewqewewqe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:55'),
(574, 'qwehey123qwewqewewqe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:55'),
(575, 'qwehey123qwewqewewqe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:55'),
(576, 'qwehey123qwewqewewqe', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:55'),
(577, 'qwehey123qwewqewewqe2323', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:57'),
(578, 'qwehey123qwewqewewqe2323', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:57'),
(579, 'qwehey123qwewqewewqe2323', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:57'),
(580, 'ewqewq', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:58'),
(581, 'ewqewq', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:59'),
(582, 'ewqewq', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:59'),
(583, 'ewqewq', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:17:59'),
(584, 'ewqewqxzczx', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:18:00'),
(585, 'ewqewqxzczx', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:18:00'),
(586, 'ewqewqxzczx', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:18:00'),
(587, 'ewqewqxzczx', 234, '6kkcx97gjrejvr6e', '2019-02-11 01:18:01'),
(588, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-15 23:37:02'),
(589, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-15 23:37:38'),
(590, 'heyre', 234, '6kkcx97gjrejvr6e', '2019-02-15 23:37:42'),
(591, 'heyretrtr', 234, '6kkcx97gjrejvr6e', '2019-02-15 23:37:44'),
(592, 'e', 234, '6kkcx97gjrejvr6e', '2019-02-15 23:38:05'),
(593, 'eqwe', 234, '6kkcx97gjrejvr6e', '2019-02-15 23:38:09'),
(594, 'eqwedwdw', 234, '6kkcx97gjrejvr6e', '2019-02-15 23:38:12'),
(595, 'eqwedwdw', 234, '6kkcx3x8jrtw8vaz', '2019-02-15 23:38:41'),
(596, 'eqwedwdws', 234, '6kkcx3x8jrtw8vaz', '2019-02-15 23:38:43'),
(597, 'xx', 234, '6kkcx97gjrejvr6e', '2019-02-15 23:38:52'),
(598, 'xx', 234, '6kkcx3x8jrtw8vaz', '2019-02-15 23:39:06'),
(599, 'wer', 234, '6kkcx3x8jrtw8vaz', '2019-02-15 23:41:46'),
(600, 'werd', 234, '6kkcx3x8jrtw8vaz', '2019-02-15 23:41:58'),
(601, 'try', 234, '6kkcx3x8jrtw8vaz', '2019-02-15 23:48:19'),
(602, 's', 234, '6kkcx3x8jrtw8vaz', '2019-02-15 23:49:29'),
(603, 'hey', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:10:23'),
(604, 'hey', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:12:23'),
(605, 'hey', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:14:53'),
(606, 'heywtf?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:14:59'),
(607, 'heywtf?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:15:00'),
(608, 'can u stop?', 234, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:04'),
(609, 'yeah?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:11'),
(610, 'stfu dude', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:21'),
(611, 'stfu dude', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:21'),
(612, 'stfu dude', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:21'),
(613, 'stfu dude', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:22'),
(614, 'stfu dude', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:22'),
(615, 'stfu dude', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:23'),
(616, 'stfu dude', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:23'),
(617, 'stfu dude', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:23'),
(618, 'stfu dude', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:24'),
(619, 'stfu dude', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:24'),
(620, 'lmfao', 234, '6kkcx3x8jrtw8vaz', '2019-02-16 00:29:38'),
(621, 'hey again?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:31:13'),
(622, 'sory lfmao', 234, '6kkcx3x8jrtw8vaz', '2019-02-16 00:31:19'),
(623, 'you still there bro?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:38:45'),
(624, 'yep', 234, '6kkcx97gjrejvr6e', '2019-02-16 00:38:58'),
(625, 'you still there bro?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:39:12'),
(626, 'hey', 234, '6kkcx97gjrejvr6e', '2019-02-16 00:40:01'),
(627, 'sdf', 234, '6kkcx97gjrejvr6e', '2019-02-16 00:41:04'),
(628, 'you still there bro?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:42:41'),
(629, 'you still there bro?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:46:06'),
(630, 'you still there bro?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:46:17'),
(631, 'hey', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:46:26'),
(632, 'hey', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:46:29'),
(633, 'can u stfu', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 00:46:40'),
(634, 'sorry dude?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 02:46:47'),
(635, 'okay i forgive u', 234, '6kkcx3x8jrtw8vaz', '2019-02-16 02:46:56'),
(636, 'really?', 271, '6kkcx3x8jrtw8vaz', '2019-02-16 02:47:07'),
(637, 'qweqweweqwe', 234, '6kkcx3x8jrtw8vaz', '2019-02-19 12:15:48'),
(638, 'john', 234, '6kkcx3x8jrtw8vaz', '2019-02-19 12:15:58'),
(639, 'qwe', 271, '6kkcx3x8jrtw8vaz', '2019-02-19 12:16:01'),
(640, '23232', 271, '6kkcx3x8jrtw8vaz', '2019-02-19 12:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `notif_verify`
--

CREATE TABLE `notif_verify` (
  `user_id` int(11) NOT NULL,
  `isConfirm` tinyint(1) NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin_id_confirm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile_progress`
--

CREATE TABLE `profile_progress` (
  `user_id` int(11) NOT NULL,
  `basic_info` tinyint(1) NOT NULL,
  `more_info` tinyint(1) NOT NULL,
  `problems` tinyint(1) NOT NULL,
  `eform` tinyint(1) NOT NULL,
  `s` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_progress`
--

INSERT INTO `profile_progress` (`user_id`, `basic_info`, `more_info`, `problems`, `eform`, `s`) VALUES
(246, 1, 1, 0, 0, 1),
(247, 1, 0, 0, 0, 2),
(246, 1, 0, 0, 0, 3),
(248, 1, 0, 0, 0, 4),
(249, 1, 0, 0, 0, 5),
(250, 1, 0, 0, 0, 6),
(251, 1, 0, 0, 0, 7),
(252, 1, 0, 0, 0, 8),
(253, 1, 0, 0, 0, 9),
(254, 1, 0, 0, 0, 10),
(255, 1, 0, 0, 0, 11),
(256, 1, 0, 0, 0, 12),
(257, 1, 0, 0, 0, 13),
(258, 1, 0, 0, 0, 14),
(259, 1, 0, 0, 0, 15),
(260, 1, 0, 0, 0, 16),
(261, 1, 0, 0, 0, 17),
(262, 1, 0, 0, 0, 18),
(263, 1, 0, 0, 0, 19),
(264, 1, 0, 0, 0, 20),
(265, 1, 0, 0, 0, 21),
(266, 1, 0, 0, 0, 22),
(267, 1, 0, 0, 0, 23),
(268, 1, 0, 0, 0, 24),
(269, 1, 0, 0, 0, 25),
(270, 1, 0, 0, 0, 26),
(271, 0, 0, 0, 0, 27);

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `user_id` int(11) NOT NULL,
  `often_have_headaches` int(11) NOT NULL,
  `trouble_with_eyes` int(11) NOT NULL,
  `cant_hear_well` int(11) NOT NULL,
  `trouble_with_teeth` int(11) NOT NULL,
  `dont_get_enough_sleep` int(11) NOT NULL,
  `tired_too_easily` int(11) NOT NULL,
  `often_get_sick` int(11) NOT NULL,
  `not_eating_right_food` int(11) NOT NULL,
  `bothered_by_disability` int(11) NOT NULL,
  `no_regular_allowance` int(11) NOT NULL,
  `financial_dependance_onOthers` int(11) NOT NULL,
  `family_worried_about_money` int(11) NOT NULL,
  `parents_working_too_hard` int(11) NOT NULL,
  `dropout_college_forJob` int(11) NOT NULL,
  `strict_parents` int(11) NOT NULL,
  `cant_do_what_iwant` int(11) NOT NULL,
  `uncomfi_with_otherpeople` int(11) NOT NULL,
  `not_using_my_timewell` int(11) NOT NULL,
  `little_time_onmyself` int(11) NOT NULL,
  `smoking` int(11) NOT NULL,
  `drinking` int(11) NOT NULL,
  `addicted_on_computers` int(11) NOT NULL,
  `shy_when_talking_aboutsex` int(11) NOT NULL,
  `dont_know_proper_sexBehavior` int(11) NOT NULL,
  `thinking_toomuch_about_sex` int(11) NOT NULL,
  `too_jealous_envious_to_others` int(11) NOT NULL,
  `wishing_im_boyORgirl` int(11) NOT NULL,
  `inlove` int(11) NOT NULL,
  `doubt_about_getting_married` int(11) NOT NULL,
  `problems_with_bfgf` int(11) NOT NULL,
  `timid_or_shy` int(11) NOT NULL,
  `hurt_easily` int(11) NOT NULL,
  `nobody_to_share_my_problems` int(11) NOT NULL,
  `childish_immature` int(11) NOT NULL,
  `introvert` int(11) NOT NULL,
  `bad_influence_friends` int(11) NOT NULL,
  `subject_of_teasing` int(11) NOT NULL,
  `worrying_too_much` int(11) NOT NULL,
  `being_nervous` int(11) NOT NULL,
  `discouraged_easily` int(11) NOT NULL,
  `daydreaming` int(11) NOT NULL,
  `being_lazy` int(11) NOT NULL,
  `memories_of_unhappy_childhood` int(11) NOT NULL,
  `never_been_born` int(11) NOT NULL,
  `materialistic` int(11) NOT NULL,
  `dependent_gadgets` int(11) NOT NULL,
  `difficulty_setting_priorities` int(11) NOT NULL,
  `low_self_esteem` int(11) NOT NULL,
  `losing_my_temper` int(11) NOT NULL,
  `not_going_to_church` int(11) NOT NULL,
  `guilty_conscience` int(11) NOT NULL,
  `wanting_to_close_to_god` int(11) NOT NULL,
  `confused_religious_beliefs` int(11) NOT NULL,
  `wanting_know_bible` int(11) NOT NULL,
  `bad_attitudes_habits` int(11) NOT NULL,
  `teachers_hard_to_understand` int(11) NOT NULL,
  `not_getting_along` int(11) NOT NULL,
  `lesson_hard_to_understand` int(11) NOT NULL,
  `hard_using_media_tech` int(11) NOT NULL,
  `problems_with_subjects` int(11) NOT NULL,
  `worried_about_someone_fam` int(11) NOT NULL,
  `family_quarrels` int(11) NOT NULL,
  `death_fam` int(11) NOT NULL,
  `prob_mom` int(11) NOT NULL,
  `prob_dad` int(11) NOT NULL,
  `parents_fav_family` int(11) NOT NULL,
  `treated_like_child` int(11) NOT NULL,
  `parents_stict` int(11) NOT NULL,
  `parents_expecting_much` int(11) NOT NULL,
  `parents_decision_for_me` int(11) NOT NULL,
  `not_living_with_parents` int(11) NOT NULL,
  `feel_dont_have_home` int(11) NOT NULL,
  `want_to_run_away_from_home` int(11) NOT NULL,
  `homesick` int(11) NOT NULL,
  `parents_separated` int(11) NOT NULL,
  `want_know_more_skills` int(11) NOT NULL,
  `unable_to_express` int(11) NOT NULL,
  `want_drop_school` int(11) NOT NULL,
  `losing_enthusiams_studies` int(11) NOT NULL,
  `hard_obey_scohol_rules` int(11) NOT NULL,
  `trouble_with_personnel` int(11) NOT NULL,
  `afraid_speak_infront_class` int(11) NOT NULL,
  `no_time_for_schoolwork` int(11) NOT NULL,
  `hardtostudy_in_boardinghouse` int(11) NOT NULL,
  `part_time_stud` int(11) NOT NULL,
  `hard_adjust_school_environment` int(11) NOT NULL,
  `dw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`user_id`, `often_have_headaches`, `trouble_with_eyes`, `cant_hear_well`, `trouble_with_teeth`, `dont_get_enough_sleep`, `tired_too_easily`, `often_get_sick`, `not_eating_right_food`, `bothered_by_disability`, `no_regular_allowance`, `financial_dependance_onOthers`, `family_worried_about_money`, `parents_working_too_hard`, `dropout_college_forJob`, `strict_parents`, `cant_do_what_iwant`, `uncomfi_with_otherpeople`, `not_using_my_timewell`, `little_time_onmyself`, `smoking`, `drinking`, `addicted_on_computers`, `shy_when_talking_aboutsex`, `dont_know_proper_sexBehavior`, `thinking_toomuch_about_sex`, `too_jealous_envious_to_others`, `wishing_im_boyORgirl`, `inlove`, `doubt_about_getting_married`, `problems_with_bfgf`, `timid_or_shy`, `hurt_easily`, `nobody_to_share_my_problems`, `childish_immature`, `introvert`, `bad_influence_friends`, `subject_of_teasing`, `worrying_too_much`, `being_nervous`, `discouraged_easily`, `daydreaming`, `being_lazy`, `memories_of_unhappy_childhood`, `never_been_born`, `materialistic`, `dependent_gadgets`, `difficulty_setting_priorities`, `low_self_esteem`, `losing_my_temper`, `not_going_to_church`, `guilty_conscience`, `wanting_to_close_to_god`, `confused_religious_beliefs`, `wanting_know_bible`, `bad_attitudes_habits`, `teachers_hard_to_understand`, `not_getting_along`, `lesson_hard_to_understand`, `hard_using_media_tech`, `problems_with_subjects`, `worried_about_someone_fam`, `family_quarrels`, `death_fam`, `prob_mom`, `prob_dad`, `parents_fav_family`, `treated_like_child`, `parents_stict`, `parents_expecting_much`, `parents_decision_for_me`, `not_living_with_parents`, `feel_dont_have_home`, `want_to_run_away_from_home`, `homesick`, `parents_separated`, `want_know_more_skills`, `unable_to_express`, `want_drop_school`, `losing_enthusiams_studies`, `hard_obey_scohol_rules`, `trouble_with_personnel`, `afraid_speak_infront_class`, `no_time_for_schoolwork`, `hardtostudy_in_boardinghouse`, `part_time_stud`, `hard_adjust_school_environment`, `dw`) VALUES
(207, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(208, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11),
(209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12),
(210, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13),
(211, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14),
(212, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 15),
(213, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 16),
(214, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 17),
(215, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 18),
(216, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 19),
(218, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20),
(219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21),
(220, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 22),
(222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23),
(223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24),
(224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25),
(225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26),
(227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28),
(228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29),
(229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30),
(230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31),
(231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32),
(232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33),
(233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34),
(234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35),
(235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36),
(236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37),
(237, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38),
(238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39),
(239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40),
(240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41),
(241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42),
(242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43),
(243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44),
(244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45),
(245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46),
(246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47),
(247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48),
(248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49),
(249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50),
(250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51),
(251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52),
(252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53),
(253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54),
(254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55),
(255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56),
(256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57),
(257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58),
(258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59),
(259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60),
(260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61),
(261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62),
(262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63),
(263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64),
(264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65),
(265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66),
(266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67),
(267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68),
(268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69),
(269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70),
(270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71),
(271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_convo`
--

CREATE TABLE `tbl_convo` (
  `convo_id` int(11) NOT NULL,
  `convo_name` text NOT NULL,
  `convo_pass` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_convo`
--

INSERT INTO `tbl_convo` (`convo_id`, `convo_name`, `convo_pass`, `timestamp`) VALUES
(1, '6kkcx8lkjrebctqv', '', '2019-01-27 02:57:21'),
(2, '6kkcx8lkjrebdpsu', '', '2019-01-27 02:58:03'),
(3, '6kkcx8lkjrebdpsv', '', '2019-01-27 02:58:03'),
(4, '6kkcx8lkjrebfb4p', '', '2019-01-27 02:59:17'),
(5, '6kkcx8lkjrebfb4q', '', '2019-01-27 02:59:17'),
(6, '6kkcx72ojrecyfrt', '', '2019-01-27 03:42:09'),
(7, '6kkcx72ojrecyfru', '', '2019-01-27 03:42:09'),
(8, '6kkcx72ojred2wuv', '', '2019-01-27 03:45:38'),
(9, '6kkcx72ojred2wuw', '', '2019-01-27 03:45:38'),
(10, '6kkcx7ewjredmq9a', '', '2019-01-27 04:01:02'),
(11, '6kkcx7ewjredmq9b', '', '2019-01-27 04:01:02'),
(12, '6kkcx7ewjredrdcn', '', '2019-01-27 04:04:39'),
(13, '6kkcx7ewjredrdco', '', '2019-01-27 04:04:39'),
(14, '6kkcx7ewjreds98d', '', '2019-01-27 04:05:20'),
(15, '6kkcx7ewjreds98e', '', '2019-01-27 04:05:20'),
(16, '6kkcx97gjrejtxe4', '', '2019-01-27 06:54:36'),
(17, '6kkcx97gjrejtxe5', '', '2019-01-27 06:54:36'),
(18, '6kkcx97gjrejvr6e', '', '2019-01-27 06:56:01'),
(19, '6kkcx97gjrejvr6f', '', '2019-01-27 06:56:01'),
(20, '6kkcx3x8jrtw8vaz', '', '2019-02-07 00:38:41'),
(21, '6kkcx3x8jrtw8vb0', '', '2019-02-07 00:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `year` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `age` int(50) DEFAULT NULL,
  `gender` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `place_birth` varchar(100) NOT NULL,
  `addr` varchar(150) NOT NULL,
  `cp_num` int(50) DEFAULT NULL,
  `mother_name` varchar(100) NOT NULL,
  `mother_religion` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `father_religion` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `not_livingwith_parents` varchar(100) NOT NULL,
  `study_status` varchar(100) NOT NULL,
  `transpo` varchar(100) NOT NULL,
  `allowed_night` varchar(100) NOT NULL,
  `study_helper` varchar(100) NOT NULL,
  `hobby` varchar(100) NOT NULL,
  `have_friends` int(11) DEFAULT NULL,
  `troubling_problems` longtext NOT NULL,
  `someone_to_talk` text NOT NULL,
  `happiest_expi` longtext NOT NULL,
  `downful_expi` longtext NOT NULL,
  `ambition` longtext NOT NULL,
  `want_to_change` longtext NOT NULL,
  `eform_path` text NOT NULL,
  `isResPrinted` tinyint(1) NOT NULL,
  `summary_code` text NOT NULL,
  `dp_path` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`, `name`, `year`, `course`, `age`, `gender`, `religion`, `place_birth`, `addr`, `cp_num`, `mother_name`, `mother_religion`, `mother_job`, `father_name`, `father_religion`, `father_job`, `not_livingwith_parents`, `study_status`, `transpo`, `allowed_night`, `study_helper`, `hobby`, `have_friends`, `troubling_problems`, `someone_to_talk`, `happiest_expi`, `downful_expi`, `ambition`, `want_to_change`, `eform_path`, `isResPrinted`, `summary_code`, `dp_path`, `timestamp`) VALUES
(207, 'test1', '123', 'user', 'test1', '1st', 'BSCS', 21, 'male', 'Catholic', 'Olongapo City', '23 Kata St. Old Cabalan Olongapo City', 2147483647, 'Hey mother', 'Inc', 'Housewife', 'Father', 'Catholic', 'Woerkre', '', 'very good', 'tricycle', '', 'Me', 'Nothing', 1, 'qweqweqw', 'eqwewqe', 'wqeqw', 'eqwew', 'eqwewq', 'qweqeq', 'public/uploads/1544455114615207.jpg', 1, '', '', '2019-03-01 04:50:56'),
(208, 'test2', '123', 'user', 'test2', '2nd', 'ACT', 18, 'female', 'qwewqe', 'qweqwe', 'qweqweq', 323232, 'qweqwe', 'qweqwe', 'qweqewq', 'qweqwe', 'qweqwew', 'qweqwewq', 'qweqweqwe', 'very good', 'tricycle', 'ewqewqe', 'qweqweqw', 'qweqweqweqw', 1, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(209, 'test3', '123', 'user', 'test3', '4th', 'BSIT', 12, 'female', 'inqwe', 'qweqwe', 'qweqwe', 2, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', '', 'not so good', 'car', '', 'ewqewqe', 'eqweqweq', 0, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(210, 'test4', '123', 'user', 'test4', '1st', 'MPA', 12, 'male', 'qweqweq', 'weqwewq', 'eqweqwe', 232, 'qweqe', 'qweqe', 'qweqe', 'qwewqeq', 'qwewqe', 'qweqe', 'qweqweqewq', 'not so good', 'walking', 'eqwewqeqw', 'eqweqwewq', 'ewqeqweqw', 0, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(211, 'test5', '123', 'user', 'test5', '3rd', 'BSCS', 12, 'male', 'wer', 'wqweqw', 'weqwewq', 2323232, 'qweqwe', 'qweqweqw', 'qewqe', 'qweqwe', 'qweqwe', 'qwewq', '', 'very good', 'tricycle', 'qweqw', 'eqwe', 'qweqweqwe', 1, '', '', '', '', '', '', 'public/uploads/1544455524179211.jpg', 0, '', '', '2019-03-01 04:50:56'),
(212, 'test6', '123', 'user', 'test6', '4th', 'MAEd', 12, 'male', 'Catholic', 'Olongapo City', '28 rizal st purok 6 new cabalan', 2147483647, 'Maria ', 'Catholic', 'Teacher', 'John Doe', 'Catholic', 'Foreman', '', 'very good', 'jeepney', '', 'Mother', 'Video Games', 1, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(213, 'test7', '123', 'user', 'test7', '4th', 'BSCS', 12, 'male', 'qwewq', 'qweqew', 'qweqwe', 232, 'eqweqwe', 'qwe', 'wqe', 'wqe', 'wqe', 'qwe', '', 'good', 'car', 'eqwewq', 'eqweqw', 'eqweqeqw', 1, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(214, 'test8', '123', 'user', 'test8', '1st', 'BACOM', 10, 'male', 'qweqwe', 'qweqweqwe', 'qewqeqwe', 1100, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', '', 'bad', 'tricycle', 'eqweqw', 'eqweqweqwe', 'ewqeqweq', 1, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(215, 'test9', '123', 'user', 'test9', '1st', 'BPEd', 12, 'female', 'eqwewq', 'qweqw', 'eqwewq', 56145306, 'qwewq', 'qweqwe', 'qweqweqweqw', 'eqweqw', 'eqwewq', 'eqwewqewqewq', '', 'not so good', 'jeepney', 'ewqeqw', 'eqweqweqwewq', 'eqweqwewqe', 1, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(216, 'test10', '123', 'user', 'test10', '3rd', 'BSIT', 232, 'male', 'wqeqwewq', 'qwewqew', 'qeqweqweqw', 2132, 'qweqweqw', 'qweqe', 'qweqwe', 'qweqwe', 'qweqwe', 'qweqweqw', '', 'good', 'car', '', 'eqwewqeqw', 'eqweqe', 1, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(218, 'test11', '123', 'user', 'test11', '2nd', 'BACOM', 12, 'female', 'wqewqe', 'qweqwe', 'qwe', 23232, 'qwewq', 'qwe', 'wqe', 'qweqw', 'e', 'qewe', '', 'bad', 'tricycle', '', 'qweqweqw', 'qweqweqweqw', 0, 'qwe', 'eqwqw', 'eqweqweqw', 'eqweqwe', 'qweqw', 'weqweqw', '', 0, '', '', '2019-03-01 04:50:56'),
(219, 'test20', '123', 'user', 'test20', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 1, '', '', '2019-03-01 04:50:56'),
(220, 'test21', '123', 'user', 'test21', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Try', 'Me', 'hehe', 'Testing', 'this', 'new', '', 0, '', '', '2019-03-01 04:50:56'),
(222, '\'eqweqweqw', '\'ewqewqeqweqw', 'user', 'ewqeqwewq', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(223, '\'test', '\'123', 'user', 'ewqeqwewq', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(224, 'testing1', '123', 'user', 'John Carlo A. Miel', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 1, '', '', '2019-03-01 04:50:56'),
(225, 'ewqeqw', 'eqweqw', 'user', 'ewqew', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(227, 'testing123', '123', 'user', 'qwe', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(228, 'testing2', '123', 'user', 'qweqe', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 1, '', '', '2019-03-01 04:50:56'),
(229, 'testing99', '123', 'user', 'qweqweqw', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 1, '', '', '2019-03-01 04:50:56'),
(230, 'eqweqw', 'eqweqw', 'user', 'eqwe', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(231, 'fvdsfsdfsd', '21312', 'user', '123', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(232, 'ama', '123', 'user', 'qwe', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(233, 'newuser', '$2b$10$NOlSGYXEaOzvRmqG/Q4O/uGjtCnr.hTdcn0xsrmRysWJJ87qby.OC', 'user', 'qwewqe', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 1, '', '', '2019-03-01 04:50:56'),
(234, 'admin', '$2b$10$st6/6hl5zg57W/noH5F7F.f2z4EwAe.grM7393NsV3vPb2YFm/wLG', 'admin', 'admin', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', 'assets/images/defaults/female.jpg', '2019-03-01 04:50:56'),
(235, 'testing', '$2b$10$.1AgIs4J4.qJ5DpqVVy4XOZnfih/Z3D.wgYRQK3L44onR5BV9fi5q', 'user', 'qwewq', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(236, 'mytest', '$2b$10$Ugvg/ZsWwflf2/o3YzbNleaNDZYtTblgXAK4Xa9.9u0kPAyCDLnAq', 'user', 'John Carlo A. Miel', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 1, 'SAI', '', '2019-03-01 04:50:56'),
(237, 'test', '$2b$10$BUtojNOTKZTGEV9AJ0xokuaT1YPLlATdkkEgRHP7T6O9g2yrb/bpq', 'user', 'John Doe', '3rd', 'BSHM', 19, 'male', 'INC', 'Olongapo', '29 rizal st purok 2 new cabalan', 2147483647, 'Maria', 'Catholic', 'Housewife', 'Pedro', 'Catholic', 'Foreman', '', 'good', 'jeepney', '', 'My mother', 'Doing some stuff', 1, 'Nothing', 'Yes', 'Hello', 'Okay', 'Dood', 'Me', '', 1, 'ECA', '', '2019-03-01 04:50:56'),
(238, 'hey1', '$2b$10$jmctMCapkH2qkf/TYUk5Qe1geVNM7guMVR4xfr4jgnl7BOucHykxi', 'user', '123', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 1, 'RAS', '', '2019-03-01 04:50:56'),
(239, 'hey2', '$2b$10$XvIz/dx/4LdfO82H56GcxuRhzoiiIKWuMnO1nOYizSQZDvce0jvnW', 'user', '123', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 1, 'RSI', '', '2019-03-01 04:50:56'),
(240, 'hey3', '$2b$10$ENpl9qLnomhnAbR.GzxKBuItxnA.tLmusTLIhI7WfdhSO5qwTAXBS', 'user', 'qwe', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 1, 'ARC', '', '2019-03-01 04:50:56'),
(241, 'hey4', '$2b$10$gmBU0r754C6z945naYcGZuFfCTGHbczRnXV9UDAWTRKBuW/FfMlK6', 'user', '123', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 1, 'ISR', '', '2019-03-01 04:50:56'),
(242, 'hey5', '$2b$10$vmOvB9uwHfLgkcM4ZTZL/.I00APt4m.ueOTvS28eVuI8CEBqtCz5G', 'user', 'qwe', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(243, 'hey6', '$2b$10$nGS6bMlcRrPSVgLUbKHcOu3lyFcI4JMGRo8CTS.pFHsYdRyrsaUP2', 'user', '132', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(244, 'test999', '$2b$10$AjLHQItCedSxx1mIi8yxtur9R4dFkCQnxqVpTirX/piKO0WNQJYQm', 'user', 'Yes', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(245, 'new', '$2b$10$hNyefq7Bzc9r73efEr5D5eiPrqqg9QpGJUTvW2k.7BrV93Lh.O3hq', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(246, 'new123', '$2b$10$IikgEEKweKLUEor4.Io0aurdjkB1oTY.H7HO1IJTNFCWuFLx0Eofi', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(247, 'new123123', '$2b$10$CbNEP17iL6ft9xQhEbtPgu9lMFQ5pRgNm1PTNOhqzcrzf6bv8c34O', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(248, 'new123123123', '$2b$10$HhScezGXJgbPZIz8hpilSeo1egWz3SeRVug7GijAwVXCbrJtkQzre', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(249, '32', '$2b$10$e7PTj4yi4x2jUDVv2vtOYePUnP.9Vs2pD3HJRhHMExMntBP5jTGpO', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(250, '3223232', '$2b$10$f0XJkJ9H2VuKPzQ0dOYG.uzk9AHDt94AVkkHV4GPPvZ0pyFWyCiN.', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(251, '3223232hey', '$2b$10$w8l4HQEQq0BAPQ0EoIygVebe/NgjEstxZLIP4W/CEU8bUyE.SNvKW', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(252, '3223232hey23', '$2b$10$g3SGHVLnXuo9giM0BL5nyuvcj/s/M4kNZdGg3G8Fut/bSqZqbT4Ga', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(253, '3223232hey223', '$2b$10$zouw6aRr42V/OyBcTdoHx.7tje1FyfC/aUyLL70fQd7lPhQeSenSi', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(254, '3223232hey232223', '$2b$10$lAel9QeCgoi1bcQubRAPgON5418LqsusPIrZDyCt9PkQXPdSesVXS', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(255, '3223232hey2323232223', '$2b$10$hd5LqeGtcPjIbhy5FZZ2pu9I8GV/5IUM8iir3ui68mAWypzdrWfdW', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(256, '3223232hey232323ewew2223', '$2b$10$saVv4wT0v39QXMTmS5kK2ua9PbjHSuA95mzoN8jjaY7KLg8W74OS6', 'admin', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(257, '3223232hes2y232323ewew2223', '$2b$10$eJ3Yso3svT9cm.UagpFzUOfe68hH3Ha5wsuxOQSzf9iMqS/3R9sJC', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(258, '3223232hes2y232323ewewdwdwdw2223', '$2b$10$vNEzLcd39abCVEkLvsDPGeTBa9pvK6lX30ELn58EROf.ggiAPdS.C', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(259, '3223232hes2y2323s223ewewdwdwdw2223', '$2b$10$aToDZGtjNJD1qCL59lGyTOzxeuR63ar55FD4U6XKxNCMhSKy29YRK', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(260, 'zzxx', '$2b$10$QpyuDW4IpbQQtLtJFBbM8.dhJswf..XfWP.zzobbsH9KxqF1SrjQi', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(261, 'testingchat', '$2b$10$Ben.Y3MOutQPmOo1jL.jduAxIpr./afLwn.NVE4a7XxRAzZsxnC82', 'user', 'dummymotherfucker', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(262, 'wq', '$2b$10$Tap2xgiw2cj.L09S7MvovO0p1Kcm.gPZIKrSrs0ColNXI8MW.KBIG', 'user', 'wq', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(263, 'dw', '$2b$10$7Ih/YSquBITgIpRnh2V5ROMenr2bNZA502io/2StZB03ioHh2rrxC', 'user', 'dw', '', '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '2019-03-01 04:50:56'),
(264, 'ewqe', '$2b$10$Av9ZaiYWFFUC7mFrViDBgeLYn22EFPm3okB608YEbglMNX2ijTTqq', 'user', '12', '', '', NULL, 'Male', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', 'assets/images/defaults/male.jpg', '2019-03-01 04:50:56'),
(265, 'chat', '$2b$10$NsHb5JmhfklsfPgmaj5GT.6xVTDUm1jdwbeblHcNP6o07rmc6.gIW', 'user', 'qwewqe', '', '', NULL, 'Female', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', 'assets/images/defaults/female.jpg', '2019-03-01 04:50:56'),
(266, 'testzzxzxczxc', '$2b$10$9t.I8IQVFd7iXOl2tdMpveth/r0Pi/9ZrawsVqn/mEjjG7COBbXMa', 'user', 'qwe', '', '', NULL, 'Female', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', 'assets/images/defaults/female.jpg', '2019-03-01 04:50:56'),
(267, 'chat1', '$2b$10$dId1plPn0ehYc5v/Ul2x4ekHEGIST7/I1NURyXguqgHJAvkztG.L2', 'user', 'qweqwe', '', '', NULL, 'Male', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', 'assets/images/defaults/male.jpg', '2019-03-01 04:50:56'),
(268, 'eqwew', '$2b$10$D6XRvuiyaUYsTgU38b.oDuFduphsiCPgOX2yP.jWX38cdaoiwFBXG', 'user', '12', '', '', NULL, 'Male', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', 'assets/images/defaults/male.jpg', '2019-03-01 04:50:56'),
(269, 'sqsq', '$2b$10$tl/T6W1j6exW8x/lop5eReuDjodTAD1x2/3CMXznvD4iid6mmIV7e', 'user', 'eqweq', '', '', NULL, 'Male', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', 'assets/images/defaults/male.jpg', '2019-03-01 04:50:56'),
(270, 'chat123', '$2b$10$l.2XOchr2L1PaGcXfkG00Ow8FggX.ZE6ow/N7DMiPVLdD.tziMhl2', 'user', 'qwewqewq', '4th', 'MAEd', 23, 'female', 'qwewqeqw', 'eqwqw', 'eqwe', 3232, 'eqweqwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', '', 'good', 'tricycle', '', 'qwe', 'qwe', 1, '', '', '', '', '', '', '', 0, '', 'assets/images/defaults/male.jpg', '2019-03-01 04:50:56'),
(271, 'chatuser', '$2b$10$2mFMQ.LrAP0hOdFBzUvMX.C7dQlALwxi9p4e862VIGNta.U9.69mC', 'user', 'user', '', '', NULL, 'Female', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', 'assets/images/defaults/female.jpg', '2019-03-01 04:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_code`
--

CREATE TABLE `user_code` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_code`
--

INSERT INTO `user_code` (`id`, `user_id`, `code`) VALUES
(1, 207, 'CSI'),
(3, 219, 'ARE'),
(4, 219, 'ASE'),
(5, 219, 'ACE'),
(6, 224, 'SEI'),
(7, 224, 'SCI'),
(8, 228, 'CRS'),
(9, 229, 'IES'),
(10, 229, 'AES'),
(11, 219, 'AIE'),
(12, 233, 'CER'),
(13, 236, 'SAI'),
(14, 238, 'RAS'),
(15, 239, 'RSI'),
(16, 239, 'RSA'),
(17, 239, 'REI'),
(18, 239, 'REA'),
(19, 240, 'ARE'),
(20, 241, 'ISR'),
(21, 241, 'ISA'),
(22, 241, 'IER'),
(23, 241, 'IEA'),
(24, 241, 'ICR'),
(25, 241, 'ICA'),
(26, 237, 'ECA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`o`),
  ADD KEY `contacts_ibfk_1` (`user_id`),
  ADD KEY `contacts_ibfk_2` (`contact_user_id`),
  ADD KEY `convo_name` (`convo_name`);

--
-- Indexes for table `convo_ptcpant`
--
ALTER TABLE `convo_ptcpant`
  ADD KEY `convo_id` (`convo_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`e`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`user_id`,`event_id`),
  ADD KEY `likes_ibfk_2` (`event_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `convo_name` (`convo_name`);

--
-- Indexes for table `profile_progress`
--
ALTER TABLE `profile_progress`
  ADD PRIMARY KEY (`s`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`dw`),
  ADD KEY `reserve_ibfk_1` (`user_id`);

--
-- Indexes for table `tbl_convo`
--
ALTER TABLE `tbl_convo`
  ADD PRIMARY KEY (`convo_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_code`
--
ALTER TABLE `user_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `o` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `e` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;
--
-- AUTO_INCREMENT for table `profile_progress`
--
ALTER TABLE `profile_progress`
  MODIFY `s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `dw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `tbl_convo`
--
ALTER TABLE `tbl_convo`
  MODIFY `convo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
--
-- AUTO_INCREMENT for table `user_code`
--
ALTER TABLE `user_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contacts_ibfk_2` FOREIGN KEY (`contact_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `convo_ptcpant`
--
ALTER TABLE `convo_ptcpant`
  ADD CONSTRAINT `convo_ptcpant_ibfk_1` FOREIGN KEY (`convo_id`) REFERENCES `tbl_convo` (`convo_id`),
  ADD CONSTRAINT `convo_ptcpant_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `letters`
--
ALTER TABLE `letters`
  ADD CONSTRAINT `letters_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`convo_name`) REFERENCES `contacts` (`convo_name`);

--
-- Constraints for table `profile_progress`
--
ALTER TABLE `profile_progress`
  ADD CONSTRAINT `profile_progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_code`
--
ALTER TABLE `user_code`
  ADD CONSTRAINT `user_code_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
