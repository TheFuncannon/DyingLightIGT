state("DyingLightGame")
{
	float gameTime: "engine_x64_rwdi.dll", 0x00A29B98, 0x28, 0x30, 0x20, 0x508, 0x448;
}

start
{
	return (current.gameTime < 1 && current.gameTime > 0.05);
}

reset
{
	return (current.gameTime > 0 && current.gameTime < 0.05);
}

isLoading
{
	return true;
}

gameTime
{
	return TimeSpan.FromSeconds(current.gameTime);
}
