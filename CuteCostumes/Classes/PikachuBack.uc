class PikachuBack extends PolarBearMask;

simulated function Stick()
{
	local Rotator rot;
	local Vector loc;
	if(Taker==None) return;

	Taker.AttachToBone(self,'CHR_Pelvis');
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
     cX=0
     cY=8
     Mesh=SkeletalMesh'CuteCostumes_A.Pikachu_back'
     DrawScale=2.750000
}
