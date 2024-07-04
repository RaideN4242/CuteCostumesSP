class PolarBearMask extends Nade;

#exec OBJ LOAD FILE=..\Textures\CuteCostumes_T.utx
#exec OBJ LOAD FILE=..\Animations\CuteCostumes_A.ukx

var Pawn Taker;
var bool bSticked,bTakerReplicated;
var bool bHideAll;
var int cYaw,cPitch,cRoll,cX,cY,cZ;

replication
{
	reliable if ( Role == ROLE_Authority )
		Taker,cYaw,cPitch,cRoll,cX,cY,cZ,bHideAll;
}

simulated function PostNetReceive()
{
	if(Taker!=none && !bTakerReplicated)
	{
		bTakerReplicated=true;
		if(!bSticked)
			Stick();
		return;
	}
}

function TakeDamage( int Damage, Pawn InstigatedBy, Vector Hitlocation, Vector Momentum, class<DamageType> damageType, optional int HitIndex)
{
	//nope
}

simulated function PostBeginPlay()
{
	Super(Nade).PostBeginPlay();
	if( Level.NetMode!=NM_DedicatedServer )
		LoopAnim('Idle');
}

simulated function Explode(vector HitLocation, vector HitNormal)
{
	bHasExploded = True;
	Destroy();
}

function PostNetBeginPlay()
{
	
	Super(Nade).PostNetBeginPlay();
}

function TransferActor(Pawn A)
{
	Taker=A;
}

simulated function Stick()
{
	local Rotator rot;
	local Vector loc;
	if(Taker==None) return;

	Taker.AttachToBone(self,'Head');
	rot.Yaw=cYaw;
	rot.Pitch=cPitch; //-16384; //looks 99% perfect
	rot.Roll=cRoll; // 6144; //+ is tilt wire towards player's back
	SetRelativeRotation(rot);
	bSticked=true;
	loc.X=cX; //+ is up, - is down
	loc.Y=cY; //+ is back, - is front?
	loc.Z=cZ; //+ is left, - is right
	SetRelativeLocation(loc);
	if(!bHideAll) bHidden=false;
}

simulated function UnStick()
{
	Taker.DetachFromBone(Self);
	Explode(Location,VRand()*0.0);
}

simulated function Tick(float DeltaTime)
{

	if(Taker==None) return;
	if(Role==ROLE_Authority)
	{
		if(!bSticked)
			Stick();
	}
	else
		Disable('Tick');
}

simulated function AnimEnd( int Channel )
{
   
	if( Level.NetMode!=NM_DedicatedServer )
		LoopAnim('Idle');
}

defaultproperties
{
     cYaw=-16384
     cRoll=16384
     cX=-9
     cY=4
     ExplodeTimer=100000.000000
     Speed=0.000000
     MaxSpeed=0.000000
     Damage=0.000000
     DamageRadius=1.000000
     DrawType=DT_Mesh
     Physics=PHYS_Projectile
     LifeSpan=0.000000
     Mesh=SkeletalMesh'CuteCostumes_A.polarbear_head'
     DrawScale=2.700000
}
