macroScript dirtyLM category:"_IB_Tools" tooltip:"dirtyLM" buttonText: "dirtyLM"
(
channelUV = 2
 
objArray = getCurrentSelection()
max modify mode    
  
for obj in objArray do 
(

	convertto obj editable_mesh
    modPanel.setCurrentObject obj
    subObjectLevel = 4
    UnwrapMod = Unwrap_UVW name:"UnwrapMod"
    UnwrapMod.setApplyToWholeObject true
    addModifier obj UnwrapMod
    Temp = obj.modifiers["UnwrapMod"]
    Temp.setMapChannel channelUV
    Temp.setTVSubObjectMode 3
    Temp.flattenMap 45.0 #() 0.01 true 0 true true     
    subObjectLevel = 0
	
 UnwrapMod.packnoparams()
 UnwrapMod.pack 1 0.01 true true true
 
	convertto obj editable_poly 
)

select objarray

)