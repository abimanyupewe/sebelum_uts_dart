import 'package:flutter/material.dart';
import 'package:sebelum_uts_dart/latihan/per5.dart';
import 'package:sebelum_uts_dart/latihan/pert3.dart';
import 'package:sebelum_uts_dart/tugas/praktikum_4.dart';

class DataContent {
  DataContent();

  final List<Map<String, dynamic>> content = [
    {
      'id': 1,
      'img': 'https://picsum.photos/400/300?random=1',
      'title': 'Beautiful sunset at the beach',
      'caption': 'Perfect evening with amazing colors in the sky! #sunset #beach #nature',
      'like_count': 245,
      'comment_count': 18,
      'comments': [
        {'user': 'sarah_photos', 'text': 'Stunning shot! 😍', 'profile_pic': 'https://picsum.photos/40/40?random=11'},
        {'user': 'beach_lover', 'text': 'Where is this place?', 'profile_pic': 'https://picsum.photos/40/40?random=12'},
        {'user': 'nature_addict', 'text': 'Amazing colors! 🧡❤️', 'profile_pic': 'https://picsum.photos/40/40?random=13'}
      ]
    },
    {
      'id': 2,
      'img': 'https://picsum.photos/400/300?random=2',
      'title': 'Coffee and coding session',
      'caption': 'Late night coding with my favorite coffee. Building something amazing! #coding #coffee #developer',
      'like_count': 189,
      'comment_count': 25,
      'comments': [
        {'user': 'dev_life', 'text': 'Same here! What are you building?', 'profile_pic': 'https://picsum.photos/40/40?random=14'},
        {'user': 'coffee_addict', 'text': 'Perfect combination! ☕', 'profile_pic': 'https://picsum.photos/40/40?random=15'},
        {'user': 'programmer_girl', 'text': 'Mood! Keep grinding 💪', 'profile_pic': 'https://picsum.photos/40/40?random=16'}
      ]
    },
    {
      'id': 3,
      'img': 'https://picsum.photos/400/300?random=3',
      'title': 'Weekend hiking adventure',
      'caption': 'Reached the summit after 3 hours of hiking. The view was worth every step! #hiking #adventure #mountains',
      'like_count': 312,
      'comment_count': 42,
      'comments': [
        {'user': 'mountain_climber', 'text': 'Which trail did you take?', 'profile_pic': 'https://picsum.photos/40/40?random=17'},
        {'user': 'outdoor_enthusiast', 'text': 'Incredible view! 🏔️', 'profile_pic': 'https://picsum.photos/40/40?random=18'},
        {'user': 'hiking_buddy', 'text': 'Take me next time! 😊', 'profile_pic': 'https://picsum.photos/40/40?random=19'}
      ]
    },
    {
      'id': 4,
      'img': 'https://picsum.photos/400/300?random=4',
      'title': 'Homemade pasta night',
      'caption': 'Spent the afternoon making fresh pasta from scratch. Nothing beats homemade! #cooking #pasta #homemade',
      'like_count': 156,
      'comment_count': 31,
      'comments': [
        {'user': 'foodie_life', 'text': 'Recipe please! 🙏', 'profile_pic': 'https://picsum.photos/40/40?random=20'},
        {'user': 'chef_wannabe', 'text': 'Looks delicious!', 'profile_pic': 'https://picsum.photos/40/40?random=21'},
        {'user': 'pasta_lover', 'text': 'Making me hungry! 😋', 'profile_pic': 'https://picsum.photos/40/40?random=22'}
      ]
    },
    {
      'id': 5,
      'img': 'https://picsum.photos/400/300?random=5',
      'title': 'New book arrived today',
      'caption': 'Finally got my hands on this bestseller! Can\'t wait to dive in tonight. #reading #books #bookworm',
      'like_count': 98,
      'comment_count': 15,
      'comments': [
        {'user': 'book_reviewer', 'text': 'Great choice! You\'ll love it', 'profile_pic': 'https://picsum.photos/40/40?random=23'},
        {'user': 'reading_corner', 'text': 'Added to my wishlist!', 'profile_pic': 'https://picsum.photos/40/40?random=24'},
        {'user': 'bookclub_member', 'text': 'We should discuss this! 📖', 'profile_pic': 'https://picsum.photos/40/40?random=25'}
      ]
    },
    {
      'id': 6,
      'img': 'https://picsum.photos/400/300?random=6',
      'title': 'Morning workout complete',
      'caption': '6 AM gym session done! Starting the day with energy and good vibes 💪 #fitness #workout #morningmotivation',
      'like_count': 234,
      'comment_count': 28,
      'comments': [
        {'user': 'fitness_coach', 'text': 'Keep it up! 🔥', 'profile_pic': 'https://picsum.photos/40/40?random=26'},
        {'user': 'gym_buddy', 'text': 'You inspire me to wake up early!', 'profile_pic': 'https://picsum.photos/40/40?random=27'},
        {'user': 'wellness_warrior', 'text': 'Morning workouts hit different! 💯', 'profile_pic': 'https://picsum.photos/40/40?random=28'}
      ]
    },
    {
      'id': 7,
      'img': 'https://picsum.photos/400/300?random=7',
      'title': 'Cute puppy at the park',
      'caption': 'Met this adorable golden retriever at the park today. Made my whole day! #dogs #puppy #parkday',
      'like_count': 445,
      'comment_count': 67,
      'comments': [
        {'user': 'dog_lover', 'text': 'Awww so precious! 🥺', 'profile_pic': 'https://picsum.photos/40/40?random=29'},
        {'user': 'golden_retriever_fan', 'text': 'They are the best breed!', 'profile_pic': 'https://picsum.photos/40/40?random=30'},
        {'user': 'pet_photographer', 'text': 'Perfect shot! 📸', 'profile_pic': 'https://picsum.photos/40/40?random=31'}
      ]
    },
    {
      'id': 8,
      'img': 'https://picsum.photos/400/300?random=8',
      'title': 'Art project finally finished!',
      'caption': 'Spent weeks working on this painting. Really happy with how it turned out! #art #painting #creative',
      'like_count': 178,
      'comment_count': 22,
      'comments': [
        {'user': 'art_critic', 'text': 'Beautiful work! Love the colors', 'profile_pic': 'https://picsum.photos/40/40?random=32'},
        {'user': 'fellow_artist', 'text': 'Inspiring! What medium?', 'profile_pic': 'https://picsum.photos/40/40?random=33'},
        {'user': 'art_collector', 'text': 'Absolutely stunning! 🎭', 'profile_pic': 'https://picsum.photos/40/40?random=34'}
      ]
    },
    {
      'id': 9,
      'img': 'https://picsum.photos/400/300?random=9',
      'title': 'City lights at night',
      'caption': 'Love how the city comes alive after dark. The energy is incredible! #citylife #nightphotography #urban',
      'like_count': 267,
      'comment_count': 33,
      'comments': [
        {'user': 'night_photographer', 'text': 'Great composition!', 'profile_pic': 'https://picsum.photos/40/40?random=35'},
        {'user': 'city_explorer', 'text': 'Which city is this?', 'profile_pic': 'https://picsum.photos/40/40?random=36'},
        {'user': 'urban_life', 'text': 'The lights are magical! ✨', 'profile_pic': 'https://picsum.photos/40/40?random=37'}
      ]
    },
    {
      'id': 10,
      'img': 'https://picsum.photos/400/300?random=10',
      'title': 'Fresh flowers from the garden',
      'caption': 'Spring has arrived! My garden is blooming beautifully this year. Nature is amazing! #flowers #garden #spring',
      'like_count': 203,
      'comment_count': 19,
      'comments': [
        {'user': 'garden_enthusiast', 'text': 'Your garden looks amazing!', 'profile_pic': 'https://picsum.photos/40/40?random=38'},
        {'user': 'flower_power', 'text': 'So pretty! What varieties? 🌺', 'profile_pic': 'https://picsum.photos/40/40?random=39'},
        {'user': 'nature_photographer', 'text': 'Perfect spring vibes! 🌷', 'profile_pic': 'https://picsum.photos/40/40?random=40'}
      ]
    }
  ];
}
