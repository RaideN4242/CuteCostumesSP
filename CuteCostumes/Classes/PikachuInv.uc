class PikachuInv extends MaskInv;

var		PikachuBack		PiBack;

simulated function PostNetReceive()
{
 
   Super.PostNetReceive();
}

simulated function GiveTo( pawn Other, optional Pickup Pickup ) 
{ 
   local Inventory I;
   
     if( PiBack==None )
	{
	PiBack = Spawn(Class'PikachuBack',Other);
	
	PiBack.TransferActor(Other);
	}
	
	For( I = Other.Inventory; I != None; I =I.Inventory )
	{
		if ( CronoInv(I) != None || BlackWingInv(I) != None || GrassInv(I) != None || PikachuInv(I) != None || FairyWingsInv(I) != None || ProvokeInv(I) != None || GhostInv(I) != None )
		{

               
			I.Destroyed();
			I.Destroy();
	
		}
	}

	
	Super.GiveTo(Other,Pickup);
}

function DropFrom(vector StartLocation) 
{
	if ( PiBack != none )
	{
		PiBack.Destroy();
	}
	
	Super.DropFrom(StartLocation);
}


simulated function Destroyed()
{
    if ( PiBack != none )
	{
		PiBack.Destroy();
	}

    super(KFWeapon).Destroyed();   
}

defaultproperties
{
     HudImage=Texture'CuteCostumes_T.Pikachu_trader'
     SelectedHudImage=Texture'CuteCostumes_T.Pikachu_trader'
     Weight=0.000000
     TraderInfoTexture=Texture'CuteCostumes_T.Pikachu_trader'
     FireModeClass(0)=Class'KFMod.NoFire'
     FireModeClass(1)=Class'KFMod.NoFire'
     SelectForce="SwitchToAssaultRifle"
     bCanThrow=False
     Description="Costume: Pikachu Tail."
     Priority=1
     InventoryGroup=5
     GroupOffset=5
     PickupClass=Class'CuteCostumes.PikachuPickup'
     BobDamping=6.000000
     AttachmentClass=Class'CuteCostumes.CostumeAttachment'
     IconCoords=(X1=250,Y1=110,X2=330,Y2=145)
     ItemName="PikachuTail"
     DrawType=DT_None
     Mesh=SkeletalMesh'KF_Weapons_Trip.9mm_Trip'
}
