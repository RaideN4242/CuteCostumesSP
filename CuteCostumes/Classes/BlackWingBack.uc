class BlackWingBack extends PolarBearMask;

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
     cX=-5
     cY=-3
     Mesh=SkeletalMesh'CuteCostumes_A.blackwing_b'
     DrawScale=2.500000
}
