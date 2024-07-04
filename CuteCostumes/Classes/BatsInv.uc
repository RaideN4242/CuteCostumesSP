class BatsInv extends MaskInv;

var		BatsEffect		BatE;

simulated function GiveTo( pawn Other, optional Pickup Pickup ) 
{ 
   local Inventory I;
   
	if(Role==ROLE_Authority)
	{
		if(BatE == none)
		{
			BatE = Spawn(class'BatsEffect',Other);
			BatE.TransferActor(Other);
		}
       

	}
	
	For( I = Other.Inventory; I != None; I =I.Inventory )
	{
		if ( LoveInv(I) != none )
		{

               
			I.Destroyed();
			I.Destroy();
	
		}
	}
	Super.GiveTo(Other,Pickup);
}

function DropFrom(vector StartLocation) 
{
	if ( BatE != none )
	{
		BatE.Destroy();
	}
	
	Super.DropFrom(StartLocation);
}


simulated function Destroyed()
{
    if ( BatE != none )
	{
		BatE.Destroy();
	}

    super(KFWeapon).Destroyed();   
}

defaultproperties
{
     HudImage=Texture'CuteCostumes_T.bats_trader'
     SelectedHudImage=Texture'CuteCostumes_T.bats_trader'
     Weight=0.000000
     TraderInfoTexture=Texture'CuteCostumes_T.bats_trader'
     FireModeClass(0)=Class'KFMod.NoFire'
     FireModeClass(1)=Class'KFMod.NoFire'
     SelectForce="SwitchToAssaultRifle"
     bCanThrow=False
     Description="Costume: Bat."
     Priority=1
     InventoryGroup=5
     GroupOffset=5
     PickupClass=Class'CuteCostumes.BatsPickup'
     BobDamping=6.000000
     AttachmentClass=Class'CuteCostumes.CostumeAttachment'
     IconCoords=(X1=250,Y1=110,X2=330,Y2=145)
     ItemName="Bat"
     DrawType=DT_None
     Mesh=SkeletalMesh'KF_Weapons_Trip.9mm_Trip'
}
