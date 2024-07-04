class AngelInv extends MaskInv;

var		AngelBack		BackA;

simulated function PostNetReceive()
{

	
   Super.PostNetReceive();
}

simulated function GiveTo( pawn Other, optional Pickup Pickup ) 
{ 
   local Inventory I;
   	
	   if( BackA==None )
	{
	BackA = Spawn(Class'AngelBack',Other);

	BackA.TransferActor(Other);
	}
		
	For( I = Other.Inventory; I != None; I =I.Inventory )
	{
		if ( FlagsInv(I) != None || CronoInv(I) != None || BlackWingInv(I) != None || EgyptInv(I) != None || GrassInv(I) != None || PikachuInv(I) != None || FairyWingsInv(I) != None || ProvokeInv(I) != None || GhostInv(I) != None )
		{

               
			I.Destroyed();
			I.Destroy();
	
		}
	}

	
	Super.GiveTo(Other,Pickup);
}

function DropFrom(vector StartLocation) 
{
	if ( BackA != none )
	{
		BackA.Destroy();
	}
	
	Super.DropFrom(StartLocation);
}


simulated function Destroyed()
{
    if ( BackA != none )
	{
		BackA.Destroy();
	}

    super(KFWeapon).Destroyed();   
}

defaultproperties
{
     HudImage=Texture'CuteCostumes_T.angel_trader'
     SelectedHudImage=Texture'CuteCostumes_T.angel_trader'
     Weight=0.000000
     TraderInfoTexture=Texture'CuteCostumes_T.angel_trader'
     FireModeClass(0)=Class'KFMod.NoFire'
     FireModeClass(1)=Class'KFMod.NoFire'
     SelectForce="SwitchToAssaultRifle"
     bCanThrow=False
     Description="Costume: Angel Wing."
     Priority=1
     InventoryGroup=5
     GroupOffset=5
     PickupClass=Class'CuteCostumes.AngelPickup'
     BobDamping=6.000000
     AttachmentClass=Class'CuteCostumes.CostumeAttachment'
     IconCoords=(X1=250,Y1=110,X2=330,Y2=145)
     ItemName="Angel Wing"
     DrawType=DT_None
     Mesh=SkeletalMesh'KF_Weapons_Trip.9mm_Trip'
}
