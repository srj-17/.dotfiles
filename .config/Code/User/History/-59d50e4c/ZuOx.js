var announcements = Array.from(document.querySelectorAll('.announcement-text'));

for (const announcement of announcements) {
    $clamp(announcement, {clamp: 3});
}