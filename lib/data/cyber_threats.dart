import 'package:flutter/material.dart';
import '../models/cyber_threat.dart';

const List<CyberThreat> cyberThreats = [
  CyberThreat(
    title: 'Phishing',
    summary: 'Deceptive messages designed to steal information.',
    icon: Icons.mark_email_unread_outlined,
    color: Color(0xFFFFB86B),
    whatItIs:
        'Phishing is a scam in which criminals pretend to be a trusted '
        'person or organisation through emails, text messages, calls, or '
        'fake websites. Their goal may be to steal passwords, bank details, '
        'or other personal information.',
    warningSigns: [
      'Unexpected messages asking you to click a link or open an attachment.',
      'Urgent threats, prizes, or requests for immediate action.',
      'Sender addresses or website names that look slightly unusual.',
      'Requests for passwords, payment details, or verification codes.',
    ],
    safetyTips: [
      'Check the sender and website address carefully.',
      'Visit the organisation through its official app or website instead of the message link.',
      'Never share passwords or one-time verification codes.',
      'When unsure, contact the sender through a trusted channel.',
    ],
    ifAffected: [
      'Stop replying and do not enter any more information.',
      'Change any password you entered, using the official website or app.',
      'Contact your bank immediately if you shared financial details.',
      'Report the message and check your account activity.',
    ],
  ),
  CyberThreat(
    title: 'Malware',
    summary: 'Harmful software that can damage devices or steal data.',
    icon: Icons.bug_report_outlined,
    color: Color(0xFFFF7B86),
    whatItIs:
        'Malware means malicious software. It includes viruses, spyware, '
        'and ransomware. Malware may arrive through unsafe downloads, '
        'attachments, fake apps, or compromised websites.',
    warningSigns: [
      'Unexpected pop-ups or unfamiliar apps.',
      'A device suddenly becoming unusually slow or unstable.',
      'Security settings changing without your permission.',
      'Files becoming inaccessible or unusual account activity appearing.',
    ],
    safetyTips: [
      'Install apps from trusted official stores.',
      'Keep your operating system and apps updated.',
      'Avoid unexpected attachments and suspicious downloads.',
      'Use reputable security software where available and keep backups.',
    ],
    ifAffected: [
      'Disconnect the affected device from the internet if you suspect an active infection.',
      'Avoid signing in to sensitive accounts from that device until it is checked.',
      'Use a trusted device to change important passwords if necessary.',
      'Seek help from a trusted technician or security professional.',
    ],
  ),
  CyberThreat(
    title: 'Social Engineering',
    summary: 'Manipulation used to make people reveal information or take risks.',
    icon: Icons.people_alt_outlined,
    color: Color(0xFFC5A3FF),
    whatItIs:
        'Social engineering is when someone manipulates a person into '
        'revealing information, sending money, or giving access. The person '
        'may pretend to be a colleague, support agent, relative, or authority figure.',
    warningSigns: [
      'Someone pressures you to act immediately or keep a request secret.',
      'Requests to bypass normal procedures or security checks.',
      'Unexpected requests for money, passwords, or access codes.',
      'A caller refuses to let you verify their identity independently.',
    ],
    safetyTips: [
      'Pause before acting, especially when a request feels urgent.',
      'Verify the person using a known phone number or official channel.',
      'Never share passwords or verification codes.',
      'Follow normal approval procedures for payments and account access.',
    ],
    ifAffected: [
      'Stop communication with the suspicious person.',
      'Tell the relevant bank, service provider, or organisation.',
      'Change exposed passwords and review account access.',
      'Warn anyone else who may be targeted using the same story.',
    ],
  ),
  CyberThreat(
    title: 'Identity Theft',
    summary: 'Using another person’s personal information without permission.',
    icon: Icons.badge_outlined,
    color: Color(0xFF45C8F5),
    whatItIs:
        'Identity theft occurs when someone obtains and misuses personal '
        'details—such as account credentials, identification information, '
        'or financial data—to impersonate another person or commit fraud.',
    warningSigns: [
      'Login alerts or password reset messages you did not request.',
      'Transactions or accounts you do not recognise.',
      'Notices about services you never signed up for.',
      'Friends receiving strange messages supposedly from you.',
    ],
    safetyTips: [
      'Share personal information only when necessary and with trusted services.',
      'Use unique passwords and enable two-factor authentication.',
      'Limit what you post publicly about yourself.',
      'Secure important documents and check account activity regularly.',
    ],
    ifAffected: [
      'Change compromised passwords and secure your email account first.',
      'Contact your bank or affected service providers.',
      'Keep records of suspicious transactions and messages.',
      'Report suspected fraud to the relevant authorities or service provider.',
    ],
  ),
  CyberThreat(
    title: 'Online Scams',
    summary: 'Fraudulent offers or stories intended to take money or data.',
    icon: Icons.money_off_csred_outlined,
    color: Color(0xFFFFD166),
    whatItIs:
        'Online scams use deception to trick people into sending money, '
        'sharing personal details, or paying for something that does not '
        'exist. They may appear as fake shops, investment offers, job adverts, '
        'romance scams, or giveaway messages.',
    warningSigns: [
      'Promises of guaranteed profits or rewards that seem too good to be true.',
      'Pressure to pay quickly or keep the offer secret.',
      'Requests for unusual payment methods or advance fees.',
      'A seller or organisation has little verifiable information.',
    ],
    safetyTips: [
      'Research sellers and offers independently before paying.',
      'Be cautious of guaranteed returns and advance-fee requests.',
      'Use trusted payment methods and keep transaction records.',
      'Do not rely only on testimonials, screenshots, or social media profiles.',
    ],
    ifAffected: [
      'Stop sending money and save messages, receipts, and account details.',
      'Contact your bank or payment provider as soon as possible.',
      'Change passwords if you shared login details.',
      'Report the scam to the platform and appropriate authorities.',
    ],
  ),
  CyberThreat(
    title: 'Public Wi-Fi Risks',
    summary: 'Risks that can arise when using shared wireless networks.',
    icon: Icons.wifi_rounded,
    color: Color(0xFF20D6A0),
    whatItIs:
        'Public Wi-Fi is available in places such as cafés, airports, and '
        'shopping centres. A network may be poorly secured or impersonated '
        'by someone using a misleading network name. HTTPS helps protect '
        'data in transit, but it does not make every website trustworthy.',
    warningSigns: [
      'Several similar network names with no clear official source.',
      'A network asks for unnecessary personal or account information.',
      'Unexpected login pages or certificate/security warnings.',
      'A connection redirects you to unfamiliar websites.',
    ],
    safetyTips: [
      'Confirm the correct network name with the venue.',
      'Use HTTPS websites and never ignore browser security warnings.',
      'Avoid sensitive transactions on networks you do not trust.',
      'Turn off automatic connection to unknown Wi-Fi networks and use mobile data when appropriate.',
    ],
    ifAffected: [
      'Disconnect from the suspicious network.',
      'Use mobile data or a trusted network to secure important accounts.',
      'Change passwords if you entered them on a suspicious page.',
      'Contact your bank or service provider if sensitive details may be exposed.',
    ],
  ),
];
