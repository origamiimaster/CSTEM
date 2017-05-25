string_t sqr1="1", sqr2="2", sqr3="3", sqr4="4", sqr5="5", sqr6="6", sqr7="7", sqr8="8", sqr9="9";
int x;
printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to palce your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
scanf("%d", &x);

switch x{
    case 1:
        sqr1="X";
        break;
    case 2:
        sqr2="X";
        break;
    case 3:
        sqr3="X";
        break;
    case 4:
        sqr4="X";
        break;
    case 5:
        sqr5="X";
        break;
    case 6:
        sqr6="X";
        break;
    case 7:
        sqr7="X";
        break;
    case 8:
        sqr8="X";
        break;
    case 9:
        sqr9="X";
        break;
    default:
        printf("That number is an invalid square");
        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to palce your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
        scanf("%d", &x);
}
switch x{
    case 1:
        sqr5="O";
        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to palce your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
        scanf("%d", &x);
        switch x{
            case 3:
                sqr3="X";
                sqr2="O";
                printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to palce your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                scanf("%d", &x);
                switch x{
                    case 4:
                        sqr4="X";
                        sqr8="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 6:
                        sqr6="X";
                        sqr8="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 7:
                        sqr7="X";
                        sqr8="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 9:
                        sqr9="X";
                        sqr8="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 8:
                        sqr8="X";
                        sqr6="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        scanf("%d", &x);
                            switch x{
                                case 7:
                                    sqr7="X";
                                    sqr4="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 9:
                                    sqr9="X";
                                    sqr4="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 4:
                                    sqr4="X";
                                    sqr7="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    scanf("%d", &x);
                                    sqr9="X";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nIt is a tie.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                }
                        break;
                }
                break;
            case 9:
                sqr9="X";
                sqr6="O";
                printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to palce your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                scanf("%d", &x);
                switch x{
                    case 2:
                        sqr2="X";
                        sqr4="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 3:
                        sqr3="X";
                        sqr4="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 7:
                        sqr7="X";
                        sqr4="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 8:
                        sqr8="X";
                        sqr4="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 4:
                        sqr4="X";
                        sqr7="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        scanf("%d", &x);
                            switch x{
                                case 2:
                                    sqr2="X";
                                    sqr3="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 8:
                                    sqr2="X";
                                    sqr3="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 3:
                                    sqr3="X";
                                    sqr2="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    scanf("%d", &x);
                                    sqr8="X";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nIt is a tie.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                }
                        break;
                }
                break;
            case 7:
                sqr7="X";
                sqr4="O";
                printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to palce your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                scanf("%d", &x);
                switch x{
                    case 2:
                        sqr2="X";
                        sqr6="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 8:
                        sqr8="X";
                        sqr6="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 3:
                        sqr3="X";
                        sqr6="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 9:
                        sqr9="X";
                        sqr6="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 6:
                        sqr6="X";
                        sqr8="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        scanf("%d", &x);
                            switch x{
                                case 3:
                                    sqr3="X";
                                    sqr2="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 9:
                                    sqr9="X";
                                    sqr2="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 2:
                                    sqr2="X";
                                    sqr3="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    scanf("%d", &x);
                                    sqr9="X";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nIt is a tie.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                }
                        break;
                }
                break;
            case 2:
                sqr2="X";
                sqr3="O";
                printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to palce your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                scanf("%d", &x);
                switch x{
                    case 4:
                        sqr4="X";
                        sqr7="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 6:
                        sqr6="X";
                        sqr7="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 8:
                        sqr8="X";
                        sqr7="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 9:
                        sqr9="X";
                        sqr7="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 7:
                        sqr7="X";
                        sqr4="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        scanf("%d", &x);
                            switch x{
                                case 8:
                                    sqr8="X";
                                    sqr6="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 9:
                                    sqr9="X";
                                    sqr6="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 6:
                                    sqr6="X";
                                    sqr9="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    scanf("%d", &x);
                                    sqr8="X";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nIt is a tie.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                }
                        break;
                }
                break;
            case 4:
                sqr4="X";
                sqr7="O";
                printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to palce your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                scanf("%d", &x);
                switch x{
                    case 2:
                        sqr2="X";
                        sqr3="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 8:
                        sqr8="X";
                        sqr3="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 6:
                        sqr6="X";
                        sqr7="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 9:
                        sqr9="X";
                        sqr3="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 3:
                        sqr3="X";
                        sqr2="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        scanf("%d", &x);
                            switch x{
                                case 6:
                                    sqr6="X";
                                    sqr8="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 9:
                                    sqr9="X";
                                    sqr8="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 8:
                                    sqr8="X";
                                    sqr9="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    scanf("%d", &x);
                                    sqr6="X";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nIt is a tie.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                }
                        break;
                }
                break;
            case 6:
                sqr6="X";
                sqr9="O";
                printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to palce your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                scanf("%d", &x);
                switch x{
                    case 4:
                        sqr4="X";
                        sqr7="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to palce your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        scanf("%d", &x);
                        switch x{
                            case 2:
                                sqr2="X";
                                sqr3="O";
                                printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                break;
                            case 3:
                                sqr3="X";
                                sqr8="O";
                                printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                            case 8:
                                sqr8="X";
                                sqr3="O";
                                printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        }
                        break;
                    case 6:
                        sqr6="X";
                        sqr7="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 8:
                        sqr8="X";
                        sqr7="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 9:
                        sqr9="X";
                        sqr7="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        break;
                    case 7:
                        sqr7="X";
                        sqr4="O";
                        printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                        scanf("%d", &x);
                            switch x{
                                case 8:
                                    sqr8="X";
                                    sqr6="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 9:
                                    sqr9="X";
                                    sqr6="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nComputer wins.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                case 6:
                                    sqr6="X";
                                    sqr9="O";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nType the number of the space you would like to place your move in.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    scanf("%d", &x);
                                    sqr8="X";
                                    printf("       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n  -----+-----+-----\n       |     |\n    %s  |  %s  |  %s\n       |     |\n\n\nIt is a tie.\n", sqr1, sqr2, sqr3, sqr4, sqr5, sqr6, sqr7, sqr8, sqr9);
                                    break;
                                }
                        break;
                }
                break;
            
        }
}
