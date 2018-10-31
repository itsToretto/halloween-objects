#include <a_samp>
#include <sscanf2>
#include <zcmd>

CMD:halloween(playerid, params[])
{
    new option;
    if(sscanf(params, "d", option))
        {
            SendClientMessage(playerid, 0x8CAA63FF, "SYNTAX: {FFFFFF}/halloween 1 : Wizard Hat - 2 : Devil Mask");
            return SendClientMessage(playerid, 0x8CAA63FF, "DESCRIPTION: {FFFFFF}Used to attach either a hat or a mask on your head");
        }
    
    switch(option)
    {
        case 1:
        {
            if(IsPlayerAttachedObjectSlotUsed(playerid, 8)) 
                {
                    RemovePlayerAttachedObject(playerid, 8);
                    return SendClientMessage(playerid, 0x33CCFFFF, "INFO: {FFFFFF}You've just removed your Halloween hat successfully.");
                }
                 
            SetPlayerAttachedObject(playerid, 8, 19528, 2, 0.125, -0.015, 0.01, 0.0, 0.0, -32.5, 0.9, 0.84, 1.01, 0, 0);
            EditAttachedObject(playerid, 8);
            SendClientMessage(playerid, 0x33CCFFFF, "INFO: {FFFFFF}You've just put on your Halloween hat! You can remove it by retyping the command.");
        }
        case 2:
        {
            if(IsPlayerAttachedObjectSlotUsed(playerid, 9)) 
                {
                    RemovePlayerAttachedObject(playerid, 9);
                    return SendClientMessage(playerid, 0x33CCFFFF, "INFO: {FFFFFF}You've just removed your Halloween mask successfully.");
                }

            SetPlayerAttachedObject(playerid, 9, 11704, 2, 0.05, 0.1, 0.0, -5.099, 85.6, -179.4, 0.396, 0.739, 0.422, 0, 0);
            // Resized the original object which was too big by default
            EditAttachedObject(playerid, 9);   
            SendClientMessage(playerid, 0x33CCFFFF, "INFO: {FFFFFF}You've just put on your Halloween mask! You can remove it by retyping the command.");
        }
    }
    return 1;
}