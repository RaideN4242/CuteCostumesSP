class ProvokeInv extends MaskInv;

var		ProvokeBack		BackP;

simulated function PostNetReceive()
{
 
   Super.PostNetReceive();
}

simulated function GiveTo( pawn Other, optional Pickup Pickup ) 
{ 
   local Inventory I;
   
     if( BackP==None )
	{
	BackP = Spawn(Class'ProvokeBack',Other);
	
	BackP.TransferActor(Other);
	}
	
	For( I = Other.Inventory; I != None; I =I.Inventory )
	{
		if ( FlagsInv(I) != None || CronoInv(I) != None || BlackWingInv(I) != None || EgyptInv(I) != None || GrassInv(I) != None || AngelInv(I) != None || GhostInv(I) != None )
		{

               
			I.Destroyed();
			I.Destroy();
	
		}
	}

	
	Super.GiveTo(Other,Pickup);
}

function DropFrom(vector StartLocation) 
{
	if ( BackP != none )
	{
		BackP.Destroy();
	}
	
	Super.DropFrom(StartLocation);
}


simulated function Destroyed()
{
    if ( BackP != none )
	{
		BackP.Destroy();
	}

    super(KFWeapon).Destroyed();   
}

defaultproperties
{
     HudImage=Texture'CuteCostumes_T.provoke_trader'
     SelectedHudImage=Texture'CuteCostumes_T.provoke_trader'
     Weight=0.000000
     TraderInfoTexture=Texture'CuteCostumes_T.provoke_trader'
     FireModeClass(0)=Class'KFMod.NoFire'
     FireModeClass(1)=Class'KFMod.NoFire'
     SelectForce="SwitchToAssaultRifle"
     bCanThrow=False
     Description="Costume: Provoke."
     Priority=1
     InventoryGroup=5
     GroupOffset=5
     PickupClass=Class'CuteCostumes.ProvokePickup'
     BobDamping=6.000000
     AttachmentClass=Class'CuteCostumes.CostumeAttachment'
     IconCoords=(X1=250,Y1=110,X2=330,Y2=145)
     ItemName="Provoke Avise"
     DrawType=DT_None
     Mesh=SkeletalMesh'KF_Weapons_Trip.9mm_Trip'
}
