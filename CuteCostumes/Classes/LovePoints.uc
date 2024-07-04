class LovePoints extends PolarBearMask;

var() Emitter		LoveSpri;
var PanzerfaustTrail SmokeTrail;

simulated function PostBeginPlay()
{ 
     //local rotator SmokeRotation;

	Super(Nade).PostBeginPlay();
    if ( Level.NetMode != NM_DedicatedServer)
    {
		 LoveSpri = Spawn(Class'Effectlove',Self);
		AttachToBone(LoveSpri,'Root_Head');
		LoveSpri.SetRelativeLocation( vect(120,15,-5));
    }
	
		
}
simulated function Destroyed()
{
    if ( LoveSpri != none )
	{
	   
		
		LoveSpri.Destroy();
	}

    Super.Destroyed();  
}

defaultproperties
{
     cY=-1
     DrawScale=0.250000
}
