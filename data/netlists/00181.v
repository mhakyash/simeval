// Benchmark "sd_controller" written by ABC on Wed Jun 26 15:22:02 2024

module sd_controller ( clock, 
    clk, rst, \cmd[0] , \cmd[1] , \cmd[2] , \cmd[3] , \cmd[4] , \cmd[5] ,
    \cmd[6] , \cmd[7] , \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    \data_in[8] , \data_in[9] , \data_in[10] , \data_in[11] ,
    \data_in[12] , \data_in[13] , \data_in[14] , \data_in[15] ,
    \data_in[16] , \data_in[17] , \data_in[18] , \data_in[19] ,
    \data_in[20] , \data_in[21] , \data_in[22] , \data_in[23] ,
    \data_in[24] , \data_in[25] , \data_in[26] , \data_in[27] ,
    \data_in[28] , \data_in[29] , \data_in[30] , \data_in[31] ,
    \data_in[32] , \data_in[33] , \data_in[34] , \data_in[35] ,
    \data_in[36] , \data_in[37] , \data_in[38] , \data_in[39] ,
    \data_in[40] , \data_in[41] , \data_in[42] , \data_in[43] ,
    \data_in[44] , \data_in[45] , \data_in[46] , \data_in[47] ,
    \data_in[48] , \data_in[49] , \data_in[50] , \data_in[51] ,
    \data_in[52] , \data_in[53] , \data_in[54] , \data_in[55] ,
    \data_in[56] , \data_in[57] , \data_in[58] , \data_in[59] ,
    \data_in[60] , \data_in[61] , \data_in[62] , \data_in[63] ,
    \data_in[64] , \data_in[65] , \data_in[66] , \data_in[67] ,
    \data_in[68] , \data_in[69] , \data_in[70] , \data_in[71] ,
    \data_in[72] , \data_in[73] , \data_in[74] , \data_in[75] ,
    \data_in[76] , \data_in[77] , \data_in[78] , \data_in[79] ,
    \data_in[80] , \data_in[81] , \data_in[82] , \data_in[83] ,
    \data_in[84] , \data_in[85] , \data_in[86] , \data_in[87] ,
    \data_in[88] , \data_in[89] , \data_in[90] , \data_in[91] ,
    \data_in[92] , \data_in[93] , \data_in[94] , \data_in[95] ,
    \data_in[96] , \data_in[97] , \data_in[98] , \data_in[99] ,
    \data_in[100] , \data_in[101] , \data_in[102] , \data_in[103] ,
    \data_in[104] , \data_in[105] , \data_in[106] , \data_in[107] ,
    \data_in[108] , \data_in[109] , \data_in[110] , \data_in[111] ,
    \data_in[112] , \data_in[113] , \data_in[114] , \data_in[115] ,
    \data_in[116] , \data_in[117] , \data_in[118] , \data_in[119] ,
    \data_in[120] , \data_in[121] , \data_in[122] , \data_in[123] ,
    \data_in[124] , \data_in[125] , \data_in[126] , \data_in[127] ,
    \data_in[128] , \data_in[129] , \data_in[130] , \data_in[131] ,
    \data_in[132] , \data_in[133] , \data_in[134] , \data_in[135] ,
    \data_in[136] , \data_in[137] , \data_in[138] , \data_in[139] ,
    \data_in[140] , \data_in[141] , \data_in[142] , \data_in[143] ,
    \data_in[144] , \data_in[145] , \data_in[146] , \data_in[147] ,
    \data_in[148] , \data_in[149] , \data_in[150] , \data_in[151] ,
    \data_in[152] , \data_in[153] , \data_in[154] , \data_in[155] ,
    \data_in[156] , \data_in[157] , \data_in[158] , \data_in[159] ,
    \data_in[160] , \data_in[161] , \data_in[162] , \data_in[163] ,
    \data_in[164] , \data_in[165] , \data_in[166] , \data_in[167] ,
    \data_in[168] , \data_in[169] , \data_in[170] , \data_in[171] ,
    \data_in[172] , \data_in[173] , \data_in[174] , \data_in[175] ,
    \data_in[176] , \data_in[177] , \data_in[178] , \data_in[179] ,
    \data_in[180] , \data_in[181] , \data_in[182] , \data_in[183] ,
    \data_in[184] , \data_in[185] , \data_in[186] , \data_in[187] ,
    \data_in[188] , \data_in[189] , \data_in[190] , \data_in[191] ,
    \data_in[192] , \data_in[193] , \data_in[194] , \data_in[195] ,
    \data_in[196] , \data_in[197] , \data_in[198] , \data_in[199] ,
    \data_in[200] , \data_in[201] , \data_in[202] , \data_in[203] ,
    \data_in[204] , \data_in[205] , \data_in[206] , \data_in[207] ,
    \data_in[208] , \data_in[209] , \data_in[210] , \data_in[211] ,
    \data_in[212] , \data_in[213] , \data_in[214] , \data_in[215] ,
    \data_in[216] , \data_in[217] , \data_in[218] , \data_in[219] ,
    \data_in[220] , \data_in[221] , \data_in[222] , \data_in[223] ,
    \data_in[224] , \data_in[225] , \data_in[226] , \data_in[227] ,
    \data_in[228] , \data_in[229] , \data_in[230] , \data_in[231] ,
    \data_in[232] , \data_in[233] , \data_in[234] , \data_in[235] ,
    \data_in[236] , \data_in[237] , \data_in[238] , \data_in[239] ,
    \data_in[240] , \data_in[241] , \data_in[242] , \data_in[243] ,
    \data_in[244] , \data_in[245] , \data_in[246] , \data_in[247] ,
    \data_in[248] , \data_in[249] , \data_in[250] , \data_in[251] ,
    \data_in[252] , \data_in[253] , \data_in[254] , \data_in[255] ,
    \data_in[256] , \data_in[257] , \data_in[258] , \data_in[259] ,
    \data_in[260] , \data_in[261] , \data_in[262] , \data_in[263] ,
    \data_in[264] , \data_in[265] , \data_in[266] , \data_in[267] ,
    \data_in[268] , \data_in[269] , \data_in[270] , \data_in[271] ,
    \data_in[272] , \data_in[273] , \data_in[274] , \data_in[275] ,
    \data_in[276] , \data_in[277] , \data_in[278] , \data_in[279] ,
    \data_in[280] , \data_in[281] , \data_in[282] , \data_in[283] ,
    \data_in[284] , \data_in[285] , \data_in[286] , \data_in[287] ,
    \data_in[288] , \data_in[289] , \data_in[290] , \data_in[291] ,
    \data_in[292] , \data_in[293] , \data_in[294] , \data_in[295] ,
    \data_in[296] , \data_in[297] , \data_in[298] , \data_in[299] ,
    \data_in[300] , \data_in[301] , \data_in[302] , \data_in[303] ,
    \data_in[304] , \data_in[305] , \data_in[306] , \data_in[307] ,
    \data_in[308] , \data_in[309] , \data_in[310] , \data_in[311] ,
    \data_in[312] , \data_in[313] , \data_in[314] , \data_in[315] ,
    \data_in[316] , \data_in[317] , \data_in[318] , \data_in[319] ,
    \data_in[320] , \data_in[321] , \data_in[322] , \data_in[323] ,
    \data_in[324] , \data_in[325] , \data_in[326] , \data_in[327] ,
    \data_in[328] , \data_in[329] , \data_in[330] , \data_in[331] ,
    \data_in[332] , \data_in[333] , \data_in[334] , \data_in[335] ,
    \data_in[336] , \data_in[337] , \data_in[338] , \data_in[339] ,
    \data_in[340] , \data_in[341] , \data_in[342] , \data_in[343] ,
    \data_in[344] , \data_in[345] , \data_in[346] , \data_in[347] ,
    \data_in[348] , \data_in[349] , \data_in[350] , \data_in[351] ,
    \data_in[352] , \data_in[353] , \data_in[354] , \data_in[355] ,
    \data_in[356] , \data_in[357] , \data_in[358] , \data_in[359] ,
    \data_in[360] , \data_in[361] , \data_in[362] , \data_in[363] ,
    \data_in[364] , \data_in[365] , \data_in[366] , \data_in[367] ,
    \data_in[368] , \data_in[369] , \data_in[370] , \data_in[371] ,
    \data_in[372] , \data_in[373] , \data_in[374] , \data_in[375] ,
    \data_in[376] , \data_in[377] , \data_in[378] , \data_in[379] ,
    \data_in[380] , \data_in[381] , \data_in[382] , \data_in[383] ,
    \data_in[384] , \data_in[385] , \data_in[386] , \data_in[387] ,
    \data_in[388] , \data_in[389] , \data_in[390] , \data_in[391] ,
    \data_in[392] , \data_in[393] , \data_in[394] , \data_in[395] ,
    \data_in[396] , \data_in[397] , \data_in[398] , \data_in[399] ,
    \data_in[400] , \data_in[401] , \data_in[402] , \data_in[403] ,
    \data_in[404] , \data_in[405] , \data_in[406] , \data_in[407] ,
    \data_in[408] , \data_in[409] , \data_in[410] , \data_in[411] ,
    \data_in[412] , \data_in[413] , \data_in[414] , \data_in[415] ,
    \data_in[416] , \data_in[417] , \data_in[418] , \data_in[419] ,
    \data_in[420] , \data_in[421] , \data_in[422] , \data_in[423] ,
    \data_in[424] , \data_in[425] , \data_in[426] , \data_in[427] ,
    \data_in[428] , \data_in[429] , \data_in[430] , \data_in[431] ,
    \data_in[432] , \data_in[433] , \data_in[434] , \data_in[435] ,
    \data_in[436] , \data_in[437] , \data_in[438] , \data_in[439] ,
    \data_in[440] , \data_in[441] , \data_in[442] , \data_in[443] ,
    \data_in[444] , \data_in[445] , \data_in[446] , \data_in[447] ,
    \data_in[448] , \data_in[449] , \data_in[450] , \data_in[451] ,
    \data_in[452] , \data_in[453] , \data_in[454] , \data_in[455] ,
    \data_in[456] , \data_in[457] , \data_in[458] , \data_in[459] ,
    \data_in[460] , \data_in[461] , \data_in[462] , \data_in[463] ,
    \data_in[464] , \data_in[465] , \data_in[466] , \data_in[467] ,
    \data_in[468] , \data_in[469] , \data_in[470] , \data_in[471] ,
    \data_in[472] , \data_in[473] , \data_in[474] , \data_in[475] ,
    \data_in[476] , \data_in[477] , \data_in[478] , \data_in[479] ,
    \data_in[480] , \data_in[481] , \data_in[482] , \data_in[483] ,
    \data_in[484] , \data_in[485] , \data_in[486] , \data_in[487] ,
    \data_in[488] , \data_in[489] , \data_in[490] , \data_in[491] ,
    \data_in[492] , \data_in[493] , \data_in[494] , \data_in[495] ,
    \data_in[496] , \data_in[497] , \data_in[498] , \data_in[499] ,
    \data_in[500] , \data_in[501] , \data_in[502] , \data_in[503] ,
    \data_in[504] , \data_in[505] , \data_in[506] , \data_in[507] ,
    \data_in[508] , \data_in[509] , \data_in[510] , \data_in[511] , mode,
    data_en,
    \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ,
    \data_out[8] , \data_out[9] , \data_out[10] , \data_out[11] ,
    \data_out[12] , \data_out[13] , \data_out[14] , \data_out[15] ,
    \data_out[16] , \data_out[17] , \data_out[18] , \data_out[19] ,
    \data_out[20] , \data_out[21] , \data_out[22] , \data_out[23] ,
    \data_out[24] , \data_out[25] , \data_out[26] , \data_out[27] ,
    \data_out[28] , \data_out[29] , \data_out[30] , \data_out[31] ,
    \data_out[32] , \data_out[33] , \data_out[34] , \data_out[35] ,
    \data_out[36] , \data_out[37] , \data_out[38] , \data_out[39] ,
    \data_out[40] , \data_out[41] , \data_out[42] , \data_out[43] ,
    \data_out[44] , \data_out[45] , \data_out[46] , \data_out[47] ,
    \data_out[48] , \data_out[49] , \data_out[50] , \data_out[51] ,
    \data_out[52] , \data_out[53] , \data_out[54] , \data_out[55] ,
    \data_out[56] , \data_out[57] , \data_out[58] , \data_out[59] ,
    \data_out[60] , \data_out[61] , \data_out[62] , \data_out[63] ,
    \data_out[64] , \data_out[65] , \data_out[66] , \data_out[67] ,
    \data_out[68] , \data_out[69] , \data_out[70] , \data_out[71] ,
    \data_out[72] , \data_out[73] , \data_out[74] , \data_out[75] ,
    \data_out[76] , \data_out[77] , \data_out[78] , \data_out[79] ,
    \data_out[80] , \data_out[81] , \data_out[82] , \data_out[83] ,
    \data_out[84] , \data_out[85] , \data_out[86] , \data_out[87] ,
    \data_out[88] , \data_out[89] , \data_out[90] , \data_out[91] ,
    \data_out[92] , \data_out[93] , \data_out[94] , \data_out[95] ,
    \data_out[96] , \data_out[97] , \data_out[98] , \data_out[99] ,
    \data_out[100] , \data_out[101] , \data_out[102] , \data_out[103] ,
    \data_out[104] , \data_out[105] , \data_out[106] , \data_out[107] ,
    \data_out[108] , \data_out[109] , \data_out[110] , \data_out[111] ,
    \data_out[112] , \data_out[113] , \data_out[114] , \data_out[115] ,
    \data_out[116] , \data_out[117] , \data_out[118] , \data_out[119] ,
    \data_out[120] , \data_out[121] , \data_out[122] , \data_out[123] ,
    \data_out[124] , \data_out[125] , \data_out[126] , \data_out[127] ,
    \data_out[128] , \data_out[129] , \data_out[130] , \data_out[131] ,
    \data_out[132] , \data_out[133] , \data_out[134] , \data_out[135] ,
    \data_out[136] , \data_out[137] , \data_out[138] , \data_out[139] ,
    \data_out[140] , \data_out[141] , \data_out[142] , \data_out[143] ,
    \data_out[144] , \data_out[145] , \data_out[146] , \data_out[147] ,
    \data_out[148] , \data_out[149] , \data_out[150] , \data_out[151] ,
    \data_out[152] , \data_out[153] , \data_out[154] , \data_out[155] ,
    \data_out[156] , \data_out[157] , \data_out[158] , \data_out[159] ,
    \data_out[160] , \data_out[161] , \data_out[162] , \data_out[163] ,
    \data_out[164] , \data_out[165] , \data_out[166] , \data_out[167] ,
    \data_out[168] , \data_out[169] , \data_out[170] , \data_out[171] ,
    \data_out[172] , \data_out[173] , \data_out[174] , \data_out[175] ,
    \data_out[176] , \data_out[177] , \data_out[178] , \data_out[179] ,
    \data_out[180] , \data_out[181] , \data_out[182] , \data_out[183] ,
    \data_out[184] , \data_out[185] , \data_out[186] , \data_out[187] ,
    \data_out[188] , \data_out[189] , \data_out[190] , \data_out[191] ,
    \data_out[192] , \data_out[193] , \data_out[194] , \data_out[195] ,
    \data_out[196] , \data_out[197] , \data_out[198] , \data_out[199] ,
    \data_out[200] , \data_out[201] , \data_out[202] , \data_out[203] ,
    \data_out[204] , \data_out[205] , \data_out[206] , \data_out[207] ,
    \data_out[208] , \data_out[209] , \data_out[210] , \data_out[211] ,
    \data_out[212] , \data_out[213] , \data_out[214] , \data_out[215] ,
    \data_out[216] , \data_out[217] , \data_out[218] , \data_out[219] ,
    \data_out[220] , \data_out[221] , \data_out[222] , \data_out[223] ,
    \data_out[224] , \data_out[225] , \data_out[226] , \data_out[227] ,
    \data_out[228] , \data_out[229] , \data_out[230] , \data_out[231] ,
    \data_out[232] , \data_out[233] , \data_out[234] , \data_out[235] ,
    \data_out[236] , \data_out[237] , \data_out[238] , \data_out[239] ,
    \data_out[240] , \data_out[241] , \data_out[242] , \data_out[243] ,
    \data_out[244] , \data_out[245] , \data_out[246] , \data_out[247] ,
    \data_out[248] , \data_out[249] , \data_out[250] , \data_out[251] ,
    \data_out[252] , \data_out[253] , \data_out[254] , \data_out[255] ,
    \data_out[256] , \data_out[257] , \data_out[258] , \data_out[259] ,
    \data_out[260] , \data_out[261] , \data_out[262] , \data_out[263] ,
    \data_out[264] , \data_out[265] , \data_out[266] , \data_out[267] ,
    \data_out[268] , \data_out[269] , \data_out[270] , \data_out[271] ,
    \data_out[272] , \data_out[273] , \data_out[274] , \data_out[275] ,
    \data_out[276] , \data_out[277] , \data_out[278] , \data_out[279] ,
    \data_out[280] , \data_out[281] , \data_out[282] , \data_out[283] ,
    \data_out[284] , \data_out[285] , \data_out[286] , \data_out[287] ,
    \data_out[288] , \data_out[289] , \data_out[290] , \data_out[291] ,
    \data_out[292] , \data_out[293] , \data_out[294] , \data_out[295] ,
    \data_out[296] , \data_out[297] , \data_out[298] , \data_out[299] ,
    \data_out[300] , \data_out[301] , \data_out[302] , \data_out[303] ,
    \data_out[304] , \data_out[305] , \data_out[306] , \data_out[307] ,
    \data_out[308] , \data_out[309] , \data_out[310] , \data_out[311] ,
    \data_out[312] , \data_out[313] , \data_out[314] , \data_out[315] ,
    \data_out[316] , \data_out[317] , \data_out[318] , \data_out[319] ,
    \data_out[320] , \data_out[321] , \data_out[322] , \data_out[323] ,
    \data_out[324] , \data_out[325] , \data_out[326] , \data_out[327] ,
    \data_out[328] , \data_out[329] , \data_out[330] , \data_out[331] ,
    \data_out[332] , \data_out[333] , \data_out[334] , \data_out[335] ,
    \data_out[336] , \data_out[337] , \data_out[338] , \data_out[339] ,
    \data_out[340] , \data_out[341] , \data_out[342] , \data_out[343] ,
    \data_out[344] , \data_out[345] , \data_out[346] , \data_out[347] ,
    \data_out[348] , \data_out[349] , \data_out[350] , \data_out[351] ,
    \data_out[352] , \data_out[353] , \data_out[354] , \data_out[355] ,
    \data_out[356] , \data_out[357] , \data_out[358] , \data_out[359] ,
    \data_out[360] , \data_out[361] , \data_out[362] , \data_out[363] ,
    \data_out[364] , \data_out[365] , \data_out[366] , \data_out[367] ,
    \data_out[368] , \data_out[369] , \data_out[370] , \data_out[371] ,
    \data_out[372] , \data_out[373] , \data_out[374] , \data_out[375] ,
    \data_out[376] , \data_out[377] , \data_out[378] , \data_out[379] ,
    \data_out[380] , \data_out[381] , \data_out[382] , \data_out[383] ,
    \data_out[384] , \data_out[385] , \data_out[386] , \data_out[387] ,
    \data_out[388] , \data_out[389] , \data_out[390] , \data_out[391] ,
    \data_out[392] , \data_out[393] , \data_out[394] , \data_out[395] ,
    \data_out[396] , \data_out[397] , \data_out[398] , \data_out[399] ,
    \data_out[400] , \data_out[401] , \data_out[402] , \data_out[403] ,
    \data_out[404] , \data_out[405] , \data_out[406] , \data_out[407] ,
    \data_out[408] , \data_out[409] , \data_out[410] , \data_out[411] ,
    \data_out[412] , \data_out[413] , \data_out[414] , \data_out[415] ,
    \data_out[416] , \data_out[417] , \data_out[418] , \data_out[419] ,
    \data_out[420] , \data_out[421] , \data_out[422] , \data_out[423] ,
    \data_out[424] , \data_out[425] , \data_out[426] , \data_out[427] ,
    \data_out[428] , \data_out[429] , \data_out[430] , \data_out[431] ,
    \data_out[432] , \data_out[433] , \data_out[434] , \data_out[435] ,
    \data_out[436] , \data_out[437] , \data_out[438] , \data_out[439] ,
    \data_out[440] , \data_out[441] , \data_out[442] , \data_out[443] ,
    \data_out[444] , \data_out[445] , \data_out[446] , \data_out[447] ,
    \data_out[448] , \data_out[449] , \data_out[450] , \data_out[451] ,
    \data_out[452] , \data_out[453] , \data_out[454] , \data_out[455] ,
    \data_out[456] , \data_out[457] , \data_out[458] , \data_out[459] ,
    \data_out[460] , \data_out[461] , \data_out[462] , \data_out[463] ,
    \data_out[464] , \data_out[465] , \data_out[466] , \data_out[467] ,
    \data_out[468] , \data_out[469] , \data_out[470] , \data_out[471] ,
    \data_out[472] , \data_out[473] , \data_out[474] , \data_out[475] ,
    \data_out[476] , \data_out[477] , \data_out[478] , \data_out[479] ,
    \data_out[480] , \data_out[481] , \data_out[482] , \data_out[483] ,
    \data_out[484] , \data_out[485] , \data_out[486] , \data_out[487] ,
    \data_out[488] , \data_out[489] , \data_out[490] , \data_out[491] ,
    \data_out[492] , \data_out[493] , \data_out[494] , \data_out[495] ,
    \data_out[496] , \data_out[497] , \data_out[498] , \data_out[499] ,
    \data_out[500] , \data_out[501] , \data_out[502] , \data_out[503] ,
    \data_out[504] , \data_out[505] , \data_out[506] , \data_out[507] ,
    \data_out[508] , \data_out[509] , \data_out[510] , \data_out[511] ,
    cmd_ack, data_ack  );
  input  clock;
  input  clk, rst, \cmd[0] , \cmd[1] , \cmd[2] , \cmd[3] , \cmd[4] ,
    \cmd[5] , \cmd[6] , \cmd[7] , \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    \data_in[8] , \data_in[9] , \data_in[10] , \data_in[11] ,
    \data_in[12] , \data_in[13] , \data_in[14] , \data_in[15] ,
    \data_in[16] , \data_in[17] , \data_in[18] , \data_in[19] ,
    \data_in[20] , \data_in[21] , \data_in[22] , \data_in[23] ,
    \data_in[24] , \data_in[25] , \data_in[26] , \data_in[27] ,
    \data_in[28] , \data_in[29] , \data_in[30] , \data_in[31] ,
    \data_in[32] , \data_in[33] , \data_in[34] , \data_in[35] ,
    \data_in[36] , \data_in[37] , \data_in[38] , \data_in[39] ,
    \data_in[40] , \data_in[41] , \data_in[42] , \data_in[43] ,
    \data_in[44] , \data_in[45] , \data_in[46] , \data_in[47] ,
    \data_in[48] , \data_in[49] , \data_in[50] , \data_in[51] ,
    \data_in[52] , \data_in[53] , \data_in[54] , \data_in[55] ,
    \data_in[56] , \data_in[57] , \data_in[58] , \data_in[59] ,
    \data_in[60] , \data_in[61] , \data_in[62] , \data_in[63] ,
    \data_in[64] , \data_in[65] , \data_in[66] , \data_in[67] ,
    \data_in[68] , \data_in[69] , \data_in[70] , \data_in[71] ,
    \data_in[72] , \data_in[73] , \data_in[74] , \data_in[75] ,
    \data_in[76] , \data_in[77] , \data_in[78] , \data_in[79] ,
    \data_in[80] , \data_in[81] , \data_in[82] , \data_in[83] ,
    \data_in[84] , \data_in[85] , \data_in[86] , \data_in[87] ,
    \data_in[88] , \data_in[89] , \data_in[90] , \data_in[91] ,
    \data_in[92] , \data_in[93] , \data_in[94] , \data_in[95] ,
    \data_in[96] , \data_in[97] , \data_in[98] , \data_in[99] ,
    \data_in[100] , \data_in[101] , \data_in[102] , \data_in[103] ,
    \data_in[104] , \data_in[105] , \data_in[106] , \data_in[107] ,
    \data_in[108] , \data_in[109] , \data_in[110] , \data_in[111] ,
    \data_in[112] , \data_in[113] , \data_in[114] , \data_in[115] ,
    \data_in[116] , \data_in[117] , \data_in[118] , \data_in[119] ,
    \data_in[120] , \data_in[121] , \data_in[122] , \data_in[123] ,
    \data_in[124] , \data_in[125] , \data_in[126] , \data_in[127] ,
    \data_in[128] , \data_in[129] , \data_in[130] , \data_in[131] ,
    \data_in[132] , \data_in[133] , \data_in[134] , \data_in[135] ,
    \data_in[136] , \data_in[137] , \data_in[138] , \data_in[139] ,
    \data_in[140] , \data_in[141] , \data_in[142] , \data_in[143] ,
    \data_in[144] , \data_in[145] , \data_in[146] , \data_in[147] ,
    \data_in[148] , \data_in[149] , \data_in[150] , \data_in[151] ,
    \data_in[152] , \data_in[153] , \data_in[154] , \data_in[155] ,
    \data_in[156] , \data_in[157] , \data_in[158] , \data_in[159] ,
    \data_in[160] , \data_in[161] , \data_in[162] , \data_in[163] ,
    \data_in[164] , \data_in[165] , \data_in[166] , \data_in[167] ,
    \data_in[168] , \data_in[169] , \data_in[170] , \data_in[171] ,
    \data_in[172] , \data_in[173] , \data_in[174] , \data_in[175] ,
    \data_in[176] , \data_in[177] , \data_in[178] , \data_in[179] ,
    \data_in[180] , \data_in[181] , \data_in[182] , \data_in[183] ,
    \data_in[184] , \data_in[185] , \data_in[186] , \data_in[187] ,
    \data_in[188] , \data_in[189] , \data_in[190] , \data_in[191] ,
    \data_in[192] , \data_in[193] , \data_in[194] , \data_in[195] ,
    \data_in[196] , \data_in[197] , \data_in[198] , \data_in[199] ,
    \data_in[200] , \data_in[201] , \data_in[202] , \data_in[203] ,
    \data_in[204] , \data_in[205] , \data_in[206] , \data_in[207] ,
    \data_in[208] , \data_in[209] , \data_in[210] , \data_in[211] ,
    \data_in[212] , \data_in[213] , \data_in[214] , \data_in[215] ,
    \data_in[216] , \data_in[217] , \data_in[218] , \data_in[219] ,
    \data_in[220] , \data_in[221] , \data_in[222] , \data_in[223] ,
    \data_in[224] , \data_in[225] , \data_in[226] , \data_in[227] ,
    \data_in[228] , \data_in[229] , \data_in[230] , \data_in[231] ,
    \data_in[232] , \data_in[233] , \data_in[234] , \data_in[235] ,
    \data_in[236] , \data_in[237] , \data_in[238] , \data_in[239] ,
    \data_in[240] , \data_in[241] , \data_in[242] , \data_in[243] ,
    \data_in[244] , \data_in[245] , \data_in[246] , \data_in[247] ,
    \data_in[248] , \data_in[249] , \data_in[250] , \data_in[251] ,
    \data_in[252] , \data_in[253] , \data_in[254] , \data_in[255] ,
    \data_in[256] , \data_in[257] , \data_in[258] , \data_in[259] ,
    \data_in[260] , \data_in[261] , \data_in[262] , \data_in[263] ,
    \data_in[264] , \data_in[265] , \data_in[266] , \data_in[267] ,
    \data_in[268] , \data_in[269] , \data_in[270] , \data_in[271] ,
    \data_in[272] , \data_in[273] , \data_in[274] , \data_in[275] ,
    \data_in[276] , \data_in[277] , \data_in[278] , \data_in[279] ,
    \data_in[280] , \data_in[281] , \data_in[282] , \data_in[283] ,
    \data_in[284] , \data_in[285] , \data_in[286] , \data_in[287] ,
    \data_in[288] , \data_in[289] , \data_in[290] , \data_in[291] ,
    \data_in[292] , \data_in[293] , \data_in[294] , \data_in[295] ,
    \data_in[296] , \data_in[297] , \data_in[298] , \data_in[299] ,
    \data_in[300] , \data_in[301] , \data_in[302] , \data_in[303] ,
    \data_in[304] , \data_in[305] , \data_in[306] , \data_in[307] ,
    \data_in[308] , \data_in[309] , \data_in[310] , \data_in[311] ,
    \data_in[312] , \data_in[313] , \data_in[314] , \data_in[315] ,
    \data_in[316] , \data_in[317] , \data_in[318] , \data_in[319] ,
    \data_in[320] , \data_in[321] , \data_in[322] , \data_in[323] ,
    \data_in[324] , \data_in[325] , \data_in[326] , \data_in[327] ,
    \data_in[328] , \data_in[329] , \data_in[330] , \data_in[331] ,
    \data_in[332] , \data_in[333] , \data_in[334] , \data_in[335] ,
    \data_in[336] , \data_in[337] , \data_in[338] , \data_in[339] ,
    \data_in[340] , \data_in[341] , \data_in[342] , \data_in[343] ,
    \data_in[344] , \data_in[345] , \data_in[346] , \data_in[347] ,
    \data_in[348] , \data_in[349] , \data_in[350] , \data_in[351] ,
    \data_in[352] , \data_in[353] , \data_in[354] , \data_in[355] ,
    \data_in[356] , \data_in[357] , \data_in[358] , \data_in[359] ,
    \data_in[360] , \data_in[361] , \data_in[362] , \data_in[363] ,
    \data_in[364] , \data_in[365] , \data_in[366] , \data_in[367] ,
    \data_in[368] , \data_in[369] , \data_in[370] , \data_in[371] ,
    \data_in[372] , \data_in[373] , \data_in[374] , \data_in[375] ,
    \data_in[376] , \data_in[377] , \data_in[378] , \data_in[379] ,
    \data_in[380] , \data_in[381] , \data_in[382] , \data_in[383] ,
    \data_in[384] , \data_in[385] , \data_in[386] , \data_in[387] ,
    \data_in[388] , \data_in[389] , \data_in[390] , \data_in[391] ,
    \data_in[392] , \data_in[393] , \data_in[394] , \data_in[395] ,
    \data_in[396] , \data_in[397] , \data_in[398] , \data_in[399] ,
    \data_in[400] , \data_in[401] , \data_in[402] , \data_in[403] ,
    \data_in[404] , \data_in[405] , \data_in[406] , \data_in[407] ,
    \data_in[408] , \data_in[409] , \data_in[410] , \data_in[411] ,
    \data_in[412] , \data_in[413] , \data_in[414] , \data_in[415] ,
    \data_in[416] , \data_in[417] , \data_in[418] , \data_in[419] ,
    \data_in[420] , \data_in[421] , \data_in[422] , \data_in[423] ,
    \data_in[424] , \data_in[425] , \data_in[426] , \data_in[427] ,
    \data_in[428] , \data_in[429] , \data_in[430] , \data_in[431] ,
    \data_in[432] , \data_in[433] , \data_in[434] , \data_in[435] ,
    \data_in[436] , \data_in[437] , \data_in[438] , \data_in[439] ,
    \data_in[440] , \data_in[441] , \data_in[442] , \data_in[443] ,
    \data_in[444] , \data_in[445] , \data_in[446] , \data_in[447] ,
    \data_in[448] , \data_in[449] , \data_in[450] , \data_in[451] ,
    \data_in[452] , \data_in[453] , \data_in[454] , \data_in[455] ,
    \data_in[456] , \data_in[457] , \data_in[458] , \data_in[459] ,
    \data_in[460] , \data_in[461] , \data_in[462] , \data_in[463] ,
    \data_in[464] , \data_in[465] , \data_in[466] , \data_in[467] ,
    \data_in[468] , \data_in[469] , \data_in[470] , \data_in[471] ,
    \data_in[472] , \data_in[473] , \data_in[474] , \data_in[475] ,
    \data_in[476] , \data_in[477] , \data_in[478] , \data_in[479] ,
    \data_in[480] , \data_in[481] , \data_in[482] , \data_in[483] ,
    \data_in[484] , \data_in[485] , \data_in[486] , \data_in[487] ,
    \data_in[488] , \data_in[489] , \data_in[490] , \data_in[491] ,
    \data_in[492] , \data_in[493] , \data_in[494] , \data_in[495] ,
    \data_in[496] , \data_in[497] , \data_in[498] , \data_in[499] ,
    \data_in[500] , \data_in[501] , \data_in[502] , \data_in[503] ,
    \data_in[504] , \data_in[505] , \data_in[506] , \data_in[507] ,
    \data_in[508] , \data_in[509] , \data_in[510] , \data_in[511] , mode,
    data_en;
  output \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ,
    \data_out[8] , \data_out[9] , \data_out[10] , \data_out[11] ,
    \data_out[12] , \data_out[13] , \data_out[14] , \data_out[15] ,
    \data_out[16] , \data_out[17] , \data_out[18] , \data_out[19] ,
    \data_out[20] , \data_out[21] , \data_out[22] , \data_out[23] ,
    \data_out[24] , \data_out[25] , \data_out[26] , \data_out[27] ,
    \data_out[28] , \data_out[29] , \data_out[30] , \data_out[31] ,
    \data_out[32] , \data_out[33] , \data_out[34] , \data_out[35] ,
    \data_out[36] , \data_out[37] , \data_out[38] , \data_out[39] ,
    \data_out[40] , \data_out[41] , \data_out[42] , \data_out[43] ,
    \data_out[44] , \data_out[45] , \data_out[46] , \data_out[47] ,
    \data_out[48] , \data_out[49] , \data_out[50] , \data_out[51] ,
    \data_out[52] , \data_out[53] , \data_out[54] , \data_out[55] ,
    \data_out[56] , \data_out[57] , \data_out[58] , \data_out[59] ,
    \data_out[60] , \data_out[61] , \data_out[62] , \data_out[63] ,
    \data_out[64] , \data_out[65] , \data_out[66] , \data_out[67] ,
    \data_out[68] , \data_out[69] , \data_out[70] , \data_out[71] ,
    \data_out[72] , \data_out[73] , \data_out[74] , \data_out[75] ,
    \data_out[76] , \data_out[77] , \data_out[78] , \data_out[79] ,
    \data_out[80] , \data_out[81] , \data_out[82] , \data_out[83] ,
    \data_out[84] , \data_out[85] , \data_out[86] , \data_out[87] ,
    \data_out[88] , \data_out[89] , \data_out[90] , \data_out[91] ,
    \data_out[92] , \data_out[93] , \data_out[94] , \data_out[95] ,
    \data_out[96] , \data_out[97] , \data_out[98] , \data_out[99] ,
    \data_out[100] , \data_out[101] , \data_out[102] , \data_out[103] ,
    \data_out[104] , \data_out[105] , \data_out[106] , \data_out[107] ,
    \data_out[108] , \data_out[109] , \data_out[110] , \data_out[111] ,
    \data_out[112] , \data_out[113] , \data_out[114] , \data_out[115] ,
    \data_out[116] , \data_out[117] , \data_out[118] , \data_out[119] ,
    \data_out[120] , \data_out[121] , \data_out[122] , \data_out[123] ,
    \data_out[124] , \data_out[125] , \data_out[126] , \data_out[127] ,
    \data_out[128] , \data_out[129] , \data_out[130] , \data_out[131] ,
    \data_out[132] , \data_out[133] , \data_out[134] , \data_out[135] ,
    \data_out[136] , \data_out[137] , \data_out[138] , \data_out[139] ,
    \data_out[140] , \data_out[141] , \data_out[142] , \data_out[143] ,
    \data_out[144] , \data_out[145] , \data_out[146] , \data_out[147] ,
    \data_out[148] , \data_out[149] , \data_out[150] , \data_out[151] ,
    \data_out[152] , \data_out[153] , \data_out[154] , \data_out[155] ,
    \data_out[156] , \data_out[157] , \data_out[158] , \data_out[159] ,
    \data_out[160] , \data_out[161] , \data_out[162] , \data_out[163] ,
    \data_out[164] , \data_out[165] , \data_out[166] , \data_out[167] ,
    \data_out[168] , \data_out[169] , \data_out[170] , \data_out[171] ,
    \data_out[172] , \data_out[173] , \data_out[174] , \data_out[175] ,
    \data_out[176] , \data_out[177] , \data_out[178] , \data_out[179] ,
    \data_out[180] , \data_out[181] , \data_out[182] , \data_out[183] ,
    \data_out[184] , \data_out[185] , \data_out[186] , \data_out[187] ,
    \data_out[188] , \data_out[189] , \data_out[190] , \data_out[191] ,
    \data_out[192] , \data_out[193] , \data_out[194] , \data_out[195] ,
    \data_out[196] , \data_out[197] , \data_out[198] , \data_out[199] ,
    \data_out[200] , \data_out[201] , \data_out[202] , \data_out[203] ,
    \data_out[204] , \data_out[205] , \data_out[206] , \data_out[207] ,
    \data_out[208] , \data_out[209] , \data_out[210] , \data_out[211] ,
    \data_out[212] , \data_out[213] , \data_out[214] , \data_out[215] ,
    \data_out[216] , \data_out[217] , \data_out[218] , \data_out[219] ,
    \data_out[220] , \data_out[221] , \data_out[222] , \data_out[223] ,
    \data_out[224] , \data_out[225] , \data_out[226] , \data_out[227] ,
    \data_out[228] , \data_out[229] , \data_out[230] , \data_out[231] ,
    \data_out[232] , \data_out[233] , \data_out[234] , \data_out[235] ,
    \data_out[236] , \data_out[237] , \data_out[238] , \data_out[239] ,
    \data_out[240] , \data_out[241] , \data_out[242] , \data_out[243] ,
    \data_out[244] , \data_out[245] , \data_out[246] , \data_out[247] ,
    \data_out[248] , \data_out[249] , \data_out[250] , \data_out[251] ,
    \data_out[252] , \data_out[253] , \data_out[254] , \data_out[255] ,
    \data_out[256] , \data_out[257] , \data_out[258] , \data_out[259] ,
    \data_out[260] , \data_out[261] , \data_out[262] , \data_out[263] ,
    \data_out[264] , \data_out[265] , \data_out[266] , \data_out[267] ,
    \data_out[268] , \data_out[269] , \data_out[270] , \data_out[271] ,
    \data_out[272] , \data_out[273] , \data_out[274] , \data_out[275] ,
    \data_out[276] , \data_out[277] , \data_out[278] , \data_out[279] ,
    \data_out[280] , \data_out[281] , \data_out[282] , \data_out[283] ,
    \data_out[284] , \data_out[285] , \data_out[286] , \data_out[287] ,
    \data_out[288] , \data_out[289] , \data_out[290] , \data_out[291] ,
    \data_out[292] , \data_out[293] , \data_out[294] , \data_out[295] ,
    \data_out[296] , \data_out[297] , \data_out[298] , \data_out[299] ,
    \data_out[300] , \data_out[301] , \data_out[302] , \data_out[303] ,
    \data_out[304] , \data_out[305] , \data_out[306] , \data_out[307] ,
    \data_out[308] , \data_out[309] , \data_out[310] , \data_out[311] ,
    \data_out[312] , \data_out[313] , \data_out[314] , \data_out[315] ,
    \data_out[316] , \data_out[317] , \data_out[318] , \data_out[319] ,
    \data_out[320] , \data_out[321] , \data_out[322] , \data_out[323] ,
    \data_out[324] , \data_out[325] , \data_out[326] , \data_out[327] ,
    \data_out[328] , \data_out[329] , \data_out[330] , \data_out[331] ,
    \data_out[332] , \data_out[333] , \data_out[334] , \data_out[335] ,
    \data_out[336] , \data_out[337] , \data_out[338] , \data_out[339] ,
    \data_out[340] , \data_out[341] , \data_out[342] , \data_out[343] ,
    \data_out[344] , \data_out[345] , \data_out[346] , \data_out[347] ,
    \data_out[348] , \data_out[349] , \data_out[350] , \data_out[351] ,
    \data_out[352] , \data_out[353] , \data_out[354] , \data_out[355] ,
    \data_out[356] , \data_out[357] , \data_out[358] , \data_out[359] ,
    \data_out[360] , \data_out[361] , \data_out[362] , \data_out[363] ,
    \data_out[364] , \data_out[365] , \data_out[366] , \data_out[367] ,
    \data_out[368] , \data_out[369] , \data_out[370] , \data_out[371] ,
    \data_out[372] , \data_out[373] , \data_out[374] , \data_out[375] ,
    \data_out[376] , \data_out[377] , \data_out[378] , \data_out[379] ,
    \data_out[380] , \data_out[381] , \data_out[382] , \data_out[383] ,
    \data_out[384] , \data_out[385] , \data_out[386] , \data_out[387] ,
    \data_out[388] , \data_out[389] , \data_out[390] , \data_out[391] ,
    \data_out[392] , \data_out[393] , \data_out[394] , \data_out[395] ,
    \data_out[396] , \data_out[397] , \data_out[398] , \data_out[399] ,
    \data_out[400] , \data_out[401] , \data_out[402] , \data_out[403] ,
    \data_out[404] , \data_out[405] , \data_out[406] , \data_out[407] ,
    \data_out[408] , \data_out[409] , \data_out[410] , \data_out[411] ,
    \data_out[412] , \data_out[413] , \data_out[414] , \data_out[415] ,
    \data_out[416] , \data_out[417] , \data_out[418] , \data_out[419] ,
    \data_out[420] , \data_out[421] , \data_out[422] , \data_out[423] ,
    \data_out[424] , \data_out[425] , \data_out[426] , \data_out[427] ,
    \data_out[428] , \data_out[429] , \data_out[430] , \data_out[431] ,
    \data_out[432] , \data_out[433] , \data_out[434] , \data_out[435] ,
    \data_out[436] , \data_out[437] , \data_out[438] , \data_out[439] ,
    \data_out[440] , \data_out[441] , \data_out[442] , \data_out[443] ,
    \data_out[444] , \data_out[445] , \data_out[446] , \data_out[447] ,
    \data_out[448] , \data_out[449] , \data_out[450] , \data_out[451] ,
    \data_out[452] , \data_out[453] , \data_out[454] , \data_out[455] ,
    \data_out[456] , \data_out[457] , \data_out[458] , \data_out[459] ,
    \data_out[460] , \data_out[461] , \data_out[462] , \data_out[463] ,
    \data_out[464] , \data_out[465] , \data_out[466] , \data_out[467] ,
    \data_out[468] , \data_out[469] , \data_out[470] , \data_out[471] ,
    \data_out[472] , \data_out[473] , \data_out[474] , \data_out[475] ,
    \data_out[476] , \data_out[477] , \data_out[478] , \data_out[479] ,
    \data_out[480] , \data_out[481] , \data_out[482] , \data_out[483] ,
    \data_out[484] , \data_out[485] , \data_out[486] , \data_out[487] ,
    \data_out[488] , \data_out[489] , \data_out[490] , \data_out[491] ,
    \data_out[492] , \data_out[493] , \data_out[494] , \data_out[495] ,
    \data_out[496] , \data_out[497] , \data_out[498] , \data_out[499] ,
    \data_out[500] , \data_out[501] , \data_out[502] , \data_out[503] ,
    \data_out[504] , \data_out[505] , \data_out[506] , \data_out[507] ,
    \data_out[508] , \data_out[509] , \data_out[510] , \data_out[511] ,
    cmd_ack, data_ack;
  reg \sd_controller|state[0] , \sd_controller|state[1] ,
    \sd_controller|state[2] , \sd_controller|state[3] ,
    \sd_controller|state[4] , \sd_controller|state[5] ,
    \sd_controller|cmd_reg[0] , \sd_controller|cmd_reg[1] ,
    \sd_controller|cmd_reg[2] , \sd_controller|cmd_reg[3] ,
    \sd_controller|cmd_reg[4] , \sd_controller|cmd_reg[5] ,
    \sd_controller|cmd_reg[6] , \sd_controller|cmd_reg[7] ,
    \sd_controller|cmd_ack_reg , \sd_controller|data_ack_reg ,
    \sd_controller|crc_in[0] , \sd_controller|crc_in[1] ,
    \sd_controller|crc_in[2] , \sd_controller|crc_in[3] ,
    \sd_controller|crc_in[4] , \sd_controller|crc_in[5] ,
    \sd_controller|crc_in[6] , \sd_controller|crc_in[7] ,
    \sd_controller|crc_data[0] , \sd_controller|crc_data[1] ,
    \sd_controller|crc_data[2] , \sd_controller|crc_data[3] ,
    \sd_controller|crc_data[4] , \sd_controller|crc_data[5] ,
    \sd_controller|crc_data[6] , \sd_controller|crc_data[7] ,
    \sd_controller|crc16(1)|crc_poly_reg[0] ,
    \sd_controller|crc16(1)|crc_poly_reg[1] ,
    \sd_controller|crc16(1)|crc_poly_reg[2] ,
    \sd_controller|crc16(1)|crc_poly_reg[3] ,
    \sd_controller|crc16(1)|crc_poly_reg[4] ,
    \sd_controller|crc16(1)|crc_poly_reg[5] ,
    \sd_controller|crc16(1)|crc_poly_reg[6] ,
    \sd_controller|crc16(1)|xor_out[0] ,
    \sd_controller|crc16(1)|xor_out[1] ,
    \sd_controller|crc16(1)|xor_out[2] ,
    \sd_controller|crc16(1)|xor_out[3] ,
    \sd_controller|crc16(1)|xor_out[4] ,
    \sd_controller|crc16(1)|xor_out[5] ,
    \sd_controller|crc16(1)|xor_out[6] ,
    \sd_controller|crc16(1)|xor_out[7] ,
    \sd_controller|crc16(1)|data_reg[7] ,
    \sd_controller|crc16(1)|crc_reg_shifted[0] ,
    \sd_controller|crc16(1)|crc_reg_shifted[1] ,
    \sd_controller|crc16(1)|crc_reg_shifted[2] ,
    \sd_controller|crc16(1)|crc_reg_shifted[3] ,
    \sd_controller|crc16(1)|crc_reg_shifted[4] ,
    \sd_controller|crc16(1)|crc_reg_shifted[5] ,
    \sd_controller|crc16(1)|crc_reg_shifted[6] ,
    \sd_controller|crc16(1)|crc_reg_shifted[7] ,
    \sd_controller|crc16(1)|crc_reg_shifted[8] ,
    \sd_controller|crc16(1)|crc_reg_shifted[9] ,
    \sd_controller|crc16(1)|crc_reg_shifted[10] ,
    \sd_controller|crc16(1)|crc_reg_shifted[11] ,
    \sd_controller|crc16(1)|crc_reg_shifted[12] ,
    \sd_controller|crc16(1)|crc_reg_shifted[13] ,
    \sd_controller|crc16(1)|crc_reg_shifted[14] ,
    \sd_controller|crc16(1)|crc_reg_shifted[15] ,
    \sd_controller|crc16(1)|xor_in , \sd_controller|crc16(1)|crc_reg[0] ,
    \sd_controller|crc16(1)|crc_reg[1] ,
    \sd_controller|crc16(1)|crc_reg[2] ,
    \sd_controller|crc16(1)|crc_reg[3] ,
    \sd_controller|crc16(1)|crc_reg[4] ,
    \sd_controller|crc16(1)|crc_reg[5] ,
    \sd_controller|crc16(1)|crc_reg[6] ,
    \sd_controller|crc16(1)|crc_reg[7] ;
  wire new_n1770, new_n1771, new_n1772, new_n1773, new_n1774, new_n1775,
    new_n1776, new_n1777, new_n1778, new_n1779, new_n1781, new_n1782,
    new_n1784, new_n1785, new_n1786, new_n1788, new_n1790, new_n1791,
    new_n1793, new_n1795, new_n1796, new_n1797, new_n1798, new_n1799,
    new_n1800, new_n1802, new_n1803, new_n1804, new_n1805, new_n1806,
    new_n1807, new_n1809, new_n1810, new_n1811, new_n1812, new_n1813,
    new_n1814, new_n1816, new_n1817, new_n1818, new_n1819, new_n1820,
    new_n1821, new_n1823, new_n1824, new_n1825, new_n1826, new_n1827,
    new_n1828, new_n1830, new_n1831, new_n1832, new_n1833, new_n1834,
    new_n1835, new_n1837, new_n1838, new_n1839, new_n1840, new_n1841,
    new_n1842, new_n1844, new_n1845, new_n1846, new_n1847, new_n1848,
    new_n1849, new_n1851, new_n1853, new_n1855, new_n1857, new_n1859,
    new_n1861, new_n1863, new_n1865, new_n1867, new_n1869, new_n1871,
    new_n1872, new_n1873, new_n1875, new_n1876, new_n1878, new_n1879,
    new_n1881, new_n1882, new_n1884, new_n1885, new_n1887, new_n1888,
    new_n1890, new_n1891, new_n1893, new_n1894, new_n1904, new_n1906,
    new_n1908, new_n1910, new_n1912, new_n1914, new_n1916, new_n1919,
    new_n1921, new_n1923, new_n1925, new_n1927, new_n1929, new_n1931,
    new_n1933, new_n1935, new_n1937, new_n1939, new_n1941, new_n1943,
    new_n1945, new_n1947, new_n1949, new_n1951, n2151, n2154, n2157, n2160,
    n2163, n2166, n2169, n2172, n2175, n2178, n2181, n2184, n2187, n2190,
    n2193, n2196, n2199, n2202, n2205, n2208, n2211, n2214, n2217, n2220,
    n2223, n2226, n2229, n2232, n2235, n2238, n2241, n2244, n5125, n5128,
    n5131, n5134, n5137, n5140, n5143, n5146, n5149, n5152, n5155, n5158,
    n5161, n5164, n5167, n5170, n5173, n5176, n5179, n5182, n5185, n5188,
    n5191, n5194, n5197, n5200, n5203, n5206, n5209, n5212, n5215, n5218,
    n5221, n5224, n5227, n5230, n5233, n5236, n5239, n5242, n5245;
  INVX1    g000(.A(rst), .Y(new_n1770));
  INVX1    g001(.A(\sd_controller|state[0] ), .Y(new_n1771));
  OR4X1    g002(.A(\cmd[7] ), .B(\cmd[6] ), .C(\cmd[5] ), .D(\cmd[4] ), .Y(new_n1772));
  OR4X1    g003(.A(\cmd[3] ), .B(\cmd[2] ), .C(\cmd[1] ), .D(\cmd[0] ), .Y(new_n1773));
  OR4X1    g004(.A(new_n1773), .B(new_n1772), .C(new_n1771), .D(rst), .Y(new_n1774));
  OR4X1    g005(.A(\sd_controller|crc16(1)|crc_reg[7] ), .B(\sd_controller|crc16(1)|crc_reg[6] ), .C(\sd_controller|crc16(1)|crc_reg[5] ), .D(\sd_controller|crc16(1)|crc_reg[4] ), .Y(new_n1775));
  OR4X1    g006(.A(\sd_controller|crc16(1)|crc_reg[3] ), .B(\sd_controller|crc16(1)|crc_reg[2] ), .C(\sd_controller|crc16(1)|crc_reg[1] ), .D(\sd_controller|crc16(1)|crc_reg[0] ), .Y(new_n1776));
  OR2X1    g007(.A(new_n1776), .B(new_n1775), .Y(new_n1777));
  NOR2X1   g008(.A(\sd_controller|state[5] ), .B(\sd_controller|state[4] ), .Y(new_n1778));
  OR4X1    g009(.A(new_n1778), .B(new_n1777), .C(mode), .D(rst), .Y(new_n1779));
  NAND3X1  g010(.A(new_n1779), .B(new_n1774), .C(new_n1770), .Y(n2151));
  INVX1    g011(.A(mode), .Y(new_n1781));
  INVX1    g012(.A(\sd_controller|state[5] ), .Y(new_n1782));
  NOR4X1   g013(.A(new_n1777), .B(new_n1782), .C(new_n1781), .D(rst), .Y(n2154));
  NOR4X1   g014(.A(\cmd[7] ), .B(\cmd[6] ), .C(\cmd[5] ), .D(\cmd[4] ), .Y(new_n1784));
  NOR4X1   g015(.A(\cmd[3] ), .B(\cmd[2] ), .C(\cmd[1] ), .D(\cmd[0] ), .Y(new_n1785));
  AND2X1   g016(.A(new_n1785), .B(new_n1784), .Y(new_n1786));
  NOR3X1   g017(.A(new_n1786), .B(new_n1771), .C(rst), .Y(n2157));
  INVX1    g018(.A(\sd_controller|state[4] ), .Y(new_n1788));
  NOR4X1   g019(.A(new_n1777), .B(new_n1788), .C(new_n1781), .D(rst), .Y(n2160));
  INVX1    g020(.A(\sd_controller|state[2] ), .Y(new_n1790));
  OAI21X1  g021(.A0(new_n1776), .A1(new_n1775), .B0(new_n1770), .Y(new_n1791));
  OAI22X1  g022(.A0(new_n1791), .A1(new_n1788), .B0(new_n1790), .B1(rst), .Y(n2163));
  NOR2X1   g023(.A(\sd_controller|state[3] ), .B(\sd_controller|state[1] ), .Y(new_n1793));
  OAI22X1  g024(.A0(new_n1793), .A1(rst), .B0(new_n1791), .B1(new_n1782), .Y(n2166));
  INVX1    g025(.A(\sd_controller|cmd_reg[0] ), .Y(new_n1795));
  OR2X1    g026(.A(new_n1795), .B(\sd_controller|state[0] ), .Y(new_n1796));
  NOR3X1   g027(.A(new_n1773), .B(new_n1772), .C(new_n1795), .Y(new_n1797));
  INVX1    g028(.A(\cmd[0] ), .Y(new_n1798));
  AOI21X1  g029(.A0(new_n1785), .A1(new_n1784), .B0(new_n1798), .Y(new_n1799));
  OAI21X1  g030(.A0(new_n1799), .A1(new_n1797), .B0(\sd_controller|state[0] ), .Y(new_n1800));
  AOI21X1  g031(.A0(new_n1800), .A1(new_n1796), .B0(rst), .Y(n2169));
  INVX1    g032(.A(\sd_controller|cmd_reg[1] ), .Y(new_n1802));
  OR2X1    g033(.A(new_n1802), .B(\sd_controller|state[0] ), .Y(new_n1803));
  NOR3X1   g034(.A(new_n1773), .B(new_n1772), .C(new_n1802), .Y(new_n1804));
  INVX1    g035(.A(\cmd[1] ), .Y(new_n1805));
  AOI21X1  g036(.A0(new_n1785), .A1(new_n1784), .B0(new_n1805), .Y(new_n1806));
  OAI21X1  g037(.A0(new_n1806), .A1(new_n1804), .B0(\sd_controller|state[0] ), .Y(new_n1807));
  AOI21X1  g038(.A0(new_n1807), .A1(new_n1803), .B0(rst), .Y(n2172));
  INVX1    g039(.A(\sd_controller|cmd_reg[2] ), .Y(new_n1809));
  OR2X1    g040(.A(new_n1809), .B(\sd_controller|state[0] ), .Y(new_n1810));
  NOR3X1   g041(.A(new_n1773), .B(new_n1772), .C(new_n1809), .Y(new_n1811));
  INVX1    g042(.A(\cmd[2] ), .Y(new_n1812));
  AOI21X1  g043(.A0(new_n1785), .A1(new_n1784), .B0(new_n1812), .Y(new_n1813));
  OAI21X1  g044(.A0(new_n1813), .A1(new_n1811), .B0(\sd_controller|state[0] ), .Y(new_n1814));
  AOI21X1  g045(.A0(new_n1814), .A1(new_n1810), .B0(rst), .Y(n2175));
  INVX1    g046(.A(\sd_controller|cmd_reg[3] ), .Y(new_n1816));
  OR2X1    g047(.A(new_n1816), .B(\sd_controller|state[0] ), .Y(new_n1817));
  NOR3X1   g048(.A(new_n1773), .B(new_n1772), .C(new_n1816), .Y(new_n1818));
  INVX1    g049(.A(\cmd[3] ), .Y(new_n1819));
  AOI21X1  g050(.A0(new_n1785), .A1(new_n1784), .B0(new_n1819), .Y(new_n1820));
  OAI21X1  g051(.A0(new_n1820), .A1(new_n1818), .B0(\sd_controller|state[0] ), .Y(new_n1821));
  AOI21X1  g052(.A0(new_n1821), .A1(new_n1817), .B0(rst), .Y(n2178));
  INVX1    g053(.A(\sd_controller|cmd_reg[4] ), .Y(new_n1823));
  OR2X1    g054(.A(new_n1823), .B(\sd_controller|state[0] ), .Y(new_n1824));
  NOR3X1   g055(.A(new_n1773), .B(new_n1772), .C(new_n1823), .Y(new_n1825));
  INVX1    g056(.A(\cmd[4] ), .Y(new_n1826));
  AOI21X1  g057(.A0(new_n1785), .A1(new_n1784), .B0(new_n1826), .Y(new_n1827));
  OAI21X1  g058(.A0(new_n1827), .A1(new_n1825), .B0(\sd_controller|state[0] ), .Y(new_n1828));
  AOI21X1  g059(.A0(new_n1828), .A1(new_n1824), .B0(rst), .Y(n2181));
  INVX1    g060(.A(\sd_controller|cmd_reg[5] ), .Y(new_n1830));
  OR2X1    g061(.A(new_n1830), .B(\sd_controller|state[0] ), .Y(new_n1831));
  NOR3X1   g062(.A(new_n1773), .B(new_n1772), .C(new_n1830), .Y(new_n1832));
  INVX1    g063(.A(\cmd[5] ), .Y(new_n1833));
  AOI21X1  g064(.A0(new_n1785), .A1(new_n1784), .B0(new_n1833), .Y(new_n1834));
  OAI21X1  g065(.A0(new_n1834), .A1(new_n1832), .B0(\sd_controller|state[0] ), .Y(new_n1835));
  AOI21X1  g066(.A0(new_n1835), .A1(new_n1831), .B0(rst), .Y(n2184));
  INVX1    g067(.A(\sd_controller|cmd_reg[6] ), .Y(new_n1837));
  OR2X1    g068(.A(new_n1837), .B(\sd_controller|state[0] ), .Y(new_n1838));
  NOR3X1   g069(.A(new_n1773), .B(new_n1772), .C(new_n1837), .Y(new_n1839));
  INVX1    g070(.A(\cmd[6] ), .Y(new_n1840));
  AOI21X1  g071(.A0(new_n1785), .A1(new_n1784), .B0(new_n1840), .Y(new_n1841));
  OAI21X1  g072(.A0(new_n1841), .A1(new_n1839), .B0(\sd_controller|state[0] ), .Y(new_n1842));
  AOI21X1  g073(.A0(new_n1842), .A1(new_n1838), .B0(rst), .Y(n2187));
  INVX1    g074(.A(\sd_controller|cmd_reg[7] ), .Y(new_n1844));
  OR2X1    g075(.A(new_n1844), .B(\sd_controller|state[0] ), .Y(new_n1845));
  NOR3X1   g076(.A(new_n1773), .B(new_n1772), .C(new_n1844), .Y(new_n1846));
  INVX1    g077(.A(\cmd[7] ), .Y(new_n1847));
  AOI21X1  g078(.A0(new_n1785), .A1(new_n1784), .B0(new_n1847), .Y(new_n1848));
  OAI21X1  g079(.A0(new_n1848), .A1(new_n1846), .B0(\sd_controller|state[0] ), .Y(new_n1849));
  AOI21X1  g080(.A0(new_n1849), .A1(new_n1845), .B0(rst), .Y(n2190));
  AOI21X1  g081(.A0(\sd_controller|cmd_ack_reg ), .A1(new_n1771), .B0(\sd_controller|state[2] ), .Y(new_n1851));
  NOR2X1   g082(.A(new_n1851), .B(rst), .Y(n2193));
  NOR3X1   g083(.A(\sd_controller|data_ack_reg ), .B(\sd_controller|state[3] ), .C(\sd_controller|state[1] ), .Y(new_n1853));
  NOR2X1   g084(.A(new_n1853), .B(rst), .Y(n2196));
  INVX1    g085(.A(\sd_controller|crc_in[0] ), .Y(new_n1855));
  AOI21X1  g086(.A0(\sd_controller|state[1] ), .A1(new_n1770), .B0(new_n1855), .Y(n2199));
  INVX1    g087(.A(\sd_controller|crc_in[1] ), .Y(new_n1857));
  AOI21X1  g088(.A0(\sd_controller|state[1] ), .A1(new_n1770), .B0(new_n1857), .Y(n2202));
  INVX1    g089(.A(\sd_controller|crc_in[2] ), .Y(new_n1859));
  AOI21X1  g090(.A0(\sd_controller|state[1] ), .A1(new_n1770), .B0(new_n1859), .Y(n2205));
  INVX1    g091(.A(\sd_controller|crc_in[3] ), .Y(new_n1861));
  AOI21X1  g092(.A0(\sd_controller|state[1] ), .A1(new_n1770), .B0(new_n1861), .Y(n2208));
  INVX1    g093(.A(\sd_controller|crc_in[4] ), .Y(new_n1863));
  AOI21X1  g094(.A0(\sd_controller|state[1] ), .A1(new_n1770), .B0(new_n1863), .Y(n2211));
  INVX1    g095(.A(\sd_controller|crc_in[5] ), .Y(new_n1865));
  AOI21X1  g096(.A0(\sd_controller|state[1] ), .A1(new_n1770), .B0(new_n1865), .Y(n2214));
  INVX1    g097(.A(\sd_controller|crc_in[6] ), .Y(new_n1867));
  AOI21X1  g098(.A0(\sd_controller|state[1] ), .A1(new_n1770), .B0(new_n1867), .Y(n2217));
  INVX1    g099(.A(\sd_controller|crc_in[7] ), .Y(new_n1869));
  AOI21X1  g100(.A0(\sd_controller|state[1] ), .A1(new_n1770), .B0(new_n1869), .Y(n2220));
  NOR2X1   g101(.A(\sd_controller|state[3] ), .B(\sd_controller|state[2] ), .Y(new_n1871));
  AND2X1   g102(.A(\sd_controller|cmd_reg[0] ), .B(\sd_controller|state[2] ), .Y(new_n1872));
  MX2X1    g103(.A(new_n1872), .B(\sd_controller|crc_data[0] ), .S0(new_n1871), .Y(new_n1873));
  MX2X1    g104(.A(new_n1873), .B(\sd_controller|crc_data[0] ), .S0(rst), .Y(n2223));
  AND2X1   g105(.A(\sd_controller|cmd_reg[1] ), .B(\sd_controller|state[2] ), .Y(new_n1875));
  MX2X1    g106(.A(new_n1875), .B(\sd_controller|crc_data[1] ), .S0(new_n1871), .Y(new_n1876));
  MX2X1    g107(.A(new_n1876), .B(\sd_controller|crc_data[1] ), .S0(rst), .Y(n2226));
  AND2X1   g108(.A(\sd_controller|cmd_reg[2] ), .B(\sd_controller|state[2] ), .Y(new_n1878));
  MX2X1    g109(.A(new_n1878), .B(\sd_controller|crc_data[2] ), .S0(new_n1871), .Y(new_n1879));
  MX2X1    g110(.A(new_n1879), .B(\sd_controller|crc_data[2] ), .S0(rst), .Y(n2229));
  AND2X1   g111(.A(\sd_controller|cmd_reg[3] ), .B(\sd_controller|state[2] ), .Y(new_n1881));
  MX2X1    g112(.A(new_n1881), .B(\sd_controller|crc_data[3] ), .S0(new_n1871), .Y(new_n1882));
  MX2X1    g113(.A(new_n1882), .B(\sd_controller|crc_data[3] ), .S0(rst), .Y(n2232));
  AND2X1   g114(.A(\sd_controller|cmd_reg[4] ), .B(\sd_controller|state[2] ), .Y(new_n1884));
  MX2X1    g115(.A(new_n1884), .B(\sd_controller|crc_data[4] ), .S0(new_n1871), .Y(new_n1885));
  MX2X1    g116(.A(new_n1885), .B(\sd_controller|crc_data[4] ), .S0(rst), .Y(n2235));
  AND2X1   g117(.A(\sd_controller|cmd_reg[5] ), .B(\sd_controller|state[2] ), .Y(new_n1887));
  MX2X1    g118(.A(new_n1887), .B(\sd_controller|crc_data[5] ), .S0(new_n1871), .Y(new_n1888));
  MX2X1    g119(.A(new_n1888), .B(\sd_controller|crc_data[5] ), .S0(rst), .Y(n2238));
  AND2X1   g120(.A(\sd_controller|cmd_reg[6] ), .B(\sd_controller|state[2] ), .Y(new_n1890));
  MX2X1    g121(.A(new_n1890), .B(\sd_controller|crc_data[6] ), .S0(new_n1871), .Y(new_n1891));
  MX2X1    g122(.A(new_n1891), .B(\sd_controller|crc_data[6] ), .S0(rst), .Y(n2241));
  AND2X1   g123(.A(\sd_controller|cmd_reg[7] ), .B(\sd_controller|state[2] ), .Y(new_n1893));
  MX2X1    g124(.A(new_n1893), .B(\sd_controller|crc_data[7] ), .S0(new_n1871), .Y(new_n1894));
  MX2X1    g125(.A(new_n1894), .B(\sd_controller|crc_data[7] ), .S0(rst), .Y(n2244));
  OR2X1    g126(.A(\sd_controller|crc16(1)|crc_poly_reg[0] ), .B(new_n1770), .Y(n5125));
  AND2X1   g127(.A(\sd_controller|crc16(1)|crc_poly_reg[1] ), .B(rst), .Y(n5128));
  AND2X1   g128(.A(\sd_controller|crc16(1)|crc_poly_reg[2] ), .B(rst), .Y(n5131));
  AND2X1   g129(.A(\sd_controller|crc16(1)|crc_poly_reg[3] ), .B(rst), .Y(n5134));
  AND2X1   g130(.A(\sd_controller|crc16(1)|crc_poly_reg[4] ), .B(rst), .Y(n5137));
  OR2X1    g131(.A(\sd_controller|crc16(1)|crc_poly_reg[5] ), .B(new_n1770), .Y(n5140));
  AND2X1   g132(.A(\sd_controller|crc16(1)|crc_poly_reg[6] ), .B(rst), .Y(n5143));
  MX2X1    g133(.A(\sd_controller|crc16(1)|crc_reg_shifted[8] ), .B(\sd_controller|crc16(1)|xor_out[0] ), .S0(rst), .Y(n5146));
  XOR2X1   g134(.A(\sd_controller|crc16(1)|crc_reg_shifted[9] ), .B(\sd_controller|crc16(1)|crc_poly_reg[0] ), .Y(new_n1904));
  MX2X1    g135(.A(new_n1904), .B(\sd_controller|crc16(1)|xor_out[1] ), .S0(rst), .Y(n5149));
  XOR2X1   g136(.A(\sd_controller|crc16(1)|crc_reg_shifted[10] ), .B(\sd_controller|crc16(1)|crc_poly_reg[1] ), .Y(new_n1906));
  MX2X1    g137(.A(new_n1906), .B(\sd_controller|crc16(1)|xor_out[2] ), .S0(rst), .Y(n5152));
  XOR2X1   g138(.A(\sd_controller|crc16(1)|crc_reg_shifted[11] ), .B(\sd_controller|crc16(1)|crc_poly_reg[2] ), .Y(new_n1908));
  MX2X1    g139(.A(new_n1908), .B(\sd_controller|crc16(1)|xor_out[3] ), .S0(rst), .Y(n5155));
  XOR2X1   g140(.A(\sd_controller|crc16(1)|crc_reg_shifted[12] ), .B(\sd_controller|crc16(1)|crc_poly_reg[3] ), .Y(new_n1910));
  MX2X1    g141(.A(new_n1910), .B(\sd_controller|crc16(1)|xor_out[4] ), .S0(rst), .Y(n5158));
  XOR2X1   g142(.A(\sd_controller|crc16(1)|crc_reg_shifted[13] ), .B(\sd_controller|crc16(1)|crc_poly_reg[4] ), .Y(new_n1912));
  MX2X1    g143(.A(new_n1912), .B(\sd_controller|crc16(1)|xor_out[5] ), .S0(rst), .Y(n5161));
  XOR2X1   g144(.A(\sd_controller|crc16(1)|crc_reg_shifted[14] ), .B(\sd_controller|crc16(1)|crc_poly_reg[5] ), .Y(new_n1914));
  MX2X1    g145(.A(new_n1914), .B(\sd_controller|crc16(1)|xor_out[6] ), .S0(rst), .Y(n5164));
  XOR2X1   g146(.A(\sd_controller|crc16(1)|crc_reg_shifted[15] ), .B(\sd_controller|crc16(1)|crc_poly_reg[6] ), .Y(new_n1916));
  MX2X1    g147(.A(new_n1916), .B(\sd_controller|crc16(1)|xor_out[7] ), .S0(rst), .Y(n5167));
  AND2X1   g148(.A(\sd_controller|crc_data[7] ), .B(new_n1770), .Y(n5170));
  MX2X1    g149(.A(\sd_controller|crc16(1)|crc_reg_shifted[0] ), .B(\sd_controller|crc16(1)|xor_out[0] ), .S0(\sd_controller|crc16(1)|xor_in ), .Y(new_n1919));
  MX2X1    g150(.A(new_n1919), .B(\sd_controller|crc16(1)|crc_reg_shifted[0] ), .S0(rst), .Y(n5173));
  MX2X1    g151(.A(\sd_controller|crc16(1)|crc_reg_shifted[1] ), .B(\sd_controller|crc16(1)|xor_out[1] ), .S0(\sd_controller|crc16(1)|xor_in ), .Y(new_n1921));
  MX2X1    g152(.A(new_n1921), .B(\sd_controller|crc16(1)|crc_reg_shifted[1] ), .S0(rst), .Y(n5176));
  MX2X1    g153(.A(\sd_controller|crc16(1)|crc_reg_shifted[2] ), .B(\sd_controller|crc16(1)|xor_out[2] ), .S0(\sd_controller|crc16(1)|xor_in ), .Y(new_n1923));
  MX2X1    g154(.A(new_n1923), .B(\sd_controller|crc16(1)|crc_reg_shifted[2] ), .S0(rst), .Y(n5179));
  MX2X1    g155(.A(\sd_controller|crc16(1)|crc_reg_shifted[3] ), .B(\sd_controller|crc16(1)|xor_out[3] ), .S0(\sd_controller|crc16(1)|xor_in ), .Y(new_n1925));
  MX2X1    g156(.A(new_n1925), .B(\sd_controller|crc16(1)|crc_reg_shifted[3] ), .S0(rst), .Y(n5182));
  MX2X1    g157(.A(\sd_controller|crc16(1)|crc_reg_shifted[4] ), .B(\sd_controller|crc16(1)|xor_out[4] ), .S0(\sd_controller|crc16(1)|xor_in ), .Y(new_n1927));
  MX2X1    g158(.A(new_n1927), .B(\sd_controller|crc16(1)|crc_reg_shifted[4] ), .S0(rst), .Y(n5185));
  MX2X1    g159(.A(\sd_controller|crc16(1)|crc_reg_shifted[5] ), .B(\sd_controller|crc16(1)|xor_out[5] ), .S0(\sd_controller|crc16(1)|xor_in ), .Y(new_n1929));
  MX2X1    g160(.A(new_n1929), .B(\sd_controller|crc16(1)|crc_reg_shifted[5] ), .S0(rst), .Y(n5188));
  MX2X1    g161(.A(\sd_controller|crc16(1)|crc_reg_shifted[6] ), .B(\sd_controller|crc16(1)|xor_out[6] ), .S0(\sd_controller|crc16(1)|xor_in ), .Y(new_n1931));
  MX2X1    g162(.A(new_n1931), .B(\sd_controller|crc16(1)|crc_reg_shifted[6] ), .S0(rst), .Y(n5191));
  MX2X1    g163(.A(\sd_controller|crc16(1)|crc_reg_shifted[7] ), .B(\sd_controller|crc16(1)|xor_out[7] ), .S0(\sd_controller|crc16(1)|xor_in ), .Y(new_n1933));
  MX2X1    g164(.A(new_n1933), .B(\sd_controller|crc16(1)|crc_reg_shifted[7] ), .S0(rst), .Y(n5194));
  INVX1    g165(.A(\sd_controller|crc16(1)|crc_reg_shifted[8] ), .Y(new_n1935));
  AOI21X1  g166(.A0(\sd_controller|crc16(1)|xor_in ), .A1(new_n1770), .B0(new_n1935), .Y(n5197));
  INVX1    g167(.A(\sd_controller|crc16(1)|crc_reg_shifted[9] ), .Y(new_n1937));
  AOI21X1  g168(.A0(\sd_controller|crc16(1)|xor_in ), .A1(new_n1770), .B0(new_n1937), .Y(n5200));
  INVX1    g169(.A(\sd_controller|crc16(1)|crc_reg_shifted[10] ), .Y(new_n1939));
  AOI21X1  g170(.A0(\sd_controller|crc16(1)|xor_in ), .A1(new_n1770), .B0(new_n1939), .Y(n5203));
  INVX1    g171(.A(\sd_controller|crc16(1)|crc_reg_shifted[11] ), .Y(new_n1941));
  AOI21X1  g172(.A0(\sd_controller|crc16(1)|xor_in ), .A1(new_n1770), .B0(new_n1941), .Y(n5206));
  INVX1    g173(.A(\sd_controller|crc16(1)|crc_reg_shifted[12] ), .Y(new_n1943));
  AOI21X1  g174(.A0(\sd_controller|crc16(1)|xor_in ), .A1(new_n1770), .B0(new_n1943), .Y(n5209));
  INVX1    g175(.A(\sd_controller|crc16(1)|crc_reg_shifted[13] ), .Y(new_n1945));
  AOI21X1  g176(.A0(\sd_controller|crc16(1)|xor_in ), .A1(new_n1770), .B0(new_n1945), .Y(n5212));
  INVX1    g177(.A(\sd_controller|crc16(1)|crc_reg_shifted[14] ), .Y(new_n1947));
  AOI21X1  g178(.A0(\sd_controller|crc16(1)|xor_in ), .A1(new_n1770), .B0(new_n1947), .Y(n5215));
  INVX1    g179(.A(\sd_controller|crc16(1)|crc_reg_shifted[15] ), .Y(new_n1949));
  AOI21X1  g180(.A0(\sd_controller|crc16(1)|xor_in ), .A1(new_n1770), .B0(new_n1949), .Y(n5218));
  XOR2X1   g181(.A(\sd_controller|crc16(1)|crc_reg_shifted[15] ), .B(\sd_controller|crc16(1)|data_reg[7] ), .Y(new_n1951));
  MX2X1    g182(.A(new_n1951), .B(\sd_controller|crc16(1)|xor_in ), .S0(rst), .Y(n5221));
  AND2X1   g183(.A(\sd_controller|crc16(1)|crc_reg_shifted[0] ), .B(new_n1770), .Y(n5224));
  AND2X1   g184(.A(\sd_controller|crc16(1)|crc_reg_shifted[1] ), .B(new_n1770), .Y(n5227));
  AND2X1   g185(.A(\sd_controller|crc16(1)|crc_reg_shifted[2] ), .B(new_n1770), .Y(n5230));
  AND2X1   g186(.A(\sd_controller|crc16(1)|crc_reg_shifted[3] ), .B(new_n1770), .Y(n5233));
  AND2X1   g187(.A(\sd_controller|crc16(1)|crc_reg_shifted[4] ), .B(new_n1770), .Y(n5236));
  AND2X1   g188(.A(\sd_controller|crc16(1)|crc_reg_shifted[5] ), .B(new_n1770), .Y(n5239));
  AND2X1   g189(.A(\sd_controller|crc16(1)|crc_reg_shifted[6] ), .B(new_n1770), .Y(n5242));
  AND2X1   g190(.A(\sd_controller|crc16(1)|crc_reg_shifted[7] ), .B(new_n1770), .Y(n5245));
  ZERO     g191(.Y(\data_out[0] ));
  ZERO     g192(.Y(\data_out[1] ));
  ZERO     g193(.Y(\data_out[2] ));
  ZERO     g194(.Y(\data_out[3] ));
  ZERO     g195(.Y(\data_out[4] ));
  ZERO     g196(.Y(\data_out[5] ));
  ZERO     g197(.Y(\data_out[6] ));
  ZERO     g198(.Y(\data_out[7] ));
  ZERO     g199(.Y(\data_out[8] ));
  ZERO     g200(.Y(\data_out[9] ));
  ZERO     g201(.Y(\data_out[10] ));
  ZERO     g202(.Y(\data_out[11] ));
  ZERO     g203(.Y(\data_out[12] ));
  ZERO     g204(.Y(\data_out[13] ));
  ZERO     g205(.Y(\data_out[14] ));
  ZERO     g206(.Y(\data_out[15] ));
  ZERO     g207(.Y(\data_out[16] ));
  ZERO     g208(.Y(\data_out[17] ));
  ZERO     g209(.Y(\data_out[18] ));
  ZERO     g210(.Y(\data_out[19] ));
  ZERO     g211(.Y(\data_out[20] ));
  ZERO     g212(.Y(\data_out[21] ));
  ZERO     g213(.Y(\data_out[22] ));
  ZERO     g214(.Y(\data_out[23] ));
  ZERO     g215(.Y(\data_out[24] ));
  ZERO     g216(.Y(\data_out[25] ));
  ZERO     g217(.Y(\data_out[26] ));
  ZERO     g218(.Y(\data_out[27] ));
  ZERO     g219(.Y(\data_out[28] ));
  ZERO     g220(.Y(\data_out[29] ));
  ZERO     g221(.Y(\data_out[30] ));
  ZERO     g222(.Y(\data_out[31] ));
  ZERO     g223(.Y(\data_out[32] ));
  ZERO     g224(.Y(\data_out[33] ));
  ZERO     g225(.Y(\data_out[34] ));
  ZERO     g226(.Y(\data_out[35] ));
  ZERO     g227(.Y(\data_out[36] ));
  ZERO     g228(.Y(\data_out[37] ));
  ZERO     g229(.Y(\data_out[38] ));
  ZERO     g230(.Y(\data_out[39] ));
  ZERO     g231(.Y(\data_out[40] ));
  ZERO     g232(.Y(\data_out[41] ));
  ZERO     g233(.Y(\data_out[42] ));
  ZERO     g234(.Y(\data_out[43] ));
  ZERO     g235(.Y(\data_out[44] ));
  ZERO     g236(.Y(\data_out[45] ));
  ZERO     g237(.Y(\data_out[46] ));
  ZERO     g238(.Y(\data_out[47] ));
  ZERO     g239(.Y(\data_out[48] ));
  ZERO     g240(.Y(\data_out[49] ));
  ZERO     g241(.Y(\data_out[50] ));
  ZERO     g242(.Y(\data_out[51] ));
  ZERO     g243(.Y(\data_out[52] ));
  ZERO     g244(.Y(\data_out[53] ));
  ZERO     g245(.Y(\data_out[54] ));
  ZERO     g246(.Y(\data_out[55] ));
  ZERO     g247(.Y(\data_out[56] ));
  ZERO     g248(.Y(\data_out[57] ));
  ZERO     g249(.Y(\data_out[58] ));
  ZERO     g250(.Y(\data_out[59] ));
  ZERO     g251(.Y(\data_out[60] ));
  ZERO     g252(.Y(\data_out[61] ));
  ZERO     g253(.Y(\data_out[62] ));
  ZERO     g254(.Y(\data_out[63] ));
  ZERO     g255(.Y(\data_out[64] ));
  ZERO     g256(.Y(\data_out[65] ));
  ZERO     g257(.Y(\data_out[66] ));
  ZERO     g258(.Y(\data_out[67] ));
  ZERO     g259(.Y(\data_out[68] ));
  ZERO     g260(.Y(\data_out[69] ));
  ZERO     g261(.Y(\data_out[70] ));
  ZERO     g262(.Y(\data_out[71] ));
  ZERO     g263(.Y(\data_out[72] ));
  ZERO     g264(.Y(\data_out[73] ));
  ZERO     g265(.Y(\data_out[74] ));
  ZERO     g266(.Y(\data_out[75] ));
  ZERO     g267(.Y(\data_out[76] ));
  ZERO     g268(.Y(\data_out[77] ));
  ZERO     g269(.Y(\data_out[78] ));
  ZERO     g270(.Y(\data_out[79] ));
  ZERO     g271(.Y(\data_out[80] ));
  ZERO     g272(.Y(\data_out[81] ));
  ZERO     g273(.Y(\data_out[82] ));
  ZERO     g274(.Y(\data_out[83] ));
  ZERO     g275(.Y(\data_out[84] ));
  ZERO     g276(.Y(\data_out[85] ));
  ZERO     g277(.Y(\data_out[86] ));
  ZERO     g278(.Y(\data_out[87] ));
  ZERO     g279(.Y(\data_out[88] ));
  ZERO     g280(.Y(\data_out[89] ));
  ZERO     g281(.Y(\data_out[90] ));
  ZERO     g282(.Y(\data_out[91] ));
  ZERO     g283(.Y(\data_out[92] ));
  ZERO     g284(.Y(\data_out[93] ));
  ZERO     g285(.Y(\data_out[94] ));
  ZERO     g286(.Y(\data_out[95] ));
  ZERO     g287(.Y(\data_out[96] ));
  ZERO     g288(.Y(\data_out[97] ));
  ZERO     g289(.Y(\data_out[98] ));
  ZERO     g290(.Y(\data_out[99] ));
  ZERO     g291(.Y(\data_out[100] ));
  ZERO     g292(.Y(\data_out[101] ));
  ZERO     g293(.Y(\data_out[102] ));
  ZERO     g294(.Y(\data_out[103] ));
  ZERO     g295(.Y(\data_out[104] ));
  ZERO     g296(.Y(\data_out[105] ));
  ZERO     g297(.Y(\data_out[106] ));
  ZERO     g298(.Y(\data_out[107] ));
  ZERO     g299(.Y(\data_out[108] ));
  ZERO     g300(.Y(\data_out[109] ));
  ZERO     g301(.Y(\data_out[110] ));
  ZERO     g302(.Y(\data_out[111] ));
  ZERO     g303(.Y(\data_out[112] ));
  ZERO     g304(.Y(\data_out[113] ));
  ZERO     g305(.Y(\data_out[114] ));
  ZERO     g306(.Y(\data_out[115] ));
  ZERO     g307(.Y(\data_out[116] ));
  ZERO     g308(.Y(\data_out[117] ));
  ZERO     g309(.Y(\data_out[118] ));
  ZERO     g310(.Y(\data_out[119] ));
  ZERO     g311(.Y(\data_out[120] ));
  ZERO     g312(.Y(\data_out[121] ));
  ZERO     g313(.Y(\data_out[122] ));
  ZERO     g314(.Y(\data_out[123] ));
  ZERO     g315(.Y(\data_out[124] ));
  ZERO     g316(.Y(\data_out[125] ));
  ZERO     g317(.Y(\data_out[126] ));
  ZERO     g318(.Y(\data_out[127] ));
  ZERO     g319(.Y(\data_out[128] ));
  ZERO     g320(.Y(\data_out[129] ));
  ZERO     g321(.Y(\data_out[130] ));
  ZERO     g322(.Y(\data_out[131] ));
  ZERO     g323(.Y(\data_out[132] ));
  ZERO     g324(.Y(\data_out[133] ));
  ZERO     g325(.Y(\data_out[134] ));
  ZERO     g326(.Y(\data_out[135] ));
  ZERO     g327(.Y(\data_out[136] ));
  ZERO     g328(.Y(\data_out[137] ));
  ZERO     g329(.Y(\data_out[138] ));
  ZERO     g330(.Y(\data_out[139] ));
  ZERO     g331(.Y(\data_out[140] ));
  ZERO     g332(.Y(\data_out[141] ));
  ZERO     g333(.Y(\data_out[142] ));
  ZERO     g334(.Y(\data_out[143] ));
  ZERO     g335(.Y(\data_out[144] ));
  ZERO     g336(.Y(\data_out[145] ));
  ZERO     g337(.Y(\data_out[146] ));
  ZERO     g338(.Y(\data_out[147] ));
  ZERO     g339(.Y(\data_out[148] ));
  ZERO     g340(.Y(\data_out[149] ));
  ZERO     g341(.Y(\data_out[150] ));
  ZERO     g342(.Y(\data_out[151] ));
  ZERO     g343(.Y(\data_out[152] ));
  ZERO     g344(.Y(\data_out[153] ));
  ZERO     g345(.Y(\data_out[154] ));
  ZERO     g346(.Y(\data_out[155] ));
  ZERO     g347(.Y(\data_out[156] ));
  ZERO     g348(.Y(\data_out[157] ));
  ZERO     g349(.Y(\data_out[158] ));
  ZERO     g350(.Y(\data_out[159] ));
  ZERO     g351(.Y(\data_out[160] ));
  ZERO     g352(.Y(\data_out[161] ));
  ZERO     g353(.Y(\data_out[162] ));
  ZERO     g354(.Y(\data_out[163] ));
  ZERO     g355(.Y(\data_out[164] ));
  ZERO     g356(.Y(\data_out[165] ));
  ZERO     g357(.Y(\data_out[166] ));
  ZERO     g358(.Y(\data_out[167] ));
  ZERO     g359(.Y(\data_out[168] ));
  ZERO     g360(.Y(\data_out[169] ));
  ZERO     g361(.Y(\data_out[170] ));
  ZERO     g362(.Y(\data_out[171] ));
  ZERO     g363(.Y(\data_out[172] ));
  ZERO     g364(.Y(\data_out[173] ));
  ZERO     g365(.Y(\data_out[174] ));
  ZERO     g366(.Y(\data_out[175] ));
  ZERO     g367(.Y(\data_out[176] ));
  ZERO     g368(.Y(\data_out[177] ));
  ZERO     g369(.Y(\data_out[178] ));
  ZERO     g370(.Y(\data_out[179] ));
  ZERO     g371(.Y(\data_out[180] ));
  ZERO     g372(.Y(\data_out[181] ));
  ZERO     g373(.Y(\data_out[182] ));
  ZERO     g374(.Y(\data_out[183] ));
  ZERO     g375(.Y(\data_out[184] ));
  ZERO     g376(.Y(\data_out[185] ));
  ZERO     g377(.Y(\data_out[186] ));
  ZERO     g378(.Y(\data_out[187] ));
  ZERO     g379(.Y(\data_out[188] ));
  ZERO     g380(.Y(\data_out[189] ));
  ZERO     g381(.Y(\data_out[190] ));
  ZERO     g382(.Y(\data_out[191] ));
  ZERO     g383(.Y(\data_out[192] ));
  ZERO     g384(.Y(\data_out[193] ));
  ZERO     g385(.Y(\data_out[194] ));
  ZERO     g386(.Y(\data_out[195] ));
  ZERO     g387(.Y(\data_out[196] ));
  ZERO     g388(.Y(\data_out[197] ));
  ZERO     g389(.Y(\data_out[198] ));
  ZERO     g390(.Y(\data_out[199] ));
  ZERO     g391(.Y(\data_out[200] ));
  ZERO     g392(.Y(\data_out[201] ));
  ZERO     g393(.Y(\data_out[202] ));
  ZERO     g394(.Y(\data_out[203] ));
  ZERO     g395(.Y(\data_out[204] ));
  ZERO     g396(.Y(\data_out[205] ));
  ZERO     g397(.Y(\data_out[206] ));
  ZERO     g398(.Y(\data_out[207] ));
  ZERO     g399(.Y(\data_out[208] ));
  ZERO     g400(.Y(\data_out[209] ));
  ZERO     g401(.Y(\data_out[210] ));
  ZERO     g402(.Y(\data_out[211] ));
  ZERO     g403(.Y(\data_out[212] ));
  ZERO     g404(.Y(\data_out[213] ));
  ZERO     g405(.Y(\data_out[214] ));
  ZERO     g406(.Y(\data_out[215] ));
  ZERO     g407(.Y(\data_out[216] ));
  ZERO     g408(.Y(\data_out[217] ));
  ZERO     g409(.Y(\data_out[218] ));
  ZERO     g410(.Y(\data_out[219] ));
  ZERO     g411(.Y(\data_out[220] ));
  ZERO     g412(.Y(\data_out[221] ));
  ZERO     g413(.Y(\data_out[222] ));
  ZERO     g414(.Y(\data_out[223] ));
  ZERO     g415(.Y(\data_out[224] ));
  ZERO     g416(.Y(\data_out[225] ));
  ZERO     g417(.Y(\data_out[226] ));
  ZERO     g418(.Y(\data_out[227] ));
  ZERO     g419(.Y(\data_out[228] ));
  ZERO     g420(.Y(\data_out[229] ));
  ZERO     g421(.Y(\data_out[230] ));
  ZERO     g422(.Y(\data_out[231] ));
  ZERO     g423(.Y(\data_out[232] ));
  ZERO     g424(.Y(\data_out[233] ));
  ZERO     g425(.Y(\data_out[234] ));
  ZERO     g426(.Y(\data_out[235] ));
  ZERO     g427(.Y(\data_out[236] ));
  ZERO     g428(.Y(\data_out[237] ));
  ZERO     g429(.Y(\data_out[238] ));
  ZERO     g430(.Y(\data_out[239] ));
  ZERO     g431(.Y(\data_out[240] ));
  ZERO     g432(.Y(\data_out[241] ));
  ZERO     g433(.Y(\data_out[242] ));
  ZERO     g434(.Y(\data_out[243] ));
  ZERO     g435(.Y(\data_out[244] ));
  ZERO     g436(.Y(\data_out[245] ));
  ZERO     g437(.Y(\data_out[246] ));
  ZERO     g438(.Y(\data_out[247] ));
  ZERO     g439(.Y(\data_out[248] ));
  ZERO     g440(.Y(\data_out[249] ));
  ZERO     g441(.Y(\data_out[250] ));
  ZERO     g442(.Y(\data_out[251] ));
  ZERO     g443(.Y(\data_out[252] ));
  ZERO     g444(.Y(\data_out[253] ));
  ZERO     g445(.Y(\data_out[254] ));
  ZERO     g446(.Y(\data_out[255] ));
  ZERO     g447(.Y(\data_out[256] ));
  ZERO     g448(.Y(\data_out[257] ));
  ZERO     g449(.Y(\data_out[258] ));
  ZERO     g450(.Y(\data_out[259] ));
  ZERO     g451(.Y(\data_out[260] ));
  ZERO     g452(.Y(\data_out[261] ));
  ZERO     g453(.Y(\data_out[262] ));
  ZERO     g454(.Y(\data_out[263] ));
  ZERO     g455(.Y(\data_out[264] ));
  ZERO     g456(.Y(\data_out[265] ));
  ZERO     g457(.Y(\data_out[266] ));
  ZERO     g458(.Y(\data_out[267] ));
  ZERO     g459(.Y(\data_out[268] ));
  ZERO     g460(.Y(\data_out[269] ));
  ZERO     g461(.Y(\data_out[270] ));
  ZERO     g462(.Y(\data_out[271] ));
  ZERO     g463(.Y(\data_out[272] ));
  ZERO     g464(.Y(\data_out[273] ));
  ZERO     g465(.Y(\data_out[274] ));
  ZERO     g466(.Y(\data_out[275] ));
  ZERO     g467(.Y(\data_out[276] ));
  ZERO     g468(.Y(\data_out[277] ));
  ZERO     g469(.Y(\data_out[278] ));
  ZERO     g470(.Y(\data_out[279] ));
  ZERO     g471(.Y(\data_out[280] ));
  ZERO     g472(.Y(\data_out[281] ));
  ZERO     g473(.Y(\data_out[282] ));
  ZERO     g474(.Y(\data_out[283] ));
  ZERO     g475(.Y(\data_out[284] ));
  ZERO     g476(.Y(\data_out[285] ));
  ZERO     g477(.Y(\data_out[286] ));
  ZERO     g478(.Y(\data_out[287] ));
  ZERO     g479(.Y(\data_out[288] ));
  ZERO     g480(.Y(\data_out[289] ));
  ZERO     g481(.Y(\data_out[290] ));
  ZERO     g482(.Y(\data_out[291] ));
  ZERO     g483(.Y(\data_out[292] ));
  ZERO     g484(.Y(\data_out[293] ));
  ZERO     g485(.Y(\data_out[294] ));
  ZERO     g486(.Y(\data_out[295] ));
  ZERO     g487(.Y(\data_out[296] ));
  ZERO     g488(.Y(\data_out[297] ));
  ZERO     g489(.Y(\data_out[298] ));
  ZERO     g490(.Y(\data_out[299] ));
  ZERO     g491(.Y(\data_out[300] ));
  ZERO     g492(.Y(\data_out[301] ));
  ZERO     g493(.Y(\data_out[302] ));
  ZERO     g494(.Y(\data_out[303] ));
  ZERO     g495(.Y(\data_out[304] ));
  ZERO     g496(.Y(\data_out[305] ));
  ZERO     g497(.Y(\data_out[306] ));
  ZERO     g498(.Y(\data_out[307] ));
  ZERO     g499(.Y(\data_out[308] ));
  ZERO     g500(.Y(\data_out[309] ));
  ZERO     g501(.Y(\data_out[310] ));
  ZERO     g502(.Y(\data_out[311] ));
  ZERO     g503(.Y(\data_out[312] ));
  ZERO     g504(.Y(\data_out[313] ));
  ZERO     g505(.Y(\data_out[314] ));
  ZERO     g506(.Y(\data_out[315] ));
  ZERO     g507(.Y(\data_out[316] ));
  ZERO     g508(.Y(\data_out[317] ));
  ZERO     g509(.Y(\data_out[318] ));
  ZERO     g510(.Y(\data_out[319] ));
  ZERO     g511(.Y(\data_out[320] ));
  ZERO     g512(.Y(\data_out[321] ));
  ZERO     g513(.Y(\data_out[322] ));
  ZERO     g514(.Y(\data_out[323] ));
  ZERO     g515(.Y(\data_out[324] ));
  ZERO     g516(.Y(\data_out[325] ));
  ZERO     g517(.Y(\data_out[326] ));
  ZERO     g518(.Y(\data_out[327] ));
  ZERO     g519(.Y(\data_out[328] ));
  ZERO     g520(.Y(\data_out[329] ));
  ZERO     g521(.Y(\data_out[330] ));
  ZERO     g522(.Y(\data_out[331] ));
  ZERO     g523(.Y(\data_out[332] ));
  ZERO     g524(.Y(\data_out[333] ));
  ZERO     g525(.Y(\data_out[334] ));
  ZERO     g526(.Y(\data_out[335] ));
  ZERO     g527(.Y(\data_out[336] ));
  ZERO     g528(.Y(\data_out[337] ));
  ZERO     g529(.Y(\data_out[338] ));
  ZERO     g530(.Y(\data_out[339] ));
  ZERO     g531(.Y(\data_out[340] ));
  ZERO     g532(.Y(\data_out[341] ));
  ZERO     g533(.Y(\data_out[342] ));
  ZERO     g534(.Y(\data_out[343] ));
  ZERO     g535(.Y(\data_out[344] ));
  ZERO     g536(.Y(\data_out[345] ));
  ZERO     g537(.Y(\data_out[346] ));
  ZERO     g538(.Y(\data_out[347] ));
  ZERO     g539(.Y(\data_out[348] ));
  ZERO     g540(.Y(\data_out[349] ));
  ZERO     g541(.Y(\data_out[350] ));
  ZERO     g542(.Y(\data_out[351] ));
  ZERO     g543(.Y(\data_out[352] ));
  ZERO     g544(.Y(\data_out[353] ));
  ZERO     g545(.Y(\data_out[354] ));
  ZERO     g546(.Y(\data_out[355] ));
  ZERO     g547(.Y(\data_out[356] ));
  ZERO     g548(.Y(\data_out[357] ));
  ZERO     g549(.Y(\data_out[358] ));
  ZERO     g550(.Y(\data_out[359] ));
  ZERO     g551(.Y(\data_out[360] ));
  ZERO     g552(.Y(\data_out[361] ));
  ZERO     g553(.Y(\data_out[362] ));
  ZERO     g554(.Y(\data_out[363] ));
  ZERO     g555(.Y(\data_out[364] ));
  ZERO     g556(.Y(\data_out[365] ));
  ZERO     g557(.Y(\data_out[366] ));
  ZERO     g558(.Y(\data_out[367] ));
  ZERO     g559(.Y(\data_out[368] ));
  ZERO     g560(.Y(\data_out[369] ));
  ZERO     g561(.Y(\data_out[370] ));
  ZERO     g562(.Y(\data_out[371] ));
  ZERO     g563(.Y(\data_out[372] ));
  ZERO     g564(.Y(\data_out[373] ));
  ZERO     g565(.Y(\data_out[374] ));
  ZERO     g566(.Y(\data_out[375] ));
  ZERO     g567(.Y(\data_out[376] ));
  ZERO     g568(.Y(\data_out[377] ));
  ZERO     g569(.Y(\data_out[378] ));
  ZERO     g570(.Y(\data_out[379] ));
  ZERO     g571(.Y(\data_out[380] ));
  ZERO     g572(.Y(\data_out[381] ));
  ZERO     g573(.Y(\data_out[382] ));
  ZERO     g574(.Y(\data_out[383] ));
  ZERO     g575(.Y(\data_out[384] ));
  ZERO     g576(.Y(\data_out[385] ));
  ZERO     g577(.Y(\data_out[386] ));
  ZERO     g578(.Y(\data_out[387] ));
  ZERO     g579(.Y(\data_out[388] ));
  ZERO     g580(.Y(\data_out[389] ));
  ZERO     g581(.Y(\data_out[390] ));
  ZERO     g582(.Y(\data_out[391] ));
  ZERO     g583(.Y(\data_out[392] ));
  ZERO     g584(.Y(\data_out[393] ));
  ZERO     g585(.Y(\data_out[394] ));
  ZERO     g586(.Y(\data_out[395] ));
  ZERO     g587(.Y(\data_out[396] ));
  ZERO     g588(.Y(\data_out[397] ));
  ZERO     g589(.Y(\data_out[398] ));
  ZERO     g590(.Y(\data_out[399] ));
  ZERO     g591(.Y(\data_out[400] ));
  ZERO     g592(.Y(\data_out[401] ));
  ZERO     g593(.Y(\data_out[402] ));
  ZERO     g594(.Y(\data_out[403] ));
  ZERO     g595(.Y(\data_out[404] ));
  ZERO     g596(.Y(\data_out[405] ));
  ZERO     g597(.Y(\data_out[406] ));
  ZERO     g598(.Y(\data_out[407] ));
  ZERO     g599(.Y(\data_out[408] ));
  ZERO     g600(.Y(\data_out[409] ));
  ZERO     g601(.Y(\data_out[410] ));
  ZERO     g602(.Y(\data_out[411] ));
  ZERO     g603(.Y(\data_out[412] ));
  ZERO     g604(.Y(\data_out[413] ));
  ZERO     g605(.Y(\data_out[414] ));
  ZERO     g606(.Y(\data_out[415] ));
  ZERO     g607(.Y(\data_out[416] ));
  ZERO     g608(.Y(\data_out[417] ));
  ZERO     g609(.Y(\data_out[418] ));
  ZERO     g610(.Y(\data_out[419] ));
  ZERO     g611(.Y(\data_out[420] ));
  ZERO     g612(.Y(\data_out[421] ));
  ZERO     g613(.Y(\data_out[422] ));
  ZERO     g614(.Y(\data_out[423] ));
  ZERO     g615(.Y(\data_out[424] ));
  ZERO     g616(.Y(\data_out[425] ));
  ZERO     g617(.Y(\data_out[426] ));
  ZERO     g618(.Y(\data_out[427] ));
  ZERO     g619(.Y(\data_out[428] ));
  ZERO     g620(.Y(\data_out[429] ));
  ZERO     g621(.Y(\data_out[430] ));
  ZERO     g622(.Y(\data_out[431] ));
  ZERO     g623(.Y(\data_out[432] ));
  ZERO     g624(.Y(\data_out[433] ));
  ZERO     g625(.Y(\data_out[434] ));
  ZERO     g626(.Y(\data_out[435] ));
  ZERO     g627(.Y(\data_out[436] ));
  ZERO     g628(.Y(\data_out[437] ));
  ZERO     g629(.Y(\data_out[438] ));
  ZERO     g630(.Y(\data_out[439] ));
  ZERO     g631(.Y(\data_out[440] ));
  ZERO     g632(.Y(\data_out[441] ));
  ZERO     g633(.Y(\data_out[442] ));
  ZERO     g634(.Y(\data_out[443] ));
  ZERO     g635(.Y(\data_out[444] ));
  ZERO     g636(.Y(\data_out[445] ));
  ZERO     g637(.Y(\data_out[446] ));
  ZERO     g638(.Y(\data_out[447] ));
  ZERO     g639(.Y(\data_out[448] ));
  ZERO     g640(.Y(\data_out[449] ));
  ZERO     g641(.Y(\data_out[450] ));
  ZERO     g642(.Y(\data_out[451] ));
  ZERO     g643(.Y(\data_out[452] ));
  ZERO     g644(.Y(\data_out[453] ));
  ZERO     g645(.Y(\data_out[454] ));
  ZERO     g646(.Y(\data_out[455] ));
  ZERO     g647(.Y(\data_out[456] ));
  ZERO     g648(.Y(\data_out[457] ));
  ZERO     g649(.Y(\data_out[458] ));
  ZERO     g650(.Y(\data_out[459] ));
  ZERO     g651(.Y(\data_out[460] ));
  ZERO     g652(.Y(\data_out[461] ));
  ZERO     g653(.Y(\data_out[462] ));
  ZERO     g654(.Y(\data_out[463] ));
  ZERO     g655(.Y(\data_out[464] ));
  ZERO     g656(.Y(\data_out[465] ));
  ZERO     g657(.Y(\data_out[466] ));
  ZERO     g658(.Y(\data_out[467] ));
  ZERO     g659(.Y(\data_out[468] ));
  ZERO     g660(.Y(\data_out[469] ));
  ZERO     g661(.Y(\data_out[470] ));
  ZERO     g662(.Y(\data_out[471] ));
  ZERO     g663(.Y(\data_out[472] ));
  ZERO     g664(.Y(\data_out[473] ));
  ZERO     g665(.Y(\data_out[474] ));
  ZERO     g666(.Y(\data_out[475] ));
  ZERO     g667(.Y(\data_out[476] ));
  ZERO     g668(.Y(\data_out[477] ));
  ZERO     g669(.Y(\data_out[478] ));
  ZERO     g670(.Y(\data_out[479] ));
  ZERO     g671(.Y(\data_out[480] ));
  ZERO     g672(.Y(\data_out[481] ));
  ZERO     g673(.Y(\data_out[482] ));
  ZERO     g674(.Y(\data_out[483] ));
  ZERO     g675(.Y(\data_out[484] ));
  ZERO     g676(.Y(\data_out[485] ));
  ZERO     g677(.Y(\data_out[486] ));
  ZERO     g678(.Y(\data_out[487] ));
  ZERO     g679(.Y(\data_out[488] ));
  ZERO     g680(.Y(\data_out[489] ));
  ZERO     g681(.Y(\data_out[490] ));
  ZERO     g682(.Y(\data_out[491] ));
  ZERO     g683(.Y(\data_out[492] ));
  ZERO     g684(.Y(\data_out[493] ));
  ZERO     g685(.Y(\data_out[494] ));
  ZERO     g686(.Y(\data_out[495] ));
  ZERO     g687(.Y(\data_out[496] ));
  ZERO     g688(.Y(\data_out[497] ));
  ZERO     g689(.Y(\data_out[498] ));
  ZERO     g690(.Y(\data_out[499] ));
  ZERO     g691(.Y(\data_out[500] ));
  ZERO     g692(.Y(\data_out[501] ));
  ZERO     g693(.Y(\data_out[502] ));
  ZERO     g694(.Y(\data_out[503] ));
  ZERO     g695(.Y(\data_out[504] ));
  ZERO     g696(.Y(\data_out[505] ));
  ZERO     g697(.Y(\data_out[506] ));
  ZERO     g698(.Y(\data_out[507] ));
  ZERO     g699(.Y(\data_out[508] ));
  ZERO     g700(.Y(\data_out[509] ));
  ZERO     g701(.Y(\data_out[510] ));
  ZERO     g702(.Y(\data_out[511] ));
  BUFX1    g703(.A(\sd_controller|cmd_ack_reg ), .Y(cmd_ack));
  BUFX1    g704(.A(\sd_controller|data_ack_reg ), .Y(data_ack));
  always @ (posedge clock) begin
    \sd_controller|state[0]  <= n2151;
    \sd_controller|state[1]  <= n2154;
    \sd_controller|state[2]  <= n2157;
    \sd_controller|state[3]  <= n2160;
    \sd_controller|state[4]  <= n2163;
    \sd_controller|state[5]  <= n2166;
    \sd_controller|cmd_reg[0]  <= n2169;
    \sd_controller|cmd_reg[1]  <= n2172;
    \sd_controller|cmd_reg[2]  <= n2175;
    \sd_controller|cmd_reg[3]  <= n2178;
    \sd_controller|cmd_reg[4]  <= n2181;
    \sd_controller|cmd_reg[5]  <= n2184;
    \sd_controller|cmd_reg[6]  <= n2187;
    \sd_controller|cmd_reg[7]  <= n2190;
    \sd_controller|cmd_ack_reg  <= n2193;
    \sd_controller|data_ack_reg  <= n2196;
    \sd_controller|crc_in[0]  <= n2199;
    \sd_controller|crc_in[1]  <= n2202;
    \sd_controller|crc_in[2]  <= n2205;
    \sd_controller|crc_in[3]  <= n2208;
    \sd_controller|crc_in[4]  <= n2211;
    \sd_controller|crc_in[5]  <= n2214;
    \sd_controller|crc_in[6]  <= n2217;
    \sd_controller|crc_in[7]  <= n2220;
    \sd_controller|crc_data[0]  <= n2223;
    \sd_controller|crc_data[1]  <= n2226;
    \sd_controller|crc_data[2]  <= n2229;
    \sd_controller|crc_data[3]  <= n2232;
    \sd_controller|crc_data[4]  <= n2235;
    \sd_controller|crc_data[5]  <= n2238;
    \sd_controller|crc_data[6]  <= n2241;
    \sd_controller|crc_data[7]  <= n2244;
    \sd_controller|crc16(1)|crc_poly_reg[0]  <= n5125;
    \sd_controller|crc16(1)|crc_poly_reg[1]  <= n5128;
    \sd_controller|crc16(1)|crc_poly_reg[2]  <= n5131;
    \sd_controller|crc16(1)|crc_poly_reg[3]  <= n5134;
    \sd_controller|crc16(1)|crc_poly_reg[4]  <= n5137;
    \sd_controller|crc16(1)|crc_poly_reg[5]  <= n5140;
    \sd_controller|crc16(1)|crc_poly_reg[6]  <= n5143;
    \sd_controller|crc16(1)|xor_out[0]  <= n5146;
    \sd_controller|crc16(1)|xor_out[1]  <= n5149;
    \sd_controller|crc16(1)|xor_out[2]  <= n5152;
    \sd_controller|crc16(1)|xor_out[3]  <= n5155;
    \sd_controller|crc16(1)|xor_out[4]  <= n5158;
    \sd_controller|crc16(1)|xor_out[5]  <= n5161;
    \sd_controller|crc16(1)|xor_out[6]  <= n5164;
    \sd_controller|crc16(1)|xor_out[7]  <= n5167;
    \sd_controller|crc16(1)|data_reg[7]  <= n5170;
    \sd_controller|crc16(1)|crc_reg_shifted[0]  <= n5173;
    \sd_controller|crc16(1)|crc_reg_shifted[1]  <= n5176;
    \sd_controller|crc16(1)|crc_reg_shifted[2]  <= n5179;
    \sd_controller|crc16(1)|crc_reg_shifted[3]  <= n5182;
    \sd_controller|crc16(1)|crc_reg_shifted[4]  <= n5185;
    \sd_controller|crc16(1)|crc_reg_shifted[5]  <= n5188;
    \sd_controller|crc16(1)|crc_reg_shifted[6]  <= n5191;
    \sd_controller|crc16(1)|crc_reg_shifted[7]  <= n5194;
    \sd_controller|crc16(1)|crc_reg_shifted[8]  <= n5197;
    \sd_controller|crc16(1)|crc_reg_shifted[9]  <= n5200;
    \sd_controller|crc16(1)|crc_reg_shifted[10]  <= n5203;
    \sd_controller|crc16(1)|crc_reg_shifted[11]  <= n5206;
    \sd_controller|crc16(1)|crc_reg_shifted[12]  <= n5209;
    \sd_controller|crc16(1)|crc_reg_shifted[13]  <= n5212;
    \sd_controller|crc16(1)|crc_reg_shifted[14]  <= n5215;
    \sd_controller|crc16(1)|crc_reg_shifted[15]  <= n5218;
    \sd_controller|crc16(1)|xor_in  <= n5221;
    \sd_controller|crc16(1)|crc_reg[0]  <= n5224;
    \sd_controller|crc16(1)|crc_reg[1]  <= n5227;
    \sd_controller|crc16(1)|crc_reg[2]  <= n5230;
    \sd_controller|crc16(1)|crc_reg[3]  <= n5233;
    \sd_controller|crc16(1)|crc_reg[4]  <= n5236;
    \sd_controller|crc16(1)|crc_reg[5]  <= n5239;
    \sd_controller|crc16(1)|crc_reg[6]  <= n5242;
    \sd_controller|crc16(1)|crc_reg[7]  <= n5245;
  end
endmodule


