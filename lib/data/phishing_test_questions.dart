import '../models/phishing_test_question.dart';

const List<PhishingTestQuestion> phishingTestQuestions = [
  PhishingTestQuestion(
    message:
        'You receive an unexpected message: “Your package is delayed. Pay a small fee using this link now.” What is the safest response?',
    options: [
      'Tap the link because delivery companies charge fees.',
      'Check the delivery using the company’s official app or website.',
      'Reply with your card details to confirm your identity.',
      'Forward the message to friends to ask them to pay.',
    ],
    correctIndex: 1,
    explanation:
        'Unexpected payment links can be used for phishing. Check the shipment independently through an official channel.',
  ),
  PhishingTestQuestion(
    message:
        'A message says your account will be deleted unless you provide the OTP you just received. What should you do?',
    options: [
      'Share the OTP if the sender knows your name.',
      'Send the OTP, then change your password later.',
      'Never share the OTP; open the official app or contact the service directly.',
      'Post the OTP in a group so someone can verify it.',
    ],
    correctIndex: 2,
    explanation:
        'An OTP can authorise access or a transaction. Never share it with someone who contacts you unexpectedly.',
  ),
  PhishingTestQuestion(
    message:
        'Your friend sends you a strange link with the message “Watch this now!” What is the best next step?',
    options: [
      'Open it because it came from your friend.',
      'Enter your social media password if asked.',
      'Download any file the page offers.',
      'Verify with your friend through another channel before opening it.',
    ],
    correctIndex: 3,
    explanation:
        'Your friend’s account may have been compromised. Confirm the message independently and avoid signing in through unexpected links.',
  ),
  PhishingTestQuestion(
    message:
        'Which web address should make you most cautious when a message claims to be from your bank?',
    options: [
      'An unfamiliar address with extra words or misspellings.',
      'The official address you typed yourself from a trusted source.',
      'The bank’s official app opened from your phone.',
      'A phone number printed on your bank card.',
    ],
    correctIndex: 0,
    explanation:
        'Lookalike addresses can imitate real organisations. Avoid message links and navigate to the official service yourself.',
  ),
  PhishingTestQuestion(
    message:
        'You entered your password on a page you now suspect was fake. What should you do first?',
    options: [
      'Ignore it unless money disappears.',
      'Change the password through the official service and change it anywhere else you reused it.',
      'Reply to the suspicious message and ask if it was real.',
      'Keep using the same password to avoid forgetting it.',
    ],
    correctIndex: 1,
    explanation:
        'Act quickly through the real service. Update reused passwords, enable multi-factor authentication where possible, and report the incident.',
  ),
];
