#!/bin/bash

ITEM_NAME="Potion"
ITEM_TYPE="Consumable"
ITEM_DESC="A mysterious concoction that is made from bear guts and dragon scales. Heals 20 HP."
item_effect() {
    if [[ "$((PLAYER_HP + 20))" -ge "$PLAYER_HP_MAX" ]]; then
        health_restored=$((PLAYER_HP_MAX - PLAYER_HP))
        PLAYER_HP=$PLAYER_HP_MAX
    else
        health_restored=20
        PLAYER_HP=$((PLAYER_HP + $health_restored))
    fi
    echo "You used $ITEM_NAME, and you restored $health_restored HP. Your HP is now full at $PLAYER_HP/$PLAYER_HP_MAX."
}
ITEM_RARITY="Common"
ITEM_NUMBER=003
ITEM_COST=20
ITEM_SELL=10