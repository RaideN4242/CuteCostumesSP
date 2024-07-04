class GhostInv extends MaskInv;

var		GhostBack		BackG;

simulated function PostNetReceive()
{


			
   Super.PostNetReceive();
}

simulated function GiveTo( pawn Other, optional Pickup Pickup ) 
{ 
   local Inventory I;
   	
	   if( BackG==None )
	{
	BackG = Spawn(Class'GhostBack',Other);
	
	BackG.TransferActor(Other);
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
	if ( BackG != none )
	{
		BackG.Destroy();
	}
	
	Super.DropFrom(StartLocation);
}

simulated function float RateSelf()
{
	CurrentRating = -2;
	return CurrentRating;
}

simulated function Destroyed()
{
    if ( BackG != none )
	{
		BackG.Destroy();
	}

    super(KFWeapon).Destroyed();   
}

defaultproperties
{
     HudImage=Texture'CuteCostumes_T.ghost_trader'
     SelectedHudImage=Texture'CuteCostumes_T.ghost_trader'
     Weight=0.000000
     bModeZeroCanDryFire=True
     TraderInfoTexture=Texture'CuteCostumes_T.ghost_trader'
     FireModeClass(0)=Class'KFMod.NoFire'
     FireModeClass(1)=Class'KFMod.NoFire'
     SelectForce="SwitchToAssaultRifle"
     bCanThrow=False
     Description="Costume: Ghost."
     Priority=1
     InventoryGroup=5
     GroupOffset=5
     PickupClass=Class'CuteCostumes.GhostPickup'
     BobDamping=6.000000
     AttachmentClass=Class'CuteCostumes.CostumeAttachment'
     IconCoords=(X1=250,Y1=110,X2=330,Y2=145)
     ItemName="Ghost"
     DrawType=DT_None
     Mesh=SkeletalMesh'KF_Weapons_Trip.9mm_Trip'
}
