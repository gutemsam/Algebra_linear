apartamentos_3quartos = [3, 4, 5];
apartamentos_2quartos = [7, 4, 3];
apartamentos_1quarto = [8, 8, 9];

total_3quartos = 66;
total_2quartos = 74;
total_1quarto = 136;

possivel = false;

for x = 1:total_3quartos
    for y = 1:total_2quartos
        for z = 1:total_1quarto
            comb_linear = x * apartamentos_3quartos + y * apartamentos_2quartos + z * apartamentos_1quarto;
            if comb_linear(1) == total_3quartos && comb_linear(2) == total_2quartos && comb_linear(3) == total_1quarto
                possivel = true;
                break;
            end
        end
        if possivel
            break;
        end
    end
    if possivel
        break;
    end
end

if possivel
    disp("É possível projetar o prédio de acordo com as especificações.");
else
    disp("Não é possível projetar o prédio de acordo com as especificações.");
end
