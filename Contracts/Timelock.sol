contract CFKTimelock {
    
    CFK public immutable _cfkToken;
    
    mapping (uint256 => bool) public _monthVested;
    mapping (uint256 => uint256) public _monthVestingTime;
    
    constructor (address cfkTokenAddress) public {
        _cfkToken = CFK(cfkTokenAddress);
        
        uint256 releaseOffsetMonth = 5;
        uint256 releaseTime = 0;
        for(uint256 i = 1; i <= 20; i++){
            releaseOffsetMonth +=1;
            releaseTime = now + releaseOffsetMonth * 4 weeks;
            
            _monthVested[i] = false;
            _monthVestingTime[i] = releaseTime;
        }
    }
    
    function vestTokens(uint256 month) public  {
        require(month >= 1, "Month must >= 1");
        require(month <= 20, "Month must be <= 20");
        require(_monthVested[month] == false, "Tokens for month already vested!");
        require(_monthVestingTime[month] < now, "Too early to vest tokens!"); 
        
        _monthVested[month] = true;
        _cfkToken.disableFees();
        
        //CEO
        _cfkToken.transfer(0x6000DA08E82Ed2159B2250135e607689ba685f5C, 2500000000000000);
        
        //CFK
        _cfkToken.transfer(0x956e3FE099a129B0691b075116f488Dc2AF1174D, 2500000000000000);

        //TEAM
        _cfkToken.transfer(0xd93A7666ade405aDdEFB6716CF77b6fA150aEEe5, 150000000000000);
        _cfkToken.transfer(0xE83c6bb9119D27a16c833f6FdE0826b6043eecf5, 150000000000000);
        _cfkToken.transfer(0x2742e6D37b23Eb3f5FAbFe8451F7E3b73F198630, 150000000000000);
        _cfkToken.transfer(0xcBE71785AFBf9c2b08186b486dDD7385EBc4f475, 150000000000000);
        _cfkToken.transfer(0x3493983208991863eC1447EaE002BdBB0256F30c, 150000000000000);
        _cfkToken.transfer(0x164076ba1f3f03D2545f0197906D93A752af08FF, 150000000000000);
        _cfkToken.transfer(0x9d699a6209aB103592dA8F7D24152D57E0EB089A, 150000000000000);
        _cfkToken.transfer(0x3abCeD16972b9CC78AEe7fe09ae4Ef373F71f2c3, 150000000000000);
        _cfkToken.transfer(0x9654F612a016574478e18fB79F7dbc589c0437fc, 150000000000000);
        _cfkToken.transfer(0xA7c5D1b17072D554f6bD01cb8428d29930C00cca, 150000000000000);
        _cfkToken.transfer(0xF8e094566789b33f09815aa760f5e8896782907B, 150000000000000);
        _cfkToken.transfer(0xA3a0B9c718dB7ce10BD5ec00E3E6403dA66Be764, 150000000000000);
        _cfkToken.transfer(0x12B16D39c855f605A6e9cf0a6a5370aACDA61b16, 150000000000000);
        _cfkToken.transfer(0x27DEb4575363A91c50cebdeEAaD83C31ec4d72Ff, 150000000000000);
        _cfkToken.transfer(0xfB3AE0d1Ab510af16CaD474b0918fB75a2a00eeD, 150000000000000);
        _cfkToken.transfer(0x47dDB8f9D921913cc574EbB05A53514684cC13DC, 150000000000000);
        _cfkToken.transfer(0x950C4a69ba108538369BCe00Ad08b2B88b5147D4, 150000000000000);
        _cfkToken.transfer(0xddCbf79d050C26CCaea5226D598f6B6D9A23f33D, 150000000000000);
        _cfkToken.transfer(0x158072c6cc7D4CDf80f58850Dae6Fd263CDB2173, 150000000000000);
        _cfkToken.transfer(0x56DeC515276671bc31EECAdC3A16F15cFc67206F, 150000000000000);
        _cfkToken.transfer(0xf82aD4f9b19784803ff52a2506F6734F723d7F4d, 150000000000000);
        _cfkToken.transfer(0x540D4870bD72E404E79Dd2cdC9F9d3796BBf10Bd, 150000000000000);
        _cfkToken.transfer(0x40CD6D1210264B82925d239e85aD39B47d720724, 150000000000000);
        _cfkToken.transfer(0xa66AAD78bCdE9D2c39533ed9659350b311569657, 150000000000000);
        _cfkToken.transfer(0x8D3308F847E3354F9b1C9C135FF283B1cee3E94A, 150000000000000);
        _cfkToken.transfer(0x4A21e7e400F14a41471aF182717515c956613125, 150000000000000);
        _cfkToken.transfer(0x56b69CFdEf9e440a6a76EC819DEd9e326fF5F8DA, 150000000000000);
        _cfkToken.transfer(0x071cFD43AA26FA5314BE04A9247047c028aC4185, 150000000000000);
        _cfkToken.transfer(0x97fdb42B53c4A67EcAA6D53FF0684a9B54961399, 150000000000000);
        _cfkToken.transfer(0x555488d27eb294269a3067d1c188c8f643d6f646, 150000000000000);
        _cfkToken.transfer(0xe7b467BE414073c8391AEa643209dEea470d4B2F, 150000000000000);
        _cfkToken.transfer(0x8779f9E829189c8478d67778d26Fc251aD0cf8Db, 150000000000000);
        _cfkToken.transfer(0xb15ad9Fc5F1b811369BC40Ea7c567F90224af130, 150000000000000);
        _cfkToken.transfer(0x6A1F6E19D1D7e8007eDfF2B267E8dc37A80eece1, 150000000000000);
        _cfkToken.transfer(0x414bCC5a4F690e444846ecd21cC8a21cC324c712, 150000000000000);
        _cfkToken.transfer(0x79Bc6005C44720f03Aaaf32DD9295a65c65FE59e, 150000000000000);
        _cfkToken.transfer(0x637fAA8d2667aa8B1Ba58176cc5f9C2e763935A7, 150000000000000);
        _cfkToken.transfer(0x3E923EF827Ce391CF1607f68E786Cac49a7eA5Ef, 150000000000000);
        _cfkToken.transfer(0x3Bab348a6332E8D8a6c86BB7509b6485f925d280, 150000000000000);
        _cfkToken.transfer(0x3607a1886cC79dB60BbB1Af4A927ba1349352000, 150000000000000);
        _cfkToken.transfer(0xCCbe89cb106D51868B2079Ee3b9f1E7983b90E79, 150000000000000);
        _cfkToken.transfer(0x49Fae2f93d59687B42B45edfaA92402FC8De9c72, 150000000000000);
        _cfkToken.transfer(0xfdC7cc87d2C564CA5Ec31c5387D6Ea2E766Fb29c, 150000000000000);
        _cfkToken.transfer(0xc59A7DeDab340Fbe86E871eb1aF1F5B0DD9591cB, 150000000000000);
        _cfkToken.transfer(0x95eDdFFd5Fb4dCB997BC13d7792366F6f64B67AB, 150000000000000);
        _cfkToken.transfer(0x53C4cD27aa44e8Efa4e9f909f5b6e281527C405e, 150000000000000);
        _cfkToken.transfer(0x9e91BD8A64Cff85a4aEf9496E2056ddE69c24F28, 150000000000000);
        _cfkToken.transfer(0x5Cd774529F0C91f2dda92D3B9c6d728C4645fd31, 150000000000000);
        _cfkToken.transfer(0xa3E27FB91a7088C12fd40d1b7B025307a25e4Bb6, 150000000000000);
        _cfkToken.transfer(0x111B8185a69d34E5a0bfB553Ad436C7aB31AAf8e, 150000000000000);
        _cfkToken.transfer(0x45A641A055eaC89760B1Ef141101577Dec6E1f63, 150000000000000);
        _cfkToken.transfer(0x904F5e5Ea803bfe37872B79e77B8b5e58b9B9C9D, 150000000000000);
        _cfkToken.transfer(0xD796764C9952142707da007ED8E78993fA6E9cf4, 150000000000000);
        _cfkToken.transfer(0x9aBbd56EC5b17d85FceB022bfAF048A312705C42, 150000000000000);
        _cfkToken.transfer(0x13e418857F6DDA4f2157FE645A997Ac6C4f3267A, 150000000000000);
        _cfkToken.transfer(0xeB5c81B2fc91F92c81B4c1cc0F8f2364ED08097d, 150000000000000);
        _cfkToken.transfer(0x0a087362a29fadE08a89726Ae490be4A9b046785, 150000000000000);
        _cfkToken.transfer(0x46f5c6E9ffb9eC0CA27AEB9B13DC1d7acae38Cd9, 150000000000000);

            
        _cfkToken.enableFees();                                                           
    }
}