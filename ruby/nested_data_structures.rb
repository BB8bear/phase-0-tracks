closet = {
    hanging_rack: {
        hangers: [
            "dresses",
            "dress shirts",
            "pants",
            "blouses"
        ],
        garment_bags: [
            "suit",
            "dress pants",
            "vests"
        ]
    },
    shoe_rack: [
        "black slip-ons",
        "snow boots",
        "sandals",
        "sneakers",
        "heels"
    ],
    storage_bins: {
        tshirts: [ 
            "space t-shirts",
            "gamer t-shirts",
            "solid t-shirts"
        ],
        scarves: [
            "solid",
            "floral",
            "plaid",
            "wool"
            ],
        hats: [
            "top hat",
            "fedora",
            "baseball hat",
            "winter cap",
            "beret"
        ]
    }
}

p closet
p closet[:storage_bins][:hats]
p closet[:storage_bins][:scarves][2]
closet[:hanging_rack][:hangers].push("jackets")
p closet
p closet[:hanging_rack][:hangers][-1]
p closet[:shoe_rack]