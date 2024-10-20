function applyRandomRotation(cardElement) {
    if (Math.random() < 0.3) {
        cardElement.classList.add('rotate-180');
    } else {
        cardElement.classList.remove('rotate-180');
    }
}

window.addEventListener('message', function(event) {
    const data = event.data;

    if (data.action === 'showCards') {
        for (let i = 0; i < data.cards.length; i++) {
            const card = data.cards[i];
            const cardImage = document.getElementById(`card-image-${i + 1}`);
            const cardName = document.getElementById(`card-name-${i + 1}`);
            const cardDescription = document.getElementById(`card-description-${i + 1}`);

            cardImage.src = `images/${card.image}`;
            cardName.innerText = card.name;
            cardDescription.innerText = card.description;

            applyRandomRotation(cardImage);
        }
        document.getElementById('tarot-card').classList.remove('hidden');
    }
});

window.addEventListener('keydown', function(event) {
    if (event.key === "Escape") {
        document.getElementById('tarot-card').classList.add('hidden');

        fetch(`https://${GetParentResourceName()}/close`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({})
        }).then(resp => resp.json()).then(resp => {});
    }
});
