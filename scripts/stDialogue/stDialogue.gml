
function CreateDialogue(_messages){
    if(instance_exists(oTypeWriter))return;
        
    var inst = instance_create_depth(0,0,0, oTypeWriter);
    inst.messages = _messages;
    inst.currentMessage = 0;
}