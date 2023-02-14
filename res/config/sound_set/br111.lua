local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()
		
soundsetutil.addTrackParam01
(data, "vehicle/train/br111/111_idle.wav", 25.0,
		{
			{ 0.0, 1.0 },
			{ 0.01, 1.0 },
			{ 0.1, 0.0 } },
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } }, 
		"speed01")
		
soundsetutil.addTrackParam01
(data, "vehicle/train/br111/111_grummeln.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 0.01, 0.8 },
			{ 0.10, 1.0 },
			{ 0.15, 0.0 } },
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } }, 
		"speed01")
		
				
soundsetutil.addTrackParam01
(data, "vehicle/train/br111/111_luefter.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 0.1, 1.5 },
			{ 1.0, 1.8 } },
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } }, 
		"speed01")

		
soundsetutil.addTrackParam01
(data, "vehicle/train/br111/111_drive.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 0.01, 0.0},	
			{ 1.0, 0.8 } 
		},
		{
			{ 0.0, 0.9 }, 
			{ 1.0, 1.0 } 
		}, 
		"speed01")
		
		
soundsetutil.addEvent(data, "horn", { "vehicle/train/br111/111_horn.wav" }, 25.0)

soundsetutil.addTrackSqueal(data, "vehicle/train/br111/111_kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "vehicle/train/br111/111_bremse.wav", 25.0, 1.0)

return data

end
