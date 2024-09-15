const announcementTexts = document.querySelectorAll(".announcement-text");

for (let announcementText of announcementTexts) {
    $clamp(announcementText, {clamp: 3});
}