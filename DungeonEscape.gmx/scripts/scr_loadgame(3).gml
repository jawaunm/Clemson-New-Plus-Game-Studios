if file_exists("Save.sav") && saveSuccess = true
{
    var LoadFile = file_text_open_read("Save.sav");
    var LoadedRoom = file_text_read_real(LoadFile);
    room_goto(LoadedRoom);
}
