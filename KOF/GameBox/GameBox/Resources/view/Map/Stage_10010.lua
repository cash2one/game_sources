-- 枫树林
function _G.getMapData10010()
	return CBaseMapData(
			{ "Scene/m10010/m1001001.jpg","Scene/m10010/m1001002.jpg" }, -- 路径
			1, -- 地图类型
			10010, -- 地图id
			10, -- 格子宽度
			10, -- 格子高度
			2048, -- 格子宽数
			640, -- 格子高数
			{

			}, -- 可走
			{ "Scene/m10010/m1001001.jpg","Scene/m10010/m1001002.jpg","Scene/m10010/m1001001.jpg","Scene/m10010/m1001002.jpg" } , --地图块 
			2048, -- 地图宽度
			640, -- 地图高度
			512, -- 地图块宽度
			600 -- 可行高度
		) 
end