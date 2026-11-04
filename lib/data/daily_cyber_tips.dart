import 'package:flutter/material.dart';
import '../models/cyber_tip.dart';

const List<CyberTip> dailyCyberTips = [
  CyberTip(
    title: 'Think before you click',
    summary: 'Unexpected links can lead to fake websites designed to steal your information.',
    details: 'Before opening a link, check who sent it and whether the web address looks right. Be cautious with messages that create urgency, promise surprising rewards, or ask you to sign in. If unsure, visit the service through its official app or type its known address yourself.',
    icon: Icons.link_rounded,
  ),
  CyberTip(
    title: 'Use a unique password for every account',
    summary: 'Reusing passwords can put several accounts at risk at once.',
    details: 'If one website is breached, criminals may try the same password on your email, social media, and other accounts. Use a different, long password for each account. A trusted password manager can help you keep track of them.',
    icon: Icons.password_rounded,
  ),
  CyberTip(
    title: 'Turn on two-factor authentication',
    summary: 'An extra sign-in step can help protect your account if a password is stolen.',
    details: 'Where available, enable two-factor authentication (2FA) or multi-factor authentication. It asks for another proof of identity in addition to your password. Never share login codes with anyone who contacts you unexpectedly.',
    icon: Icons.verified_user_rounded,
  ),
  CyberTip(
    title: 'Keep your apps and devices updated',
    summary: 'Updates often fix security weaknesses that attackers could exploit.',
    details: 'Install updates for your phone, computer, browser, and apps from their official update settings or trusted stores. When practical, enable automatic updates so important security fixes are not delayed.',
    icon: Icons.system_update_alt_rounded,
  ),
  CyberTip(
    title: 'Never share a one-time password',
    summary: 'A real support agent should not need you to tell them your verification code.',
    details: 'One-time passwords and sign-in codes can allow someone to access your account or approve a transaction. Do not read them to callers or send them in chats, even if the person claims to be from your bank or a familiar company. Contact the organisation using an official channel if you are worried.',
    icon: Icons.lock_rounded,
  ),
  CyberTip(
    title: 'Be careful with public Wi-Fi',
    summary: 'Avoid sensitive transactions on networks you do not trust.',
    details: 'Confirm the network name with the venue before connecting, and avoid unexpected Wi-Fi sign-in pages. Keep sharing turned off and use your mobile connection for sensitive tasks when possible. A network name alone does not prove that a hotspot is legitimate.',
    icon: Icons.wifi_rounded,
  ),
  CyberTip(
    title: 'Check privacy settings regularly',
    summary: 'Share less personal information publicly whenever you can.',
    details: 'Review who can see your posts, profile details, location, and contact information. Be thoughtful about quizzes or posts that reveal personal details that might also be used to guess passwords or answer account recovery questions.',
    icon: Icons.privacy_tip_rounded,
  ),
  CyberTip(
    title: 'Pause when a message creates panic',
    summary: 'Scammers often pressure people to act before they have time to think.',
    details: 'Messages claiming that an account will be closed immediately, a payment must be made urgently, or a prize will disappear can be designed to rush you. Pause, verify the claim through an official app or contact method, and do not use the contact details supplied in a suspicious message.',
    icon: Icons.pause_circle_filled_rounded,
  ),
];
