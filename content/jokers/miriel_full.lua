local joker = SMODS.Joker {
    key = 'miriel_fa',
    discovered = true,
    loc_txt = {
      name = 'Miriel (Full Art)',
      text = {
        "{C:mult}+#1#{} Mult per consumable."
      }
    },
    config = { 
      extra = {
        mult = 15,
        odds = 6
      }
    },
    loc_vars = function(self, info_queue, card)
      return { vars = { card.ability.extra.mult, card.ability.extra.odds } }
    end,
    rarity = 1,
    atlas = 'card_sprites',
    pos = { x = 1, y = 0 },
    cost = 15,
    calculate = function(self, card, context)
      if context.joker_main then
        return {
          mult_mod = card.ability.extra.mult * #G.consumeables.cards,
          message = localize { type = 'variable', key = 'a_mult', vars = { card.ability.extra.mult * #G.consumeables.cards } }
        }
      end
    end
  }

  return joker