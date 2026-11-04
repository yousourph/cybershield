import '../models/quiz_question.dart';

const List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    question: 'What is phishing?',
    options: [
      'A method of protecting files',
      'A trick used to steal sensitive information',
      'A type of computer hardware',
      'A technique for improving internet speed',
    ],
    correctIndex: 1,
    explanation:
        'Phishing uses deceptive messages or websites to trick '
        'people into revealing sensitive information.',
  ),
  QuizQuestion(
    question: 'Which password is generally the strongest?',
    options: [
      'password123',
      'yusuf2006',
      '12345678',
      'R7!mQ2#vL9@p',
    ],
    correctIndex: 3,
    explanation:
        'A long, unique password with a mixture of character types '
        'is generally harder to guess. Use a password manager to '
        'generate and store unique passwords.',
  ),
  QuizQuestion(
    question: 'What should you do with an unexpected email '
        'asking you to verify your bank account?',
    options: [
      'Click the link immediately',
      'Reply with your banking details',
      'Verify it through your bank’s official channel',
      'Forward it to all your contacts',
    ],
    correctIndex: 2,
    explanation:
        'Contact your bank using its official app, website, '
        'or phone number instead of trusting the message link.',
  ),
  QuizQuestion(
    question: 'What is the main purpose of two-factor '
        'authentication (2FA)?',
    options: [
      'To add another layer of account security',
      'To increase internet download speed',
      'To remove the need for passwords everywhere',
      'To make files take up less storage',
    ],
    correctIndex: 0,
    explanation:
        'Two-factor authentication requires an additional form '
        'of verification, making unauthorised access more difficult.',
  ),
  QuizQuestion(
    question: 'You receive an unexpected message containing '
        'an urgent link. What is the safest first action?',
    options: [
      'Open it before it expires',
      'Check the sender and verify the message independently',
      'Enter your password to see where it leads',
      'Download any attached file',
    ],
    correctIndex: 1,
    explanation:
        'Urgency can be used to pressure people into making '
        'unsafe decisions. Verify unexpected messages before acting.',
  ),
  QuizQuestion(
    question: 'Why should you install security updates?',
    options: [
      'They guarantee complete protection from every attack',
      'They prevent all online scams automatically',
      'They can fix known security vulnerabilities',
      'They make every website trustworthy',
    ],
    correctIndex: 2,
    explanation:
        'Security updates often repair weaknesses that attackers '
        'could otherwise exploit.',
  ),
  QuizQuestion(
    question: 'What should you do if you receive an unexpected '
        'login verification code?',
    options: [
      'Share it with the person who requests it',
      'Post it online to ask what it means',
      'Ignore every future security notification',
      'Never share it and check your account if concerned',
    ],
    correctIndex: 3,
    explanation:
        'Never share unexpected verification codes. Check your '
        'account through its official service if you suspect '
        'someone is attempting to sign in.',
  ),
  QuizQuestion(
    question: 'Which connection is generally safer for '
        'accessing sensitive accounts?',
    options: [
      'A trusted network using HTTPS websites',
      'Any public Wi-Fi network without checking',
      'A website that ignores certificate warnings',
      'A link sent by an unknown stranger',
    ],
    correctIndex: 0,
    explanation:
        'Use trusted networks and check that websites use HTTPS. '
        'HTTPS protects data in transit but does not guarantee '
        'that a website itself is legitimate.',
  ),
  QuizQuestion(
    question: 'What is malware?',
    options: [
      'A secure password storage method',
      'Software designed to harm, disrupt, or gain '
          'unauthorised access to systems',
      'A method of backing up documents',
      'A legitimate operating system update',
    ],
    correctIndex: 1,
    explanation:
        'Malware is malicious software that can damage systems, '
        'steal information, or enable unauthorised access.',
  ),
  QuizQuestion(
    question: 'What is a sensible way to protect important files?',
    options: [
      'Use the same password for every account',
      'Disable all security updates',
      'Keep backups and protect access to them',
      'Open every email attachment',
    ],
    correctIndex: 2,
    explanation:
        'Backups help you recover files after accidental deletion, '
        'device failure, or certain cyberattacks. Protect your '
        'backups from unauthorised access as well.',
  ),
];
