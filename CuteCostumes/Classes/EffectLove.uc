class EffectLove extends PanzerfaustTrail;

simulated function HandleOwnerDestroyed()
{
    Emitters[0].ParticlesPerSecond = 0;
    Emitters[0].InitialParticlesPerSecond = 0;
    Emitters[0].RespawnDeadParticles=false;

    Emitters[1].ParticlesPerSecond = 0;
    Emitters[1].InitialParticlesPerSecond = 0;
    Emitters[1].RespawnDeadParticles=false;

}

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         UniformSize=True
         Acceleration=(X=0.445001,Y=0.445001,Z=0.890001)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255,A=255))
         MaxParticles=1
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         InitialParticlesPerSecond=1.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'CuteCostumes_T.corazon-amor'
         LifetimeRange=(Min=1.000000,Max=2.500000)
         StartVelocityRange=(X=(Min=1.689000,Max=25.335001),Y=(Min=1.689000,Max=25.335001),Z=(Min=27.560005,Max=27.560005))
     End Object
     Emitters(0)=SpriteEmitter'CuteCostumes.EffectLove.SpriteEmitter0'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter1
         UniformSize=True
         Acceleration=(X=-0.445001,Y=0.445001,Z=0.890001)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255,A=255))
         MaxParticles=1
         StartSizeRange=(X=(Min=3.000000,Max=4.000000),Y=(Min=3.000000,Max=4.000000),Z=(Min=3.000000,Max=4.000000))
         InitialParticlesPerSecond=1.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'CuteCostumes_T.corazon-amor'
         LifetimeRange=(Min=1.000000,Max=1.500000)
         StartVelocityRange=(X=(Min=-1.689000,Max=-12.335001),Y=(Min=1.689000,Max=12.335001),Z=(Min=21.560005,Max=21.560005))
     End Object
     Emitters(1)=SpriteEmitter'CuteCostumes.EffectLove.SpriteEmitter1'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter2
         UniformSize=True
         Acceleration=(X=0.445001,Y=-0.445001,Z=0.890001)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255,A=255))
         MaxParticles=2
         StartSizeRange=(X=(Min=3.000000,Max=4.000000),Y=(Min=3.000000,Max=4.000000),Z=(Min=3.000000,Max=4.000000))
         InitialParticlesPerSecond=1.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'CuteCostumes_T.corazon-amor'
         LifetimeRange=(Min=1.500000,Max=3.000000)
         StartVelocityRange=(X=(Min=0.689000,Max=10.335001),Y=(Min=-0.689000,Max=-10.335001),Z=(Min=15.560005,Max=22.560005))
     End Object
     Emitters(2)=SpriteEmitter'CuteCostumes.EffectLove.SpriteEmitter2'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter3
         UniformSize=True
         Acceleration=(X=-0.145001,Y=-0.145001,Z=0.290001)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255,A=255))
         MaxParticles=2
         StartSizeRange=(X=(Min=3.000000,Max=4.000000),Y=(Min=3.000000,Max=4.000000),Z=(Min=3.000000,Max=4.000000))
         InitialParticlesPerSecond=1.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'CuteCostumes_T.corazon-amor'
         LifetimeRange=(Min=3.000000,Max=5.000000)
         StartVelocityRange=(X=(Min=-0.589000,Max=-2.335001),Y=(Min=-0.589000,Max=-2.335001),Z=(Min=5.560005,Max=10.560005))
     End Object
     Emitters(3)=SpriteEmitter'CuteCostumes.EffectLove.SpriteEmitter3'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter4
         UniformSize=True
         Acceleration=(X=-0.445001,Y=0.445001,Z=0.890001)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255,A=255))
         MaxParticles=1
         StartSizeRange=(X=(Min=2.250000,Max=3.250000),Y=(Min=2.250000,Max=3.250000),Z=(Min=2.250000,Max=3.250000))
         InitialParticlesPerSecond=1.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'CuteCostumes_T.corazon-amor'
         LifetimeRange=(Min=1.000000,Max=3.500000)
         StartVelocityRange=(X=(Min=-12.689000,Max=12.335001),Y=(Min=-12.689000,Max=12.335001),Z=(Min=15.560005,Max=27.560005))
     End Object
     Emitters(4)=SpriteEmitter'CuteCostumes.EffectLove.SpriteEmitter4'

     RemoteRole=ROLE_SimulatedProxy
}
