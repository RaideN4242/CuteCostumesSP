class EgyptBack extends PolarBearMask;

simulated function Stick()
{
	local Rotator rot;
	local Vector loc;
	if(Taker==None) return;

	Taker.AttachToBone(self,'CHR_Spine2');
	rot.Yaw=cYaw;
	rot.Pitch=cPitch;
	rot.Roll=cRoll;
	SetRelativeRotation(rot);
	bSticked=true;
	loc.X=cX;
	loc.Y=cY;
	loc.Z=cZ;
	SetRelativeLocation(loc);
	if(!bHideAll) bHidden=false;

}

defaultproperties
{
     cX=-2
     cY=0
     Mesh=SkeletalMesh'CuteCostumes_A.egypt_b'
     DrawScale=2.100000
}
