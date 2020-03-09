function pile = moveSand(moveRow, moveCol, pile)

wave = [0,0,0;0,-1,1;0,0,0];
pile_box = zeros(size(pile,1)+2);
pile_box(2:end-1,2:end-1) = pile;
pile_box(moveRow:moveRow+2,moveCol:moveCol+2) = ...
    pile_box(moveRow:moveRow+2,moveCol:moveCol+2) + wave;
pile = pile_box(2:end-1,2:end-1);