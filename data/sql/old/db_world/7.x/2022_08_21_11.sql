-- DB update 2022_08_21_10 -> 2022_08_21_11
--
-- Remove all entries, they will be replaced
DELETE FROM `creature` WHERE `id1`=2961;
DELETE FROM `creature` WHERE `id2`=2961;
DELETE FROM `creature` WHERE `id3`=2961;

-- ??? of the past
DELETE FROM `creature_addon` WHERE `guid` IN (25713, 25714, 25715, 25716, 25717, 25718, 25719, 25720, 25721, 25722, 25723, 25724, 25725, 25726, 25727, 25738, 25739, 25740, 25741, 25742, 25743, 25744, 25745, 25746, 25747, 25748, 25749, 25750, 25751, 25752, 25753, 25754, 25755, 25756, 25757, 25758, 25759, 25760, 25761, 25762, 25763, 25764, 25765, 25766, 25767, 25769, 25770, 25771, 25772, 25773, 25774, 25775, 25776, 25777, 25778, 25779, 25780, 25781, 25782, 25783, 25784, 25785, 25786, 25787, 25788, 25789, 25790, 25791, 25792, 25793, 25794, 25795, 25796);

DELETE FROM `waypoint_data` WHERE `id` IN (257130, 257140, 257150, 257160, 257170, 257180, 257190, 257200, 257210, 257220, 257230, 257240, 257250, 257260, 257270, 257380, 257390, 257400, 257410, 257420, 257430, 257440, 257450, 257460, 257470, 257480, 257490, 257500, 257510, 257520, 257530, 257540, 257550, 257560, 257570, 257580, 257590, 257600, 257610, 257620, 257630, 257640, 257650, 257660, 257670, 257690, 257700, 257710, 257720, 257730, 257740, 257750, 257760, 257770, 257780, 257790, 257800, 257810, 257820, 257830, 257840, 257850, 257860, 257870, 257880, 257890, 257900, 257910, 257920, 257930, 257940, 257950, 257960);

-- Corrects spawn points to sniffed values, mostly this was fine, but the XYZ values were done manually rather than from sniffed variables
-- Wander distance is mostly 30, but always at least 20 so 20 was chosen, I can release packet parse info to anyone wishing to correct individual mobs
-- 155 was the spawntime set before this fix, 180 is probbably correct, but this is fine imo without dynamic spawning
SET @GUID :=94862;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID+0 AND @GUID+72;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@GUID+0, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3383.307, -916.10754, 85.185776, 2.007128715515136718, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3383.307 -916.10754 85.185776
(@GUID+1, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3430.3833, -931.3139, 100.98157, 2.635447263717651367, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3430.3833 -931.3139 100.98157
(@GUID+2, 2961, 0, 0, 1, 0, 0, 1, 1, 0,7 -3486.3623, -918.935, 100.97622, 1.954768776893615722, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3486.3623 -918.935 100.97622
(@GUID+3, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3482.695, -815.3661, 94.17881, 2.722713708877563476, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3482.695 -815.3661 94.17881
(@GUID+4, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3515.385, -833.6963, 104.157776, 0.331612557172775268, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3515.385 -833.6963 104.157776
(@GUID+5, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3483.0527, -851.23254, 83.48535, 1.239183783531188964, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3483.0527 -851.23254 83.48535
(@GUID+6, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3450.465, -849.80597, 69.08616, 3.944444179534912109, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3450.465 -849.80597 69.08616
(@GUID+7, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3417.1406, -816.94696, 69.640434, 2.408554315567016601, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3417.1406 -816.94696 69.640434
(@GUID+8, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3382.6248, -847.8901, 57.240017, 3.839724302291870117, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3382.6248 -847.8901 57.240017
(@GUID+9, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3348.0774, -817.3841, 50.415253, 3.892084121704101562, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3348.0774 -817.3841 50.415253
(@GUID+10, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3382.0847, -783.10254, 59.72053, 4.537856101989746093, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3382.0847 -783.10254 59.72053
(@GUID+11, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3315.3816, -782.55927, 47.236027, 6.091198921203613281, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3315.3816 -782.55927 47.236027
(@GUID+12, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3314.739, -716.90765, 49.511528, 2.792526721954345703, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3314.739 -716.90765 49.511528
(@GUID+13, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3317.7422, -685.1535, 45.637943, 1.256637096405029296, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3317.7422 -685.1535 45.637943
(@GUID+14, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3348.3667, -715.63824, 58.89272, 0.907571196556091308, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3348.3667 -715.63824 58.89272
(@GUID+15, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3348.429, -682.8298, 54.888115, 1.972222089767456054, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3348.429 -682.8298 54.888115
(@GUID+16, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3381.3696, -716.686, 71.691086, 0.92502450942993164, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3381.3696 -716.686 71.691086
(@GUID+17, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3384.521, -683.3416, 67.27997, 5.829399585723876953, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3384.521 -683.3416 67.27997
(@GUID+18, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3418.5498, -749.8902, 80.34254, 1.361356854438781738, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3418.5498 -749.8902 80.34254
(@GUID+19, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3352.6758, -748.88, 57.4957, 1.221730470657348632, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3352.6758 -748.88 57.4957
(@GUID+20, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3417.8577, -682.7717, 80.46583, 5.235987663269042968, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3417.8577 -682.7717 80.46583
(@GUID+21, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3382.8794, -649.5901, 70.76257, 1.169370532035827636, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3382.8794 -649.5901 70.76257
(@GUID+22, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3416.1377, -616.116, 89.97082, 2.967059612274169921, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3416.1377 -616.116 89.97082
(@GUID+23, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3380.6165, -582.8354, 74.08037, 0.191986218094825744, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3380.6165 -582.8354 74.08037
(@GUID+24, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3349.697, -616.90314, 57.985744, 3.857177734375, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3349.697 -616.90314 57.985744
(@GUID+25, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3316.5, -649.51746, 44.792603, 0.331612557172775268, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3316.5 -649.51746 44.792603
(@GUID+26, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3350.2969, -649.42065, 57.166985, 1.640609502792358398, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3350.2969 -649.42065 57.166985
(@GUID+27, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3315.698, -583.3811, 50.522247, 1.413716673851013183, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3315.698 -583.3811 50.522247
(@GUID+28, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3349.7317, -549.2422, 61.092358, 1.780235767364501953, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3349.7317 -549.2422 61.092358
(@GUID+29, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3315.7517, -516.4884, 45.3971, 5.637413501739501953, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3315.7517 -516.4884 45.3971
(@GUID+30, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3380.8977, -516.3951, 79.171684, 5.410520553588867187, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3380.8977 -516.3951 79.171684
(@GUID+31, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3351.2756, -482.5129, 60.403976, 4.764749050140380859, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3351.2756 -482.5129 60.403976
(@GUID+32, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3316.1226, -448.1146, 44.765568, 1.989675283432006835, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3316.1226 -448.1146 44.765568
(@GUID+33, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3382.8196, -483.03918, 77.80232, 3.700098037719726562, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3382.8196 -483.03918 77.80232
(@GUID+34, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3349.794, -417.10135, 56.75424, 2.513274192810058593, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3349.794 -417.10135 56.75424
(@GUID+35, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3348.7432, -448.0772, 57.575886, 0.78539818525314331, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3348.7432 -448.0772 57.575886
(@GUID+36, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3383.186, -450.41245, 75.00692, 5.637413501739501953, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3383.186 -450.41245 75.00692
(@GUID+37, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3414.4707, -482.71378, 93.68731, 4.921828269958496093, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3414.4707 -482.71378 93.68731
(@GUID+38, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3443.998, -451.069, 103.830345, 4.764749050140380859, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3443.998 -451.069 103.830345
(@GUID+39, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3415.8909, -417.65582, 88.01156, 4.939281940460205078, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3415.8909 -417.65582 88.01156
(@GUID+40, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3446.9106, -385.0663, 99.40753, 3.333578824996948242, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3446.9106 -385.0663 99.40753
(@GUID+41, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3382.5842, -315.41565, 67.36882, 2.914699792861938476, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3382.5842 -315.41565 67.36882
(@GUID+42, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3349.948, -283.81277, 52.36322, 2.39110112190246582, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3349.948 -283.81277 52.36322
(@GUID+43, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3317.2522, -317.657, 47.845993, 1.396263360977172851, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3317.2522 -317.657 47.845993
(@GUID+44, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3315.213, -382.25696, 46.17117, 2.862339973449707031, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3315.213 -382.25696 46.17117
(@GUID+45, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3348.848, -348.9765, 59.206493, 4.223696708679199218, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3348.848 -348.9765 59.206493
(@GUID+46, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3416.6682, -349.76334, 85.79489, 3.089232683181762695, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3416.6682 -349.76334 85.79489
(@GUID+47, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3414.71, -251.71881, 69.88929, 6.2657318115234375, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3414.71 -251.71881 69.88929
(@GUID+48, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3416.4744, -283.984, 74.75688, 4.904375076293945312, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3416.4744 -283.984 74.75688
(@GUID+49, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3316.6934, -251.7137, 45.752125, 5.8817596435546875, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3316.6934 -251.7137 45.752125
(@GUID+50, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3349.1648, -150.86676, 72.83647, 0.959931075572967529, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3349.1648 -150.86676 72.83647
(@GUID+51, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3381.8428, -182.8162, 73.10109, 0.03490658476948738, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3381.8428 -182.8162 73.10109
(@GUID+52, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3348.3452, -215.23567, 54.66409, 2.722713708877563476, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3348.3452 -215.23567 54.66409
(@GUID+53, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3382.8481, -216.96411, 57.58555, 1.797689080238342285, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3382.8481 -216.96411 57.58555
(@GUID+54, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3416.6746, -215.94646, 61.198017, 5.462880611419677734, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3416.6746 -215.94646 61.198017
(@GUID+55, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3448.3455, -249.88683, 78.648254, 5.427973747253417968, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3448.3455 -249.88683 78.648254
(@GUID+56, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3383.1934, -251.10275, 59.146538, 1.570796370506286621, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3383.1934 -251.10275 59.146538
(@GUID+57, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3499.7493, -252.66504, 99.84052, 4.590215682983398437, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3499.7493 -252.66504 99.84052
(@GUID+58, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3482.0076, -218.2563, 82.99468, 3.700098037719726562, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3482.0076 -218.2563 82.99468
(@GUID+59, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3316.3364, -183.93419, 54.605305, 3.665191411972045898, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3316.3364 -183.93419 54.605305
(@GUID+60, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3282.083, -150.44336, 47.382942, 4.24114990234375, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3282.083 -150.44336 47.382942
(@GUID+61, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3316.3699, -116.48704, 67.940285, 5.113814830780029296, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3316.3699 -116.48704 67.940285
(@GUID+62, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3214.9846, -149.21484, 39.28299, 0.209439516067504882, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3214.9846 -149.21484 39.28299
(@GUID+63, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3183.0535, -116.27143, 44.805836, 0.104719758033752441, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3183.0535 -116.27143 44.805836
(@GUID+64, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3148.8647, -148.27599, 46.624462, 4.886921882629394531, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3148.8647 -148.27599 46.624462
(@GUID+65, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3154.2168, -82.73394, 47.97465, 4.921828269958496093, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3154.2168 -82.73394 47.97465
(@GUID+66, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3099.7485, -66.082306, 54.53202, 4.293509960174560546, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3099.7485 -66.082306 54.53202
(@GUID+67, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3133.4392, -11.885471, 59.255135, 1.640609502792358398, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3133.4392 -11.885471 59.255135
(@GUID+68, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3316.87, -47.5791, 95.75811, 2.740166902542114257, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3316.87 -47.5791 95.75811
(@GUID+69, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3366.994, -61.76655, 110.81812, 2.740166902542114257, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3366.994 -61.76655 110.81812
(@GUID+70, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3316.4268, -86.198524, 80.832016, 3.089232683181762695, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3316.4268 -86.198524 80.832016
(@GUID+71, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3250.3337, -111.76085, 64.734215, 5.567600250244140625, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3250.3337 -111.76085 64.734215
(@GUID+72, 2961, 0, 0, 1, 0, 0, 1, 1, 0, -3283.1577, -84.32872, 78.66017, 2.775073528289794921, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0);