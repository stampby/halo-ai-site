// Language wheel — click to lock, saves preference
function lockLang(lang, e) {
    e.preventDefault();
    localStorage.setItem('halo-lang', lang);
    document.querySelectorAll('.lang-wheel a').forEach(a => a.classList.remove('lang-locked'));
    e.target.classList.add('lang-locked');
    // Brief flash then navigate
    e.target.style.textShadow = '0 0 20px rgba(0,212,255,0.8)';
    setTimeout(() => { window.location.href = '/' + lang + '/'; }, 300);
}

// On page load, check saved language preference
(function() {
    const saved = localStorage.getItem('halo-lang');
    if (saved && !window.location.pathname.startsWith('/' + saved)) {
        // Only redirect on first visit to root
        if (window.location.pathname === '/') {
            window.location.href = '/' + saved + '/';
        }
    }
    // Scroll wheel support on language selector
    const wheel = document.getElementById('langWheel');
    if (wheel) {
        wheel.addEventListener('wheel', function(e) {
            e.preventDefault();
            const items = [...wheel.querySelectorAll('a')];
            const current = items.findIndex(a => a.classList.contains('lang-locked'));
            let next;
            if (e.deltaY > 0) {
                next = Math.min(current + 1, items.length - 1);
            } else {
                next = Math.max(current - 1, 0);
            }
            if (next !== current && next >= 0) {
                items.forEach(a => a.classList.remove('lang-locked'));
                items[next].classList.add('lang-locked');
                // Visual feedback
                items[next].style.textShadow = '0 0 15px rgba(0,212,255,0.6)';
                setTimeout(() => { items[next].style.textShadow = ''; }, 500);
            }
        });
    }
})();

// Halo Orb — public site voice interaction (inquiries only)
let chatOpen = false;

function openHaloChat() {
    const orb = document.getElementById('haloOrb');
    const dialog = document.getElementById('haloChatDialog');
    const label = document.getElementById('orbLabel');

    if (chatOpen) { closeHaloChat(); return; }

    chatOpen = true;
    orb.classList.add('listening');
    label.textContent = 'listening...';
    document.getElementById('haloChatUser').textContent = '';
    document.getElementById('haloChatResponse').textContent = 'listening...';
    dialog.classList.remove('fadeout');
    dialog.classList.add('show');

    if ('webkitSpeechRecognition' in window || 'SpeechRecognition' in window) {
        const SR = window.SpeechRecognition || window.webkitSpeechRecognition;
        const rec = new SR();
        rec.continuous = false;
        rec.interimResults = true;

        rec.onresult = function(e) {
            let text = '';
            for (let i = 0; i < e.results.length; i++) text += e.results[i][0].transcript;
            document.getElementById('haloChatUser').textContent = '"' + text + '"';
            if (e.results[0].isFinal) {
                orb.classList.remove('listening');
                label.textContent = 'halo';
                answerLocally(text);
            }
        };
        rec.onerror = function() {
            orb.classList.remove('listening');
            document.getElementById('haloChatResponse').textContent = 'could not hear you. try again.';
            setTimeout(closeHaloChat, 3000);
        };
        rec.onend = function() {
            if (orb.classList.contains('listening')) {
                orb.classList.remove('listening');
                document.getElementById('haloChatResponse').textContent = 'silence. click again.';
                setTimeout(closeHaloChat, 2500);
            }
        };
        rec.start();
    } else {
        document.getElementById('haloChatResponse').innerHTML =
            '<input id="haloInput" type="text" placeholder="ask halo anything..." ' +
            'style="background:transparent;border:1px solid rgba(0,212,255,0.3);border-radius:8px;' +
            'padding:8px 12px;color:#e0e0e8;width:100%;font-size:14px;outline:none;" ' +
            'onkeydown="if(event.key===\'Enter\'){answerLocally(this.value);this.disabled=true;}">';
        setTimeout(() => document.getElementById('haloInput')?.focus(), 100);
    }
}

function answerLocally(question) {
    const q = question.toLowerCase();
    let answer = '';
    let link = '';

    // Route based on keywords
    if (q.includes('install') || q.includes('setup') || q.includes('get started') || q.includes('download')) {
        answer = 'Installation guide is ready. One command, under 5 minutes.';
        link = '/install/';
    } else if (q.includes('agent') || q.includes('family') || q.includes('who')) {
        answer = '27 agents. Each with a role and a purpose. Meet them.';
        link = '/agents/';
    } else if (q.includes('benchmark') || q.includes('speed') || q.includes('fast') || q.includes('tok')) {
        answer = '87 tok/s on Qwen3-30B-A3B. Vulkan + Flash Attention. Bare metal.';
        link = 'https://github.com/stampby/halo-ai/blob/main/BENCHMARKS.md';
    } else if (q.includes('game') || q.includes('boiler') || q.includes('play')) {
        answer = 'halo-ai Studios presents The Halos. First game: Boiler Life. Coming soon.';
        link = '/games/';
    } else if (q.includes('voice') || q.includes('clone') || q.includes('tts') || q.includes('audio') || q.includes('music')) {
        answer = 'Voice cloning, TTS, audiobooks, music production. All local. Your voice never leaves your hardware.';
        link = '/voice/';
    } else if (q.includes('discord') || q.includes('community') || q.includes('join') || q.includes('chat')) {
        answer = '7 bots, 24/7. Every language. Join the family.';
        link = 'https://discord.gg/dSyV646eBs';
    } else if (q.includes('doc') || q.includes('help') || q.includes('guide') || q.includes('learn')) {
        answer = 'Full documentation. Architecture, services, security, troubleshooting.';
        link = '/docs/';
    } else if (q.includes('github') || q.includes('code') || q.includes('source') || q.includes('repo')) {
        answer = '49 repos. Half a million lines. All open source.';
        link = 'https://github.com/stampby/halo-ai';
    } else if (q.includes('security') || q.includes('privacy') || q.includes('safe')) {
        answer = 'Zero cloud. Zero data retention. Your data never leaves your network. Privacy by architecture.';
        link = '/docs/';
    } else if (q.includes('blog') || q.includes('news') || q.includes('log')) {
        answer = "Echo's Log. News, digests, dispatches from the family.";
        link = '/blog/';
    } else if (q.includes('hello') || q.includes('hi') || q.includes('hey')) {
        answer = "I'm Halo. I run things. What do you need?";
    } else {
        answer = 'I hear you. Try asking about install, agents, benchmarks, voice, games, or docs.';
    }

    document.getElementById('haloChatResponse').textContent = answer;

    if (link) {
        setTimeout(() => { window.location.href = link; }, 3000);
    } else {
        setTimeout(closeHaloChat, 5000);
    }
}

function closeHaloChat() {
    const dialog = document.getElementById('haloChatDialog');
    const orb = document.getElementById('haloOrb');
    dialog.classList.add('fadeout');
    orb.classList.remove('listening');
    document.getElementById('orbLabel').textContent = 'click to speak';
    setTimeout(() => {
        dialog.classList.remove('show', 'fadeout');
        chatOpen = false;
    }, 500);
}

document.addEventListener('click', function(e) {
    if (chatOpen && !e.target.closest('#haloChatDialog') && !e.target.closest('#haloOrb')) {
        closeHaloChat();
    }
});
