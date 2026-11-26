from django.shortcuts import render
from django.http import HttpResponse

# News database dictionary for rich rendering
NEWS_DATA = {
    'business': {
        'name': 'Business',
        'type': 'business',
        'tagline': 'Markets, Corporate Shifts, Global Finance & Silicon Economy',
        'icon': 'trending-up',
        'accent_color': '#2563eb',
        'msg1': "Nvidia's Jensen Huang says he is in therapy as comeback rally fades",
        'msg2': "Microsoft declares ‘Code Red’ after historic outage, internal memos show",
        'msg3': "US preparing to unveil plan for new tariffs on global trading partners",
        'articles': [
            {
                'id': 1,
                'title': "Nvidia's Jensen Huang says he is in therapy as comeback rally fades",
                'summary': "Semiconductor kingpin shares candid reflections on the emotional toll of market volatility as chip valuations witness unprecedented turbulence.",
                'image': 'images/b1.jpg',
                'category': 'Markets & AI',
                'tag': 'Trending Tech',
                'date': '25 Nov 2026',
                'read_time': '4 min read',
                'author': 'Financial Bureau',
                'is_lead': True,
            },
            {
                'id': 2,
                'title': "Microsoft declares ‘Code Red’ after historic outage, internal memos show",
                'summary': "Emergency engineering taskforces assemble worldwide after an unprecedented cloud telemetry failure ripples across Fortune 500 infrastructure.",
                'image': 'images/b2.jpg',
                'category': 'Cloud & Enterprise',
                'tag': 'Exclusive',
                'date': '24 Nov 2026',
                'read_time': '3 min read',
                'author': 'Cyber Desk',
                'is_lead': False,
            },
            {
                'id': 3,
                'title': "US preparing to unveil plan for new tariffs on global trading partners",
                'summary': "Trade officials finalize aggressive protectionist framework set to disrupt international maritime logistics and component supply chains.",
                'image': 'images/b3.jpg',
                'category': 'Global Trade',
                'tag': 'Policy Alert',
                'date': '24 Nov 2026',
                'read_time': '5 min read',
                'author': 'Global Economics',
                'is_lead': False,
            },
        ]
    },
    'sports': {
        'name': 'Sports',
        'type': 'sports',
        'tagline': 'Cricket Fireworks, Auction Blockbusters & Legendary Milestones',
        'icon': 'activity',
        'accent_color': '#16a34a',
        'msg1': "Records tumble as Indian teen Sooryavanshi smashes 53-ball 204 against UAE",
        'msg2': "Ben Stokes registers for IPL 2027 auction, 12 Bangladesh players also listed",
        'msg3': "Dohni Retired on 19 Nov 2026",
        'articles': [
            {
                'id': 1,
                'title': "Records tumble as Indian teen Sooryavanshi smashes 53-ball 204 against UAE",
                'summary': "In an awe-inspiring masterclass of boundary hitting, 14-year-old batting sensation smashes the fastest double-hundred in recorded competitive history.",
                'image': 'images/sports.jpg',
                'category': 'Cricket Records',
                'tag': 'World Record',
                'date': '25 Nov 2026',
                'read_time': '3 min read',
                'author': 'Sports Bureau',
                'is_lead': True,
            },
            {
                'id': 2,
                'title': "Ben Stokes registers for IPL 2027 auction, 12 Bangladesh players also listed",
                'summary': "The English all-rounder re-enters the premier franchise tournament auction pool with highest base price alongside twelve prominent subcontinent stars.",
                'image': 'images/sports2.webp',
                'category': 'IPL 2027',
                'tag': 'Mega Auction',
                'date': '24 Nov 2026',
                'read_time': '2 min read',
                'author': 'Cricket Correspondent',
                'is_lead': False,
            },
            {
                'id': 3,
                'title': "Dohni Retired on 19 Nov 2026",
                'summary': "Captain Cool bids his final emotional farewell to the game, concluding one of the most celebrated and decorated careers in modern sporting folklore.",
                'image': 'images/sports3.webp',
                'category': 'Cricket Legends',
                'tag': 'Farewell',
                'date': '19 Nov 2026',
                'read_time': '6 min read',
                'author': 'Senior Cricket Editor',
                'is_lead': False,
            },
        ]
    },
    'entertainment': {
        'name': 'Entertainment',
        'type': 'entertainment',
        'tagline': 'Cinema, OTT Controversies, International Galas & Oscar Buzz',
        'icon': 'film',
        'accent_color': '#9333ea',
        'msg1': "Pakistani Netflix series starring Fawad Khan, Mahira Khan faces opposition in India, AICWA urges PM Modi to stop December 4 release",
        'msg2': "Michael B Jordan acknowledges Dadasaheb Phalke International Film Festival award for Sinners",
        'msg3': "Dune Nominated for Oscars",
        'articles': [
            {
                'id': 1,
                'title': "Pakistani Netflix series starring Fawad Khan, Mahira Khan faces opposition in India, AICWA urges PM Modi to stop December 4 release",
                'summary': "Cross-border cultural streaming project sparks heated diplomatic and film council debates ahead of its slated worldwide digital premiere.",
                'image': 'images/entertainment.png',
                'category': 'OTT & Cinema',
                'tag': 'Spotlight',
                'date': '25 Nov 2026',
                'read_time': '4 min read',
                'author': 'Showbiz Desk',
                'is_lead': True,
            },
            {
                'id': 2,
                'title': "Michael B Jordan acknowledges Dadasaheb Phalke International Film Festival award for Sinners",
                'summary': "Hollywood actor expresses profound gratitude in an emotional video message after receiving India's premier cinema honors for his vampire epic.",
                'image': 'images/entertainment2.avif',
                'category': 'Hollywood & Awards',
                'tag': 'Global Honor',
                'date': '24 Nov 2026',
                'read_time': '3 min read',
                'author': 'Cinema Bureau',
                'is_lead': False,
            },
            {
                'id': 3,
                'title': "Dune Nominated for Oscars",
                'summary': "Denis Villeneuve's cinematic tour de force secures nominations across major Academy categories including Best Picture, Visual Effects and Score.",
                'image': 'images/entertainment3.avif',
                'category': 'Oscars 2027',
                'tag': 'Academy Awards',
                'date': '23 Nov 2026',
                'read_time': '5 min read',
                'author': 'Film Critic',
                'is_lead': False,
            },
        ]
    }
}

GLOBAL_TICKER = [
    "ASATYA TAK EXCLUSIVE: Jensen Huang jokes he is seeking therapy amid volatile semiconductor rally",
    "CRICKET HISTORY: 14-year-old teen prodigy Sooryavanshi blazes a 53-ball 204 against UAE",
    "ENTERTAINMENT CONTROVERSY: Netflix cross-border Fawad-Mahira series faces release hurdles in India",
    "LEGEND BOWS OUT: MS Dhoni retires on 19 Nov 2026, marking end of an iconic golden era",
    "GLOBAL COMMERCE: US readies comprehensive tariff blueprints impacting global trade corridors",
]

def home_view(request):
    featured_categories = [
        {
            'name': 'Business',
            'type': 'business',
            'url_name': 'business',
            'headline': NEWS_DATA['business']['msg1'],
            'lead_article': NEWS_DATA['business']['articles'][0],
            'count': len(NEWS_DATA['business']['articles']),
            'color': '#2563eb',
            'accent_bg': 'bg-blue',
        },
        {
            'name': 'Sports',
            'type': 'sports',
            'url_name': 'sports',
            'headline': NEWS_DATA['sports']['msg1'],
            'lead_article': NEWS_DATA['sports']['articles'][0],
            'count': len(NEWS_DATA['sports']['articles']),
            'color': '#16a34a',
            'accent_bg': 'bg-green',
        },
        {
            'name': 'Entertainment',
            'type': 'entertainment',
            'url_name': 'entertainment',
            'headline': NEWS_DATA['entertainment']['msg1'],
            'lead_article': NEWS_DATA['entertainment']['articles'][0],
            'count': len(NEWS_DATA['entertainment']['articles']),
            'color': '#9333ea',
            'accent_bg': 'bg-purple',
        },
    ]

    all_recent_articles = [
        NEWS_DATA['business']['articles'][0],
        NEWS_DATA['sports']['articles'][0],
        NEWS_DATA['entertainment']['articles'][0],
        NEWS_DATA['business']['articles'][1],
        NEWS_DATA['sports']['articles'][1],
        NEWS_DATA['entertainment']['articles'][1],
    ]

    context = {
        'page_title': 'Home | Asatya Tak - Yeh Hai Jhooth Ki Duniya',
        'active_tab': 'home',
        'ticker_items': GLOBAL_TICKER,
        'featured_categories': featured_categories,
        'recent_articles': all_recent_articles,
        'hero_article': NEWS_DATA['business']['articles'][0],
    }
    return render(request, 'newsapp/home.html', context)

def business_view(request):
    cat = NEWS_DATA['business']
    context = {
        'msg1': cat['msg1'],
        'msg2': cat['msg2'],
        'msg3': cat['msg3'],
        'type': cat['type'],
        'category_name': cat['name'],
        'tagline': cat['tagline'],
        'articles': cat['articles'],
        'active_tab': 'business',
        'ticker_items': [cat['msg1'], cat['msg2'], cat['msg3']] + GLOBAL_TICKER[:2],
        'page_title': 'Business News | Asatya Tak',
    }
    return render(request, 'newsapp/news.html', context)

def sports_view(request):
    cat = NEWS_DATA['sports']
    context = {
        'msg1': cat['msg1'],
        'msg2': cat['msg2'],
        'msg3': cat['msg3'],
        'type': cat['type'],
        'category_name': cat['name'],
        'tagline': cat['tagline'],
        'articles': cat['articles'],
        'active_tab': 'sports',
        'ticker_items': [cat['msg1'], cat['msg2'], cat['msg3']] + GLOBAL_TICKER[:2],
        'page_title': 'Sports News | Asatya Tak',
    }
    return render(request, 'newsapp/news.html', context)

def entertainment_view(request):
    cat = NEWS_DATA['entertainment']
    context = {
        'msg1': cat['msg1'],
        'msg2': cat['msg2'],
        'msg3': cat['msg3'],
        'type': cat['type'],
        'category_name': cat['name'],
        'tagline': cat['tagline'],
        'articles': cat['articles'],
        'active_tab': 'entertainment',
        'ticker_items': [cat['msg1'], cat['msg2'], cat['msg3']] + GLOBAL_TICKER[:2],
        'page_title': 'Entertainment News | Asatya Tak',
    }
    return render(request, 'newsapp/news.html', context)
