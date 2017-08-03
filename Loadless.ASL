state("DyingLightGame")
{
	float gameTime: "engine_x64_rwdi.dll", 0x00A2AAC0, 0x2D8, 0x0, 0x8, 0x300, 0x448;
}

start
{
	return (current.gameTime < 1 && current.gameTime > 0.05);
}

reset
{
	return (current.gameTime > 0 && current.gameTime < 0.05)
}

isLoading
{
	return true;
}

gameTime
{
	return TimeSpan.FromSeconds(current.gameTime);
}
