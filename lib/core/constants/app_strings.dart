import 'package:simple_icons/simple_icons.dart';

import '../models/certificates_model.dart';
import '../models/education_model.dart';
import '../models/experience_model.dart';
import '../models/projects_model.dart';
import '../models/skills_model.dart';

class Content {
  //INFO
  static String name = 'Olewuezi Marvellous';
  static String phoneNumber = '08074307345';
  static String email = 'olewuezimarvellous@gmail.com';
  static String introduction =
      "I'm a Software Engineer and Computer Science graduate of Caleb University, bridging production mobile apps (Flutter/Dart) and efficient on-device machine learning. I take deep learning models, from Computer Vision architectures to Large Language Models, and optimize them for low-latency, privacy-first local execution on mobile and edge hardware. Built on a solid foundation in Java, Python, and C++, my work turns ideas into cross-platform experiences where creativity meets functionality.";
  static String introHeader = "Hi, I'm Olewuezi Marvellous";
  static String location = "Lagos, Nigeria";
  static String availability = 'Available for new projects';
  static String aboutMeIntro = 'Curious about me? Here you have it:';
  static String aboutMe =
      // '''I'm Olewuezi Marvellous, a passionate and results-driven Mobile Developer based in Lagos, Nigeria. With a strong foundation in Computer Science and a keen interest in mobile application development, I specialize in creating innovative and user-friendly apps using Flutter and Dart.\n\nAs a recent graduate from Caleb University with a Bachelor's degree in Computer Science (CGPA: 4.04), I've honed my skills in various programming languages and technologies. My expertise spans Dart, Flutter, Java, Python, C++, and Firebase, allowing me to develop robust and efficient cross-platform mobile applications.\n\nI pride myself on writing clean, readable, and testable code. My approach to development is characterized by analytical thinking, problem-solving skills, and meticulous attention to detail. I thrive both independently and in team settings, always striving to apply the highest quality standards to create, grow, and maintain mobile app platforms.\n\nI have experience working with RESTful APIs. My knowledge extends to Android app development, and I'm well-versed in Firebase for backend solutions.\n\nContinuously eager to learn and grow, I've supplemented my formal education with various certifications from Google, including courses in Python, Cloud Computing, and Digital Marketing.\n\nI'm excited about the ever-evolving world of mobile technology and am committed to staying at the forefront of industry trends. My goal is to contribute my skills and passion to creating innovative mobile solutions that make a positive impact on users' lives.''';
      '''
I'm Olewuezi Marvellous, a passionate Application Developer and On-Device AI/ML Researcher based in Lagos, Nigeria. With a strong foundation in Computer Science, I specialize in bridging production mobile development using Flutter and Dart with efficient, privacy-first on-device machine learning and LLM integration.

Holding a Second Class Upper Bachelor's degree in Computer Science from Caleb University (CGPA: 4.1/5.0), I have expanded my technical toolkit across Dart, Flutter, Python, PyTorch, C++, Java, and Firebase. My work spans the full spectrum of building robust cross-platform applications and optimizing deep learning models for edge deployment.

I pride myself on clean architecture, analytical rigor, and writing performant, testable code. My recent focus centers on model compression (INT8 post-training quantization, PyTorch ➔ ONNX ➔ TFLite) and building intelligent software—from zero-latency vision apps like CIFAR_Lens to smart LLM reflection tools like Mindscribe.

My engineering experience encompasses RESTful APIs, local SQLite databases, secure key management, and enterprise solutions like AI-driven Pharmacy POS & Inventory systems. I am well-versed in Android development, Desktop development, Firebase backends, and UI/UX workflows in Figma.

Continuously eager to push technical boundaries, I supplement my formal education with certifications from Google and IBM while also having hands-on ML research—rigorously advancing my expertise in edge compute, tensor optimization, and generative AI systems.

Driven by the future of mobile intelligence, I am committed to staying at the forefront of industry trends. My goal is to leverage my skills in application development and on-device machine learning to create innovative, impactful solutions that run seamlessly on edge hardware.''';

// CREDENTIALS
  static final Uri cvLink = Uri.parse(
      'https://drive.google.com/file/d/1lbT4RDc_21PEGr18oQlisY6btUv1Pc5H/view?usp=sharing');
//? THIS IS THE STYLISED CV LINK
  // static final Uri cvLink = Uri.parse(
  //     'https://drive.google.com/file/d/17tkOyPl30fP3-muALqLrhkuSAEp2klhn/view?usp=drive_link');
  static final Uri githubLink = Uri.parse('https://github.com/Marvyoha');
  static final Uri linkedinLink =
      Uri.parse('https://www.linkedin.com/in/Olewuezi-Marvellous/');
  static final Uri emailLink = Uri.parse('olewuezimarvellous@gmail.com');

// CERTIFICATES
  static final Uri certDigitalMarketing = Uri.parse(
      'https://drive.google.com/file/d/1XN17s0A6ls3TU058xM4VM7nMBMkMJZIs/view?usp=drive_link');
  static final Uri certCrashCourseOnPython = Uri.parse(
      'https://drive.google.com/file/d/1Ts6FJ1y1C1Ej43LZFDWMT9pNfD1h6a9A/view?usp=drive_link');
  static final Uri certIntroToCloudComputing = Uri.parse(
      'https://drive.google.com/file/d/1b952OZ3yGAQJz5rpnAnDeviv_Omi6cS6/view?usp=drive_link');
  static final Uri certIntroToWebDev = Uri.parse(
      'https://drive.google.com/file/d/1XDZEADiB94Nr4zM3gpPYuUt8tRbJZ06u/view?usp=drive_link');
  static final Uri certUsingPythonToInteractWithOS = Uri.parse(
      'https://drive.google.com/file/d/1c5S3F_rr6sbxZLVLrId9qoEJIDed0p74/view?usp=drive_link');

// IMAGES
  static String profile = 'assets/profile.webp';
  static String profile2 = 'assets/profile2.webp';
  static String cmsLogo = 'assets/cms_logo.webp';
  static String calebLogo = 'assets/caleb_uni_logo.webp';
  static String googleLogo = 'assets/google_logo.webp';
  static String ibmLogo = 'assets/ibm_logo.webp';
  static String exolveTechLogo = 'assets/exolve_tech_logo.webp';
  static String technocratLogo = 'assets/technocrat_logo.webp';
  static String josfredLogo = 'assets/josfred_logo.webp';

  // QUALIFICATIONS CONTENT ( AUTOMATIC RENDERING )
  static List<EducationModel> educationList = [
    EducationModel(
        image: Content.calebLogo,
        degree:
            'Bachelor of Computer Science: College of Pure and Applied Sciences',
        school: 'Caleb University',
        timeRange: '2020 - 2024',
        location: 'Imota, Lagos, Nigeria'),
    EducationModel(
        image: Content.cmsLogo,
        degree: 'WASSCE',
        school: 'CMS Grammar School',
        timeRange: '2013 - 2019',
        location: 'Bariga, Lagos, Nigeria'),
  ];
  static List<ExperienceModel> experienceList = [
    ExperienceModel(
        companyName: 'Exolve Technologies Ltd',
        image: Content.exolveTechLogo,
        jobTitle: 'Mobile App Developer Intern',
        jobDescription: '''
• Collaborated with senior developers to design, develop, and
maintain mobile applications for both Android and iOS
platforms.
• Conducted thorough testing on new applications, identifying
and resolving bugs to improve app functionality and reliability.
• Assisted in the development of cross-platform solutions using
Flutter, enabling consistent user experiences across multiple
devices.
• Worked closely with the UX and UI design team to ensure app
designs were both attractive and intuitive for the end-user.''',
        timeRange: '05/2023 - 11/2023'),
    ExperienceModel(
        companyName: 'Technocrat Consult and IT Systems Ltd',
        image: Content.technocratLogo,
        jobTitle: 'Mobile App Developer',
        jobDescription: '''
• Implementing QR code scanning functionality for deposits and withdrawals
• Developing virtual card features with secure transaction handling
• Working on NFC integration for contactless payment capabilities
• Building responsive and intuitive UI components that bridged frontend design with backend services
• Ensuring smooth API integration and data flow across the application.''',
        timeRange: '02/2025 - 12/2025'),
    ExperienceModel(
        companyName: 'Josfred International Ltd',
        image: Content.josfredLogo,
        jobTitle: 'IT Consultant / Flutter Developer',
        jobDescription: '''
• Architecting and building PharmaAI, a cross-platform desktop POS and inventory system in Flutter/Dart, replacing manual stock and sales tracking across the pharmacy.
• Built the POS module: barcode scanning, split payments (cash/card/transfer), returns/refunds, thermal receipt printing, and shift close-out reports.
• Implemented batch and expiry management with FEFO dispensing, low-stock and near-expiry alerts, and full stock-adjustment audit trails.
• Integrated an AI-assisted drug interaction and allergy checker to flag unsafe combinations at dispensing, improving patient safety.
• Designed role-based access control (Admin, Pharmacist, Cashier, Store Manager) with permissions enforced at the data layer.
• Delivered procurement and reporting: purchase orders, supplier tracking, sales/profit dashboards, and PDF/CSV exports.''',
        timeRange: '02/2026 - Present'),
  ];

  static List<CertificatesModel> certificatesList = [
    CertificatesModel(
        issuedBy: 'Google',
        viewCredential: Content.certDigitalMarketing,
        image: Content.googleLogo,
        course: 'Introduction to Digital Marketing'),
    CertificatesModel(
        issuedBy: 'Google',
        viewCredential: Content.certCrashCourseOnPython,
        image: Content.googleLogo,
        course: 'Crash Course on Python'),
    CertificatesModel(
        issuedBy: 'Google',
        viewCredential: Content.certUsingPythonToInteractWithOS,
        image: Content.googleLogo,
        course: 'Python with the Operating System'),
    CertificatesModel(
        issuedBy: 'IBM',
        viewCredential: Content.certIntroToWebDev,
        image: Content.ibmLogo,
        course: 'Introduction to Web Development'),
    CertificatesModel(
        issuedBy: 'IBM',
        viewCredential: Content.certIntroToCloudComputing,
        image: Content.ibmLogo,
        course: 'Introduction to Cloud Computing'),
  ];

// SKILLS CONTENT (AUTOMATIC RENDERING)
  static List<SkillsModel> skillsList = [
    SkillsModel(icon: SimpleIcons.dart, skill: 'Dart'),
    SkillsModel(icon: SimpleIcons.flutter, skill: 'Flutter'),
    SkillsModel(icon: SimpleIcons.openjdk, skill: 'Java'),
    SkillsModel(icon: SimpleIcons.python, skill: 'Python'),
    SkillsModel(icon: SimpleIcons.cplusplus, skill: 'C++'),
    SkillsModel(icon: SimpleIcons.docker, skill: 'Docker'),
    SkillsModel(icon: SimpleIcons.git, skill: 'Git'),
    SkillsModel(icon: SimpleIcons.mysql, skill: 'MySQL'),
    SkillsModel(icon: SimpleIcons.sqlite, skill: 'SQLite'),
    SkillsModel(icon: SimpleIcons.pandas, skill: 'Pandas'),
    SkillsModel(icon: SimpleIcons.numpy, skill: 'NumPy'),
    SkillsModel(icon: SimpleIcons.pytorch, skill: 'PyTorch'),
    SkillsModel(icon: SimpleIcons.tensorflow, skill: 'TensorFlow'),
  ];

// PROJECTS CONTENT (AUTOMATIC RENDERING)
  static String soleSeekers1 = 'assets/soleSeekers1.webp';
  static String soleSeekers2 = 'assets/soleSeekers2.webp';
  static String soleSeekers3 = 'assets/soleSeekers3.webp';
  static String soleSeekers4 = 'assets/soleSeekers4.webp';
  static String carcare1 = 'assets/carcare1.webp';
  static String carcare2 = 'assets/carcare2.webp';
  static String carcare3 = 'assets/carcare3.webp';
  static String carcare4 = 'assets/carcare4.webp';
  static String cosmic1 = 'assets/cosmic1.webp';
  static String cosmic2 = 'assets/cosmic2.webp';
  static String cosmic3 = 'assets/cosmic3.webp';
  static String cosmic4 = 'assets/cosmic4.webp';
  static String mindscribe1 = 'assets/mindscribe1.webp';
  static String mindscribe2 = 'assets/mindscribe2.webp';
  static String mindscribe3 = 'assets/mindscribe3.webp';
  static String mindscribe4 = 'assets/mindscribe4.webp';
  static String cifarlens1 = 'assets/CIFAR_lens1.webp';
  static String cifarlens2 = 'assets/CIFAR_lens2.webp';
  static String cifarlens3 = 'assets/CIFAR_lens3.webp';
  static String cifarlens4 = 'assets/CIFAR_lens4.webp';
  static String kamp1 = 'assets/kamp1.webp';
  static String kamp2 = 'assets/kamp2.webp';
  static String kamp3 = 'assets/kamp3.webp';
  static String kamp4 = 'assets/kamp4.webp';
  static List<ProjectModel> projectList = [
    ProjectModel(
        projectTitle: 'Mindscribe',
        projectDescription:
            '''MindScribe is an empathetic, offline-first personal journaling app built with Flutter. It combines a distraction-free writing experience with an AI-powered reflection companion that extracts sentiment, generates summaries, provides actionable takeaways, and prompts deeper self-discovery.''',
        projectStack: [
          'Dart',
          'Flutter',
          'Riverpod Package',
          'Sqflite Package',
          'Flutter secure storage',
          'Dio Package',
          'Docker',
          'Ngrok',
          'Third-party Packages',
          'Git',
          'GitHub'
        ],
        projectImage: [mindscribe1, mindscribe2, mindscribe3, mindscribe4],
        projectLink: 'https://github.com/Marvyoha/Mindscribe'),
    ProjectModel(
        projectTitle: 'CIFAR Lens',
        projectDescription:
            '''CIFAR Lens is a Flutter app that performs real-time on-device image classification for the 10 CIFAR-10 classes using a post-training INT8-quantized TFLite model. Inference runs locally with no network calls, ~0.73 ms/image on CPU, and 0.61 MB model size.''',
        projectStack: [
          'Dart',
          'Flutter',
          'Riverpod Package',
          'Tflite Package',
          'Flutter secure storage',
          'Third-party Packages',
          'Git',
          'GitHub'
        ],
        projectImage: [cifarlens1, cifarlens2, cifarlens3, cifarlens4],
        projectLink: 'https://github.com/Marvyoha/CIFAR_Lens'),
    ProjectModel(
        projectTitle: 'SoleSeekers',
        projectDescription:
            '''SoleSeekers is the culmination of my final year project and a testament to my passion for mobile app development and e-commerce.\nSoleSeekers is an E-Commerce app which provides a seamless and immersive platform that caters to the diverse preferences of shoe lovers worldwide.''',
        projectStack: [
          'Dart',
          'Flutter',
          'Firebase Auth',
          'Firebase FireStore',
          'Firebase Storage',
          'Hive',
          'Third-party Packages',
          'Figma',
          'Git',
          'GitHub'
        ],
        projectImage: [soleSeekers1, soleSeekers2, soleSeekers3, soleSeekers4],
        projectLink: 'https://github.com/Marvyoha/sole_seekers_1_0'),
    ProjectModel(
        projectTitle: 'Cosmic',
        projectDescription:
            '''Cosmic is an educational app focused on teaching users about the Sun and planets in our solar system. The app includes detailed information on the 10 main celestial bodies - the Sun, Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, and Pluto.''',
        projectStack: [
          'Dart',
          'Flutter',
          'Firebase Auth',
          'Third-party Packages',
          'Figma',
          'Git',
          'GitHub'
        ],
        projectImage: [cosmic1, cosmic2, cosmic3, cosmic4],
        projectLink: 'https://github.com/Marvyoha/cosmic-app'),
    ProjectModel(
        projectTitle: 'Kamp',
        projectDescription:
            '''Kamp is a dynamic platform designed to bridge the gap between founders, investors, and talents. Whether you're an aspiring entrepreneur seeking funding and a skilled team, a seasoned investor hunting for promising startups, or a talented professional looking for your next big opportunity, Kamp is your go-to platform.''',
        projectStack: [
          'Dart',
          'Flutter',
          'Third-party Packages',
          'Figma',
          'Git',
          'GitHub'
        ],
        projectImage: [kamp1, kamp2, kamp3, kamp4],
        projectLink: 'https://github.com/Marvyoha/kamp_app'),
    ProjectModel(
        projectTitle: 'Car Care',
        projectDescription:
            '''Car Care app is an app built to help car owners better manage maintenance and services for their vehicles. My primary role on the project was taking the initial UI/UX design comps and converting them into a UI-ready mobile application using flutter.''',
        projectStack: [
          'Dart',
          'Flutter',
          'Third-party Packages',
          'Figma',
          'Git',
          'GitHub'
        ],
        projectImage: [carcare1, carcare2, carcare3, carcare4],
        projectLink: 'https://github.com/Marvyoha/car_care_app'),
  ];
}
