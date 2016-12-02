switch (mpos)
{
    case 0: 
    {
        room_goto_next();
        break;
    }
    case 1:
    {
       scr_loadgame(); 
       break;
    }
     case 2:
    {
        //saves game
        global.Saved = true;
        game_save("Save.dat");
        break;
    }

     case 3:
    {
        break;
    }
     case 4:  game_end(); break;
     default: break;


}
