class AureolaInv extends MaskInv;

var	AureolaMask	AuMask;

simulated function GiveTo( pawn Other, optional Pickup Pickup ) 
{ 
   local Inventory I;
   
	if(Role==ROLE_Authority)
	{
		if(AuMask == none)
		{
			AuMask = Spawn(class'AureolaMask',Other);
			AuMask.TransferActor(Other);
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
	if ( AuMask != none )
	{
		AuMask.Destroy();
	}
	
	Super.DropFrom(StartLocation);
}


simulated function Destroyed()
{
    if ( AuMask != none )
	{
		AuMask.Destroy();
	}

    super(KFWeapon).Destroyed();   
}

defaultproperties
{
     HudImage=Texture'CuteCostumes_T.Aureola_trader'
     SelectedHudImage=Texture'CuteCostumes_T.Aureola_trader'
     Weight=0.000000
     TraderInfoTexture=Texture'CuteCostumes_T.Aureola_trader'
     FireModeClass(0)=Class'KFMod.NoFire'
     FireModeClass(1)=Class'KFMod.NoFire'
     SelectForce="SwitchToAssaultRifle"
     bCanThrow=False
     Description="Costume: Aureola."
     Priority=1
     InventoryGroup=5
     GroupOffset=5
     PickupClass=Class'CuteCostumes.AureolaPickup'
     BobDamping=6.000000
     AttachmentClass=Class'CuteCostumes.CostumeAttachment'
     IconCoords=(X1=250,Y1=110,X2=330,Y2=145)
     ItemName="Aureola"
     DrawType=DT_None
     Mesh=SkeletalMesh'KF_Weapons_Trip.9mm_Trip'
}
