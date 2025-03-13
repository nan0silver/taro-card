<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta property="og:title" content="ArcanaFox: 운명을 읽는 타로" />
    <meta
            property="og:description"
            content="당신의 운명을 읽어드립니다."
    />
    <meta
            property="og:image"
            content="https://github.com/nan0silver/taro-card/blob/main/src/main/webapp/assets/taro_fox.jpeg?raw=true"
    />
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/assets/favicon/favicon-96x96.png" sizes="96x96" />
    <link rel="icon" type="image/svg+xml" href="<%=request.getContextPath()%>/assets/favicon/favicon.svg" />
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/favicon/favicon.ico" />
    <link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/assets/favicon/apple-touch-icon.png" />
    <link rel="manifest" href="<%=request.getContextPath()%>/assets/favicon/site.webmanifest" />
    <title>ArcanaFox: 운명을 읽는 타로</title>
    <link href="<%=request.getContextPath()%>/assets/form-style.css" rel="stylesheet">
</head>
<body>
<main>
    <section>
        <h1>✨ArcanaFox: 운명을 읽는 타로 ✨</h1>
        <div class="tarot-card-bg">
            <div class="tarot-card">
                <svg width="120" height="180" viewBox="0 0 120 180">
                    <!-- 카드 배경 - 그라데이션 적용 -->
                    <defs>
                        <linearGradient id="cardGradient" x1="0%" y1="0%" x2="100%" y2="100%">
                            <stop offset="0%" stop-color="#9c27b0" />
                            <stop offset="100%" stop-color="#7b1fa2" />
                        </linearGradient>
                        <linearGradient id="innerGradient" x1="0%" y1="0%" x2="100%" y2="100%">
                            <stop offset="0%" stop-color="#f8bbd0" />
                            <stop offset="100%" stop-color="#f3a6de" />
                        </linearGradient>
                        <filter id="glow" x="-20%" y="-20%" width="140%" height="140%">
                            <feGaussianBlur stdDeviation="3" result="blur" />
                            <feComposite in="SourceGraphic" in2="blur" operator="over" />
                        </filter>
                        <pattern id="starPattern" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
                            <path d="M10 1 L11.5 7 L18 7 L13 11 L15 17 L10 13.5 L5 17 L7 11 L2 7 L8.5 7 Z" fill="#e0b1ea" fill-opacity="0.3" />
                        </pattern>
                    </defs>

                    <!-- 카드 테두리 - 더 부드러운 곡선 -->
                    <rect x="5" y="5" width="110" height="170" rx="10" fill="url(#cardGradient)" />

                    <!-- 내부 카드 - 패턴 추가 -->
                    <rect x="12" y="12" width="96" height="156" rx="6" fill="url(#innerGradient)" stroke="#7b1fa2" stroke-width="2" />
                    <rect x="12" y="12" width="96" height="156" rx="6" fill="url(#starPattern)" />

                    <!-- 장식적인 테두리 -->
                    <rect x="18" y="18" width="84" height="144" rx="4" fill="none" stroke="#9c27b0" stroke-width="1" stroke-dasharray="2,2" />

                    <!-- 달과 별 심볼 -->
                    <path d="M60 45 L70 60 L60 75 L50 60 Z" fill="#7b1fa2" filter="url(#glow)" />

                    <!-- 신비로운 원 -->
                    <circle cx="60" cy="105" r="20" fill="none" stroke="#7b1fa2" stroke-width="2" />
                    <circle cx="60" cy="105" r="15" fill="none" stroke="#b565e5" stroke-width="1" />

                    <!-- 중앙 장식 심볼 -->
                    <path d="M60 90 L65 100 L75 102 L68 110 L70 120 L60 115 L50 120 L52 110 L45 102 L55 100 Z" fill="#9c27b0" filter="url(#glow)" />

                    <!-- 작은 별들 -->
                    <circle cx="35" cy="40" r="2" fill="#f3a6de" />
                    <circle cx="85" cy="40" r="2" fill="#f3a6de" />
                    <circle cx="35" cy="140" r="2" fill="#f3a6de" />
                    <circle cx="85" cy="140" r="2" fill="#f3a6de" />
                </svg>
                <div class="glow-effect"></div>
            </div>
        </div>

    </section>
    <section>
        <form method="post">
            <label for="description">
                설명 입력
            </label>
            <input id="description" type="text" name="description" placeholder="궁금한걸 입력하세요.">
            <button>결과 보기</button>
        </form>


    </section>
</main>

</body>
</html>
