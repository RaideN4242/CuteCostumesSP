class AquaInv extends MaskInv;

var	AquaMask	AqMask;

simulated function GiveTo( pawn Other, optional Pickup Pickup ) 
{ 
   local Inventory I;
   
	if(Role==ROLE_Authority)
	{
		if(AqMask == none)
		{
			AqMask = Spawn(class'AquaMask',Other);
			AqMask.TransferActor(Other);
		}
       

	}
	
	For( I = Other.Inventory; I != None; I =I.Inventory )
	{
		if ( DinoInv(I) != none || BearInv(I) != None || PandaInv(I) != None || BudInv(I) != None || NonInv(I) != None || PumpkinInv(I) != None )
		{

               
			I.Destroyed();
			I.Destroy();
	
		}
	}
	Super.GiveTo(Other,Pickup);
}

function DropFrom(vector StartLocation) 
{
	if ( AqMask != none )
	{
		AqMask.Destroy();
	}
	
	Super.DropFrom(StartLocation);
}


simulated function Destroyed()
{
    if ( AqMask != none )
	{
		AqMask.Destroy();
	}

    super(KFWeapon).Destroyed();   
}

defaultproperties
{
     HudImage=Texture'CuteCostumes_T.Aqua_trader'
     SelectedHudImage=Texture'CuteCostumes_T.Aqua_trader'
     Weight=0.000000
     TraderInfoTexture=Texture'CuteCostumes_T.Aqua_trader'
     FireModeClass(0)=Class'KFMod.NoFire'
     FireModeClass(1)=Class'KFMod.NoFire'
     SelectForce="SwitchToAssaultRifle"
     bCanThrow=False
     Description="Costume: Aqua Hair."
     Priority=1
     InventoryGroup=5
     GroupOffset=5
     PickupClass=Class'CuteCostumes.AquaPickup'
     BobDamping=6.000000
     AttachmentClass=Class'CuteCostumes.CostumeAttachment'
     IconCoords=(X1=250,Y1=110,X2=330,Y2=145)
     ItemName="Aqua Hair"
     DrawType=DT_None
     Mesh=SkeletalMesh'KF_Weapons_Trip.9mm_Trip'
}
