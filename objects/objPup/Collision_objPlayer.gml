


pc.hp = clamp(pc.hp + hpGain, 0, pc.hpMax);
pc.mp = clamp(pc.mp + mpGain, 0, pc.mpMax);
pc.coins = clamp(pc.coins + coinValue, 0, pc.coinsMax);


instance_destroy();