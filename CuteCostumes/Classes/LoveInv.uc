class LoveInv extends MaskInv;

var		LovePoints		LEfe;

simulated function PostBeginPlay()
{
      Super.PostBeginPlay(); 	 
}

simulated function GiveTo( pawn Other, optional Pickup Pickup ) 
{ 
   local Inventory I;
   
    if(Role==ROLE_Authority)
	{
		if(LEfe == none)
		{
			LEfe = Spawn(class'LovePoints',Other);
			LEfe.TransferActor(Other);
		}
	}
 
	For( I = Other.Inventory; I != None; I =I.Inventory )
	{
		if ( BatsInv(I) != none )
		{

			I.Destroyed();
			I.Destroy();
		}
	}
	Super.GiveTo(Other,Pickup);
}

function DropFrom(vector StartLocation) 
{
	if ( LEfe != none )
	{   
		LEfe.Destroy();
	}
	Super.DropFrom(StartLocation);
}


simulated function Destroyed()
{
    if ( LEfe != none )
	{
		LEfe.Destroy();
	}
    super(KFWeapon).Destroyed();   
}

defaultproperties
{
     HudImage=Texture'CuteCostumes_T.love_trader'
     SelectedHudImage=Texture'CuteCostumes_T.love_trader'
     Weight=0.000000
     TraderInfoTexture=Texture'CuteCostumes_T.love_trader'
     FireModeClass(0)=Class'KFMod.NoFire'
     FireModeClass(1)=Class'KFMod.NoFire'
     SelectForce="SwitchToAssaultRifle"
     bCanThrow=False
     Description="Costume: Love."
     Priority=1
     InventoryGroup=5
     GroupOffset=5
     PickupClass=Class'CuteCostumes.LovePickup'
     BobDamping=6.000000
     AttachmentClass=Class'CuteCostumes.CostumeAttachment'
     IconCoords=(X1=250,Y1=110,X2=330,Y2=145)
     ItemName="Love"
     DrawType=DT_None
     Mesh=SkeletalMesh'KF_Weapons_Trip.9mm_Trip'
}
