

#9. general method to check number of sets in any size deck.
def countSets(deck)
        count=0
        for card1 in deck
                for card2 in deck
                        for card3 in deck
                                unless card1==card2 or card2==card3 or card3==card1
                                        count+=1 if set? card1,card2,card3
                                end
                        end
                end
        end
end

#10. used by computer player to find an answer. returns array of 3 cards.
def computerFindAnswer(deck)
        for card1 in deck
                for card2 in deck
                        for card3 in deck
                                unless (card1==card2) or (card2==card3) or (card3==card1)
                                        return [card1,card2,card3] if set? card1,card2,card3
                                end
                        end
                end
        end
end







