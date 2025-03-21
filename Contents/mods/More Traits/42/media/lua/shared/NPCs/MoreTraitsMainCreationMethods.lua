require('NPCs/MainCreationMethods');

local function initToadTraits()
    local sleepOK = (isClient() or isServer()) and getServerOptions():getBoolean("SleepAllowed") and getServerOptions():getBoolean("SleepNeeded")
    local gunspecialist = TraitFactory.addTrait("gunspecialist", getText("UI_trait_gunspecialist"), 8, getText("UI_trait_gunspecialistdesc"), false, false);
    gunspecialist:addXPBoost(Perks.Aiming, 2);
    gunspecialist:addXPBoost(Perks.Reloading, 2);
    if getActivatedMods():contains("\\1299328280/ToadTraitsDisablePrepared") == false then
        local preparedfood = TraitFactory.addTrait("preparedfood", getText("UI_trait_preparedfood"), 1, getText("UI_trait_preparedfooddesc"), false, false);
        local preparedammo = TraitFactory.addTrait("preparedammo", getText("UI_trait_preparedammo"), 1, getText("UI_trait_preparedammodesc"), false, false);
        local preparedmedical = TraitFactory.addTrait("preparedmedical", getText("UI_trait_preparedmedical"), 1, getText("UI_trait_preparedmedicaldesc"), false, false);
        local preparedrepair = TraitFactory.addTrait("preparedrepair", getText("UI_trait_preparedrepair"), 1, getText("UI_trait_preparedrepairdesc"), false, false);
        local preparedcamp = TraitFactory.addTrait("preparedcamp", getText("UI_trait_preparedcamp"), 1, getText("UI_trait_preparedcampdesc"), false, false);
        local preparedweapon = TraitFactory.addTrait("preparedweapon", getText("UI_trait_preparedweapon"), 1, getText("UI_trait_preparedweapondesc"), false, false);
        local preparedpack = TraitFactory.addTrait("preparedpack", getText("UI_trait_preparedpack"), 1, getText("UI_trait_preparedpackdesc"), false, false);
        local preparedcar = TraitFactory.addTrait("preparedcar", getText("UI_trait_preparedcar"), 1, getText("UI_trait_preparedcardesc"), false, false);
        local preparedcoordination = TraitFactory.addTrait("preparedcoordination", getText("UI_trait_preparedcoordination"), 1, getText("UI_trait_preparedcoordinationdesc"), false, false);
    end
    local swift = TraitFactory.addTrait("swift", getText("UI_trait_swift"), 2, getText("UI_trait_swiftdesc"), false, false);
    swift:addXPBoost(Perks.Lightfoot, 1);
    local ingenuitive = TraitFactory.addTrait("ingenuitive", getText("UI_trait_ingenuitive"), 9, getText("UI_trait_ingenuitivedesc"), false, false);
    ingenuitive:getFreeRecipes():add("Generator");
    ingenuitive:getFreeRecipes():add("Make Mildew Cure");
    ingenuitive:getFreeRecipes():add("Make Flies Cure");
    ingenuitive:getFreeRecipes():add("Make Cake Batter");
    ingenuitive:getFreeRecipes():add("Make Pie Dough");
    ingenuitive:getFreeRecipes():add("Make Bread Dough");
    ingenuitive:getFreeRecipes():add("Herbalist");
    ingenuitive:getFreeRecipes():add("Make Stick Trap");
    ingenuitive:getFreeRecipes():add("Make Snare Trap");
    ingenuitive:getFreeRecipes():add("Make Wooden Cage Trap");
    ingenuitive:getFreeRecipes():add("Make Trap Box");
    ingenuitive:getFreeRecipes():add("Make Cage Trap");
    ingenuitive:getFreeRecipes():add("Basic Mechanics");
    ingenuitive:getFreeRecipes():add("Intermediate Mechanics");
    ingenuitive:getFreeRecipes():add("Advanced Mechanics")
    ingenuitive:getFreeRecipes():add("Make Fishing Rod");
    ingenuitive:getFreeRecipes():add("Fix Fishing Rod");
    ingenuitive:getFreeRecipes():add("Get Wire Back");
    ingenuitive:getFreeRecipes():add("Make Fishing Net");
    ingenuitive:getFreeRecipes():add("Make Remote Controller V1");
    ingenuitive:getFreeRecipes():add("Make Remote Controller V2");
    ingenuitive:getFreeRecipes():add("Make Remote Controller V3");
    ingenuitive:getFreeRecipes():add("Make Remote Trigger");
    ingenuitive:getFreeRecipes():add("Make Timer");
    ingenuitive:getFreeRecipes():add("Craft Makeshift Radio");
    ingenuitive:getFreeRecipes():add("Craft Makeshift HAM Radio");
    ingenuitive:getFreeRecipes():add("Craft Makeshift Walkie Talkie");
    ingenuitive:getFreeRecipes():add("Make Aerosol bomb");
    ingenuitive:getFreeRecipes():add("Make Flame bomb");
    ingenuitive:getFreeRecipes():add("Make Pipe bomb");
    ingenuitive:getFreeRecipes():add("Make Noise generator");
    ingenuitive:getFreeRecipes():add("Make Smoke Bomb");
    ingenuitive:getFreeRecipes():add("Make Metal Walls");
    ingenuitive:getFreeRecipes():add("Make Metal Fences");
    ingenuitive:getFreeRecipes():add("Make Metal Containers");
    ingenuitive:getFreeRecipes():add("Make Metal Sheet");
    ingenuitive:getFreeRecipes():add("Make Small Metal Sheet");
    ingenuitive:getFreeRecipes():add("Make Metal Roof");
    if getActivatedMods():contains("DynamicTraits") == false then
        --Use DynamicTraits' Generator trait if it exists.
        local generator = TraitFactory.addTrait("generator", getText("UI_trait_generator"), 2, getText("UI_trait_generatordesc"), false, false);
        generator:getFreeRecipes():add("Generator");
    end
    local olympian = TraitFactory.addTrait("olympian", getText("UI_trait_olympian"), 5, getText("UI_trait_olympiandesc"), false, false);
    olympian:addXPBoost(Perks.Sprinting, 1);
    olympian:addXPBoost(Perks.Fitness, 1);
    local bouncer = TraitFactory.addTrait("bouncer", getText("UI_trait_bouncer"), 5, getText("UI_trait_bouncerdesc"), false, false);
    bouncer:addXPBoost(Perks.Strength, 1);
    bouncer:addXPBoost(Perks.SmallBlunt, 1);
    local martial = TraitFactory.addTrait("martial", getText("UI_trait_martial"), 5, getText("UI_trait_martialdesc"), false, false);
    martial:addXPBoost(Perks.Fitness, 1);
    martial:addXPBoost(Perks.SmallBlunt, 1);
    local flexible = TraitFactory.addTrait("flexible", getText("UI_trait_flexible"), 3, getText("UI_trait_flexibledesc"), false, false);
    flexible:addXPBoost(Perks.Nimble, 1);
    local grunt = TraitFactory.addTrait("grunt", getText("UI_trait_grunt"), 4, getText("UI_trait_gruntdesc"), false, false);
    grunt:addXPBoost(Perks.Woodwork, 1);
    grunt:addXPBoost(Perks.SmallBlunt, 1);
    grunt:addXPBoost(Perks.Masonry, 1);
    grunt:addXPBoost(Perks.Blacksmith, 1);
    local quiet = TraitFactory.addTrait("quiet", getText("UI_trait_quiet"), 2, getText("UI_trait_quietdesc"), false, false);
    quiet:addXPBoost(Perks.Sneak, 1);
    quiet:addXPBoost(Perks.Lightfoot, 1);
    local tinkerer = TraitFactory.addTrait("tinkerer", getText("UI_trait_tinkerer"), 5, getText("UI_trait_tinkererdesc"), false, false);
    tinkerer:addXPBoost(Perks.Electricity, 1);
    tinkerer:addXPBoost(Perks.Mechanics, 1);
    tinkerer:addXPBoost(Perks.Tailoring, 1);
    tinkerer:addXPBoost(Perks.FlintKnapping, 1);
    tinkerer:addXPBoost(Perks.Carving, 1);
    local scrapper = TraitFactory.addTrait("scrapper", getText("UI_trait_scrapper"), 3, getText("UI_trait_scrapperdesc"), false, false);
    scrapper:addXPBoost(Perks.MetalWelding, 1);
    scrapper:addXPBoost(Perks.Maintenance, 1);
    scrapper:addXPBoost(Perks.Blacksmith, 1);
    scrapper:getFreeRecipes():add("Make Metal Pipe");
    scrapper:getFreeRecipes():add("Make Metal Sheet");
    local wildsman = TraitFactory.addTrait("wildsman", getText("UI_trait_wildsman"), 8, getText("UI_trait_wildsmandesc"), false, false);
    wildsman:addXPBoost(Perks.Fishing, 1);
    wildsman:addXPBoost(Perks.Trapping, 1);
    wildsman:addXPBoost(Perks.PlantScavenging, 1);
    wildsman:addXPBoost(Perks.Spear, 1);
    wildsman:addXPBoost(Perks.Tracking, 1);
    wildsman:addXPBoost(Perks.Carving, 1);
    wildsman:addXPBoost(Perks.FlintKnapping, 1);
    wildsman:getFreeRecipes():add("Make Stick Trap");
    wildsman:getFreeRecipes():add("Make Snare Trap");
    wildsman:getFreeRecipes():add("Make Fishing Rod");
    wildsman:getFreeRecipes():add("Fix Fishing Rod");
    local natural = TraitFactory.addTrait("natural", getText("UI_trait_natural"), 4, getText("UI_trait_naturaldesc"), false, false);
    natural:addXPBoost(Perks.Cooking, 1);
    natural:addXPBoost(Perks.PlantScavenging, 1);
    local bladetwirl = TraitFactory.addTrait("bladetwirl", getText("UI_trait_bladetwirl"), 5, getText("UI_trait_bladetwirldesc"), false, false);
    bladetwirl:addXPBoost(Perks.LongBlade, 1);
    bladetwirl:addXPBoost(Perks.SmallBlade, 1);
    local blunttwirl = TraitFactory.addTrait("blunttwirl", getText("UI_trait_blunttwirl"), 5, getText("UI_trait_blunttwirldesc"), false, false);
    blunttwirl:addXPBoost(Perks.SmallBlunt, 1);
    blunttwirl:addXPBoost(Perks.Blunt, 1);
    if getActivatedMods():contains("ScavengingSkill") == false and getActivatedMods():contains("ScavengingSkillFixed") == false then
        local scrounger = TraitFactory.addTrait("scrounger", getText("UI_trait_scrounger"), 5, getText("UI_trait_scroungerdesc"), false, false);
    end
    local antique = TraitFactory.addTrait("antique", getText("UI_trait_antique"), 6, getText("UI_trait_antiquedesc"), false, false);
    if getActivatedMods():contains("ScavengingSkill") or getActivatedMods():contains("ScavengingSkillFixed") then
        antique:addXPBoost(Perks.Scavenging, 1);
    end
    local evasive = TraitFactory.addTrait("evasive", getText("UI_trait_evasive"), 8, getText("UI_trait_evasivedesc"), false, false);
    evasive:addXPBoost(Perks.Nimble, 1);
    local blissful = TraitFactory.addTrait("blissful", getText("UI_trait_blissful"), 3, getText("UI_trait_blissfuldesc"), false, false);
    if getActivatedMods():contains("\\1299328280/ToadTraitsDisableSpec") == false then
        local specweapons = TraitFactory.addTrait("specweapons", getText("UI_trait_specweapons"), 12, getText("UI_trait_specweaponsdesc"), false, false);
        specweapons:addXPBoost(Perks.Axe, 2);
        specweapons:addXPBoost(Perks.Spear, 2);
        specweapons:addXPBoost(Perks.SmallBlunt, 2);
        specweapons:addXPBoost(Perks.Blunt, 2);
        specweapons:addXPBoost(Perks.LongBlade, 2);
        specweapons:addXPBoost(Perks.SmallBlade, 2);
        specweapons:addXPBoost(Perks.Maintenance, 2);
        local speccrafting = TraitFactory.addTrait("speccrafting", getText("UI_trait_speccrafting"), 12, getText("UI_trait_speccraftingdesc"), false, false);
        speccrafting:addXPBoost(Perks.Woodwork, 2);
        speccrafting:addXPBoost(Perks.Electricity, 2);
        speccrafting:addXPBoost(Perks.MetalWelding, 2);
        speccrafting:addXPBoost(Perks.Mechanics, 2);
        speccrafting:addXPBoost(Perks.Tailoring, 2);
        speccrafting:addXPBoost(Perks.Carving, 2);
        speccrafting:addXPBoost(Perks.FlintKnapping, 2);
        speccrafting:addXPBoost(Perks.Blacksmith, 2);
        speccrafting:addXPBoost(Perks.Masonry, 2);
        speccrafting:addXPBoost(Perks.Pottery, 2);
        speccrafting:addXPBoost(Perks.Glassmaking, 2);
        local specfood = TraitFactory.addTrait("specfood", getText("UI_trait_specfood"), 12, getText("UI_trait_specfooddesc"), false, false);
        specfood:addXPBoost(Perks.Cooking, 2);
        specfood:addXPBoost(Perks.Trapping, 2);
        specfood:addXPBoost(Perks.PlantScavenging, 2);
        specfood:addXPBoost(Perks.Farming, 2);
        specfood:addXPBoost(Perks.Fishing, 2);
        specfood:addXPBoost(Perks.Butchering, 2);
        specfood:addXPBoost(Perks.Tracking, 2);
        specfood:addXPBoost(Perks.Husbandry, 2);
        local specguns = TraitFactory.addTrait("specguns", getText("UI_trait_specguns"), 12, getText("UI_trait_specgunsdesc"), false, false);
        specguns:addXPBoost(Perks.Aiming, 4);
        specguns:addXPBoost(Perks.Reloading, 4);
        specguns:addXPBoost(Perks.Tracking, 4);
        local specmove = TraitFactory.addTrait("specmove", getText("UI_trait_specmove"), 12, getText("UI_trait_specmovedesc"), false, false);
        specmove:addXPBoost(Perks.Lightfoot, 4);
        specmove:addXPBoost(Perks.Sprinting, 4);
        specmove:addXPBoost(Perks.Sneak, 4);
        specmove:addXPBoost(Perks.Nimble, 4);
        local specaid = TraitFactory.addTrait("specaid", getText("UI_trait_specaid"), 12, getText("UI_trait_specaiddesc"), false, false);
        specaid:addXPBoost(Perks.Doctor, 8);
        specaid:getFreeRecipes():add("Improvise Bandage");
        specaid:getFreeRecipes():add("Improvise Suture");
        specaid:getFreeRecipes():add("Improvise Splint");
        specaid:getFreeRecipes():add("Improvise Suture Holder");
        specaid:getFreeRecipes():add("Improvise Disinfectant");
        specaid:getFreeRecipes():add("Improvise Painkillers");
        specaid:getFreeRecipes():add("Improvise Antibiotics");
        specaid:getFreeRecipes():add("Improvise Antidepressants");
        specaid:getFreeRecipes():add("Improvise Betablockers");
        specaid:getFreeRecipes():add("Improvise Sleeping Pills");
    end
    local gordanite = TraitFactory.addTrait("gordanite", getText("UI_trait_gordanite"), 6, getText("UI_trait_gordanitedesc"), false, false);
    gordanite:addXPBoost(Perks.Blunt, 1);
    local indefatigable = TraitFactory.addTrait("indefatigable", getText("UI_trait_indefatigable"), 10, getText("UI_trait_indefatigabledesc"), false, false);
    local hardy = TraitFactory.addTrait("hardy", getText("UI_trait_hardy"), 6, getText("UI_trait_hardydesc"), false, false);
    local bluntperk = TraitFactory.addTrait("problunt", getText("UI_trait_problunt"), 7, getText("UI_trait_probluntdesc"), false, false);
    bluntperk:addXPBoost(Perks.SmallBlunt, 1);
    bluntperk:addXPBoost(Perks.Blunt, 1);
    local bladeperk = TraitFactory.addTrait("problade", getText("UI_trait_problade"), 7, getText("UI_trait_probladedesc"), false, false);
    bladeperk:addXPBoost(Perks.SmallBlade, 1);
    bladeperk:addXPBoost(Perks.LongBlade, 1);
    bladeperk:addXPBoost(Perks.Axe, 1);
    local gunperk = TraitFactory.addTrait("progun", getText("UI_trait_progun"), 7, getText("UI_trait_progundesc"), false, false);
    gunperk:addXPBoost(Perks.Aiming, 1);
    gunperk:addXPBoost(Perks.Reloading, 1);
    local actionhero = TraitFactory.addTrait("actionhero", getText("UI_trait_actionhero"), 8, getText("UI_trait_actionherodesc"), false, false);
    -- local fast = TraitFactory.addTrait("fast", getText("UI_trait_fast"), 6, getText("UI_trait_fastdesc"), false, false);
    local spearperk = TraitFactory.addTrait("prospear", getText("UI_trait_prospear"), 7, getText("UI_trait_prospeardesc"), false, false);
    spearperk:addXPBoost(Perks.Spear, 2);
    local thickblood = TraitFactory.addTrait("thickblood", getText("UI_trait_thickblood"), 4, getText("UI_trait_thickblooddesc"), false, false);
    if getActivatedMods():contains("DrivingSkill") == false then
        local expertdriver = TraitFactory.addTrait("expertdriver", getText("UI_trait_expertdriver"), 5, getText("UI_trait_expertdriverdesc"), false, false);
    end
    local superimmune = TraitFactory.addTrait("superimmune", getText("UI_trait_superimmune"), 10, getText("UI_trait_superimmunedesc"), false, false);
    local packmule = TraitFactory.addTrait("packmule", getText("UI_trait_packmule"), 7, getText("UI_trait_packmuledesc"), false, false);
    local graverobber = TraitFactory.addTrait("graverobber", getText("UI_trait_graverobber"), 7, getText("UI_trait_graverobberdesc"), false, false);
    if getActivatedMods():contains("ScavengingSkill") == true or getActivatedMods():contains("ScavengingSkillFixed") == true then
        graverobber:addXPBoost(Perks.Scavenging, 1);
    end
    local gourmand = TraitFactory.addTrait("gourmand", getText("UI_trait_gourmand"), 4, getText("UI_trait_gourmanddesc"), false, false);
    gourmand:addXPBoost(Perks.Cooking, 1);
    local gymgoer = TraitFactory.addTrait("gymgoer", getText("UI_trait_gymgoer"), 5, getText("UI_trait_gymgoerdesc"), false, false);
    gymgoer:addXPBoost(Perks.Strength, 1);
    gymgoer:addXPBoost(Perks.Fitness, 1);
    local leadfoot = TraitFactory.addTrait("leadfoot", getText("UI_trait_leadfoot"), 2, getText("UI_trait_leadfootdesc"), false, false);
    local vagabond = TraitFactory.addTrait("vagabond", getText("UI_trait_vagabond"), 3, getText("UI_trait_vagabonddesc"), false, false);
    if getActivatedMods():contains("ScavengingSkill") or getActivatedMods():contains("ScavengingSkillFixed") then
        vagabond:addXPBoost(Perks.Scavenging, 1);
    end
    local quickworker = TraitFactory.addTrait("quickworker", getText("UI_trait_quickworker"), 9, getText("UI_trait_quickworkerdesc"), false, false);
    local batteringram = TraitFactory.addTrait("batteringram", getText("UI_trait_batteringram"), 7, getText("UI_trait_batteringramdesc"), false, false);
    local fitted = TraitFactory.addTrait("fitted", getText("UI_trait_fitted"), 4, getText("UI_trait_fitteddesc"), false, false);
    local tavernbrawler = TraitFactory.addTrait("tavernbrawler", getText("UI_trait_tavernbrawler"), 3, getText("UI_trait_tavernbrawlerdesc"), false, false);
    local secondwind = TraitFactory.addTrait("secondwind", getText("UI_trait_secondwind"), 10, getText("UI_trait_secondwinddesc"), false, false);
    secondwind:addXPBoost(Perks.Fitness, 1);
    local restfulsleeper = TraitFactory.addTrait("restfulsleeper", getText("UI_trait_restfulsleeper"), 6, getText("UI_trait_restfulsleeperdesc"), false, false);
    local noxpshooter = TraitFactory.addTrait("noxpshooter", getText("UI_trait_noxpshooter"), 3, getText("UI_trait_noxpshooterdesc"), false, false);
    local noxptechnician = TraitFactory.addTrait("noxptechnician", getText("UI_trait_noxptechnician"), 3, getText("UI_trait_noxptechniciandesc"), false, false);
    local noxpaxe = TraitFactory.addTrait("noxpaxe", getText("UI_trait_noxpaxe"), 3, getText("UI_trait_noxpaxedesc"), false, false);
    local noxpfirstaid = TraitFactory.addTrait("noxpfirstaid", getText("UI_trait_noxpfirstaid"), 3, getText("UI_trait_noxpfirstaiddesc"), false, false);
    local noxpmaintenance = TraitFactory.addTrait("noxpmaintenance", getText("UI_trait_noxpmaintenance"), 3, getText("UI_trait_noxpmaintenancedesc"), false, false);
    local noxpsneaky = TraitFactory.addTrait("noxpsneaky", getText("UI_trait_noxpsneaky"), 3, getText("UI_trait_noxpsneakydesc"), false, false);
    local terminator = TraitFactory.addTrait("terminator", getText("UI_trait_terminator"), 14, getText("UI_trait_terminatordesc"), false, false);
    local unwavering = TraitFactory.addTrait("unwavering", getText("UI_trait_unwavering"), 6, getText("UI_trait_unwaveringdesc"), false, false);
    local idealweight = TraitFactory.addTrait("idealweight", getText("UI_trait_idealweight"), 4, getText("UI_trait_idealweightdesc"), false, false);
    local quickrest = TraitFactory.addTrait("quickrest", getText("UI_trait_quickrest"), 3, getText("UI_trait_quickrestdesc"), false, false);
    --===========--
    --Bad Traits--
    --===========--
    local antigun = TraitFactory.addTrait("antigun", getText("UI_trait_antigun"), -6, getText("UI_trait_antigundesc"), false, false);
    local noodlelegs = TraitFactory.addTrait("noodlelegs", getText("UI_trait_noodlelegs"), -6, getText("UI_trait_noodlelegsdesc"), false, false);
    local motionsickness = TraitFactory.addTrait("motionsickness", getText("UI_trait_motionsickness"), -6, getText("UI_trait_motionsicknessdesc"), false, false);
    local paranoia = TraitFactory.addTrait("paranoia", getText("UI_trait_paranoia"), -4, getText("UI_trait_paranoiadesc"), false, false);
    local packmouse = TraitFactory.addTrait("packmouse", getText("UI_trait_packmouse"), -7, getText("UI_trait_packmousedesc"), false, false);
    local injured = TraitFactory.addTrait("injured", getText("UI_trait_injured"), -4, getText("UI_trait_injureddesc"), false, false);
    if getActivatedMods():contains("DynamicTraits") == false and getActivatedMods():contains("MoreSimpleTraits") == false then
        --Use DynamicTraits' or MoreSimpleTraits' Alcoholic trait if it exists.
        if getActivatedMods():contains("MoreSimpleTraitsVanilla") == false then
            local drinker = TraitFactory.addTrait("drinker", getText("UI_trait_drinker"), -14, getText("UI_trait_drinkerdesc"), false, false);
        end
    end
    local broke = TraitFactory.addTrait("broke", getText("UI_trait_broke"), -8, getText("UI_trait_brokedesc"), false, false);
    local butterfingers = TraitFactory.addTrait("butterfingers", getText("UI_trait_butterfingers"), -12, getText("UI_trait_butterfingersdesc"), false, false);
    local incomprehensive = TraitFactory.addTrait("incomprehensive", getText("UI_trait_incomprehensive"), -10, getText("UI_trait_incomprehensivedesc"), false, false);
    local depressive = TraitFactory.addTrait("depressive", getText("UI_trait_depressive"), -4, getText("UI_trait_depressivedesc"), false, false);
    local selfdestructive = TraitFactory.addTrait("selfdestructive", getText("UI_trait_selfdestructive"), -4, getText("UI_trait_selfdestructivedesc"), false, false);
    local badteeth = TraitFactory.addTrait("badteeth", getText("UI_trait_badteeth"), -3, getText("UI_trait_badteethdesc"), false, false);
    local albino = TraitFactory.addTrait("albino", getText("UI_trait_albino"), -5, getText("UI_trait_albinodesc"), false, false);
    if getActivatedMods():contains("Amputation") == false and getActivatedMods():contains("TheOnlyCure") == false then
        --Don't enable Amputee trait if the Amputation mod is installed.
        local amputee = TraitFactory.addTrait("amputee", getText("UI_trait_amputee"), -16, getText("UI_trait_amputeedesc"), false, false);
    end
    if getActivatedMods():contains("DrivingSkill") == false then
        local poordriver = TraitFactory.addTrait("poordriver", getText("UI_trait_poordriver"), -5, getText("UI_trait_poordriverdesc"), false, false);
    end
    --  local gimp = TraitFactory.addTrait("gimp", getText("UI_trait_gimp"), -8, getText("UI_trait_gimpdesc"), false, false);
    local anemic = TraitFactory.addTrait("anemic", getText("UI_trait_anemic"), -4, getText("UI_trait_anemicdesc"), false, false);
    local immunocompromised = TraitFactory.addTrait("immunocompromised", getText("UI_trait_immunocompromised"), -10, getText("UI_trait_immunocompromiseddesc"), false, false);
    local ascetic = TraitFactory.addTrait("ascetic", getText("UI_trait_ascetic"), -4, getText("UI_trait_asceticdesc"), false, false);
    local fearful = TraitFactory.addTrait("fearful", getText("UI_trait_fearful"), -7, getText("UI_trait_fearfuldesc"), false, false);
    local glassbody = TraitFactory.addTrait("glassbody", getText("UI_trait_glassbody"), -10, getText("UI_trait_glassbodydesc"), false, false);
    local slowworker = TraitFactory.addTrait("slowworker", getText("UI_trait_slowworker"), -9, getText("UI_trait_slowworkerdesc"), false, false);
    local mundane = TraitFactory.addTrait("mundane", getText("UI_trait_mundane"), -9, getText("UI_trait_mundanedesc"), false, false);
    local burned = TraitFactory.addTrait("burned", getText("UI_trait_burned"), -20, getText("UI_trait_burneddesc"), false, false);
    local deprived = TraitFactory.addTrait("deprived", getText("UI_trait_deprived"), -6, getText("UI_trait_depriveddesc"), false, false);
    --Exclusives
    if getActivatedMods():contains("\\1299328280/ToadTraitsDisablePrepared") == false then
        TraitFactory.setMutualExclusive("preparedfood", "preparedammo");
        TraitFactory.setMutualExclusive("preparedfood", "preparedrepair");
        TraitFactory.setMutualExclusive("preparedfood", "preparedmedical");
        TraitFactory.setMutualExclusive("preparedfood", "preparedcamp");
        TraitFactory.setMutualExclusive("preparedfood", "preparedweapon");
        TraitFactory.setMutualExclusive("preparedammo", "preparedrepair");
        TraitFactory.setMutualExclusive("preparedammo", "preparedmedical");
        TraitFactory.setMutualExclusive("preparedammo", "preparedcamp");
        TraitFactory.setMutualExclusive("preparedrepair", "preparedmedical");
        TraitFactory.setMutualExclusive("preparedrepair", "preparedweapon");
        TraitFactory.setMutualExclusive("preparedmedical", "preparedcamp");
        TraitFactory.setMutualExclusive("preparedmedical", "preparedweapon");
        TraitFactory.setMutualExclusive("preparedcamp", "preparedrepair");
        TraitFactory.setMutualExclusive("preparedweapon", "preparedammo");
        TraitFactory.setMutualExclusive("preparedweapon", "preparedcamp");
        TraitFactory.setMutualExclusive("preparedpack", "preparedammo");
        TraitFactory.setMutualExclusive("preparedpack", "preparedrepair");
        TraitFactory.setMutualExclusive("preparedpack", "preparedmedical");
        TraitFactory.setMutualExclusive("preparedpack", "preparedcamp");
        TraitFactory.setMutualExclusive("preparedpack", "preparedfood");
        TraitFactory.setMutualExclusive("preparedpack", "preparedweapon");
        TraitFactory.setMutualExclusive("preparedcar", "preparedweapon");
        TraitFactory.setMutualExclusive("preparedcar", "preparedfood");
        TraitFactory.setMutualExclusive("preparedcar", "preparedammo");
        TraitFactory.setMutualExclusive("preparedcar", "preparedrepair");
        TraitFactory.setMutualExclusive("preparedcar", "preparedmedical");
        TraitFactory.setMutualExclusive("preparedcar", "preparedcamp");
        TraitFactory.setMutualExclusive("preparedcar", "preparedpack");
        TraitFactory.setMutualExclusive("preparedcoordination", "preparedammo");
        TraitFactory.setMutualExclusive("preparedcoordination", "preparedcamp");
        TraitFactory.setMutualExclusive("preparedcoordination", "preparedcar");
        TraitFactory.setMutualExclusive("preparedcoordination", "preparedfood");
        TraitFactory.setMutualExclusive("preparedcoordination", "preparedmedical");
        TraitFactory.setMutualExclusive("preparedcoordination", "preparedpack");
        TraitFactory.setMutualExclusive("preparedcoordination", "preparedrepair");
        TraitFactory.setMutualExclusive("preparedcoordination", "preparedweapon");
        TraitFactory.setMutualExclusive("deprived", "preparedfood");
        TraitFactory.setMutualExclusive("deprived", "preparedammo");
        TraitFactory.setMutualExclusive("deprived", "preparedrepair");
        TraitFactory.setMutualExclusive("deprived", "preparedmedical");
        TraitFactory.setMutualExclusive("deprived", "preparedcamp");
        TraitFactory.setMutualExclusive("deprived", "preparedpack");
        TraitFactory.setMutualExclusive("deprived", "preparedcar");
        TraitFactory.setMutualExclusive("deprived", "preparedweapon");
        TraitFactory.setMutualExclusive("deprived", "preparedcoordination");
    end
    TraitFactory.setMutualExclusive("noxpsneaky", "noxptechnician");
    TraitFactory.setMutualExclusive("noxpsneaky", "noxpshooter");
    TraitFactory.setMutualExclusive("noxpsneaky", "noxpaxe");
    TraitFactory.setMutualExclusive("noxpsneaky", "noxpfirstaid");
    TraitFactory.setMutualExclusive("noxpsneaky", "noxpmaintenance");
    TraitFactory.setMutualExclusive("noxptechnician", "noxpshooter");
    TraitFactory.setMutualExclusive("noxptechnician", "noxpaxe");
    TraitFactory.setMutualExclusive("noxptechnician", "noxpfirstaid");
    TraitFactory.setMutualExclusive("noxptechnician", "noxpmaintenance");
    TraitFactory.setMutualExclusive("noxpshooter", "noxpaxe");
    TraitFactory.setMutualExclusive("noxpshooter", "noxpfirstaid");
    TraitFactory.setMutualExclusive("noxpshooter", "noxpmaintenance");
    TraitFactory.setMutualExclusive("noxpaxe", "noxpfirstaid");
    TraitFactory.setMutualExclusive("noxpaxe", "noxpmaintenance");
    TraitFactory.setMutualExclusive("noxpfirstaid", "noxpmaintenance");
    TraitFactory.setMutualExclusive("quiet", "Clumsy");
    TraitFactory.setMutualExclusive("flexible", "Obese");
    TraitFactory.setMutualExclusive("olympian", "Unfit");
    if getActivatedMods():contains("ScavengingSkill") == false and getActivatedMods():contains("ScavengingSkillFixed") == false then
        TraitFactory.setMutualExclusive("scrounger", "incomprehensive");
    end
    TraitFactory.setMutualExclusive("olympian", "Jogger");
    TraitFactory.setMutualExclusive("blissful", "depressive");
    TraitFactory.setMutualExclusive("blissful", "selfdestructive");
    if getActivatedMods():contains("\\1299328280/ToadTraitsDisableSpec") == false then
        TraitFactory.setMutualExclusive("specweapons", "speccrafting");
        TraitFactory.setMutualExclusive("specweapons", "specfood");
        TraitFactory.setMutualExclusive("specweapons", "specguns");
        TraitFactory.setMutualExclusive("specweapons", "specmove");
        TraitFactory.setMutualExclusive("specweapons", "specaid");
        TraitFactory.setMutualExclusive("speccrafting", "specfood");
        TraitFactory.setMutualExclusive("speccrafting", "specguns");
        TraitFactory.setMutualExclusive("speccrafting", "specmove");
        TraitFactory.setMutualExclusive("specaid", "specmove");
        TraitFactory.setMutualExclusive("speccrafting", "specaid");
        TraitFactory.setMutualExclusive("specfood", "specguns");
        TraitFactory.setMutualExclusive("specfood", "specmove");
        TraitFactory.setMutualExclusive("specguns", "specmove");
        TraitFactory.setMutualExclusive("specguns", "specaid");
        TraitFactory.setMutualExclusive("specfood", "specaid");
        TraitFactory.setMutualExclusive("antigun", "specguns");
    end
    TraitFactory.setMutualExclusive("problunt", "problade");
    TraitFactory.setMutualExclusive("problunt", "progun");
    TraitFactory.setMutualExclusive("problade", "progun");
    TraitFactory.setMutualExclusive("prospear", "progun");
    TraitFactory.setMutualExclusive("prospear", "problunt");
    TraitFactory.setMutualExclusive("prospear", "problade");
    TraitFactory.setMutualExclusive("thickblood", "anemic");
    if getActivatedMods():contains("DynamicTraits") == false then
        TraitFactory.setMutualExclusive("generator", "ingenuitive");
    else
        --Prevent the player from getting above the sneak level required to lose conspicuous
        TraitFactory.setMutualExclusive("noxpsneaky", "Conspicuous");
    end
    if getActivatedMods():contains("DrivingSkill") == false then
        TraitFactory.setMutualExclusive("expertdriver", "poordriver");
        TraitFactory.setMutualExclusive("motionsickness", "expertdriver");
    end
    TraitFactory.setMutualExclusive("Resilient", "superimmune");
    TraitFactory.setMutualExclusive("Resilient", "immunocompromised");
    TraitFactory.setMutualExclusive("superimmune", "immunocompromised");
    TraitFactory.setMutualExclusive("ProneToIllness", "superimmune");
    TraitFactory.setMutualExclusive("packmule", "packmouse");
    TraitFactory.setMutualExclusive("gourmand", "ascetic");
    TraitFactory.setMutualExclusive("fearful", "Desensitized");
    TraitFactory.setMutualExclusive("fearful", "Brave");
    TraitFactory.setMutualExclusive("blissful", "Smoker");
    TraitFactory.setMutualExclusive("quickworker", "slowworker");
    TraitFactory.setMutualExclusive("restfulsleeper", "Insomniac");
    TraitFactory.setMutualExclusive("motionsickness", "superimmune");
    TraitFactory.setMutualExclusive("badteeth", "albino");
    TraitFactory.setMutualExclusive("antigun", "terminator");
    TraitFactory.setMutualExclusive("antigun", "progun");
    TraitFactory.setMutualExclusive("antigun", "noxpshooter");
    TraitFactory.setMutualExclusive("idealweight", "Overweight");
    TraitFactory.setMutualExclusive("idealweight", "Underweight");
    TraitFactory.setMutualExclusive("idealweight", "Very Underweight");
    TraitFactory.setMutualExclusive("idealweight", "Obese");
    TraitFactory.setMutualExclusive("idealweight", "Emaciated");
    TraitFactory.setMutualExclusive("idealweight", "WeightGain");
    TraitFactory.setMutualExclusive("idealweight", "WeightLoss");
    --TraitFactory.setMutualExclusive("gimp", "fast");
    --TraitFactory.setMutualExclusive("blissful", "Brooding");
    local version = getCore():getGameVersion();
    if version:getMajor() >= 42 and version:getMinor() >= 0 then
        -- Re-enable Lucky/Unlucky
        TraitFactory.addTrait("Lucky", getText("UI_trait_lucky"), 4, getText("UI_trait_luckydesc"), false, false);
        TraitFactory.addTrait("Unlucky", getText("UI_trait_unlucky"), -4, getText("UI_trait_unluckydesc"), false, false);
        TraitFactory.setMutualExclusive("Lucky", "Unlucky");
        -- Re-enable Light/Heavy UI_trait_drinker
        TraitFactory.addTrait("LightDrinker", getText("UI_trait_lightdrink"), -2, getText("UI_trait_lightdrinkdesc"), false);
        TraitFactory.addTrait("HeavyDrinker", getText("UI_trait_harddrink"), 3, getText("UI_trait_harddrinkdesc"), false);
        TraitFactory.setMutualExclusive("LightDrinker", "HeavyDrinker");
    end
    if version:getMajor() >= 41 and version:getMinor() >= 66 then
        --Re-enable Lucky/Unlucky in Multiplayer
        TraitFactory.getTrait("Lucky"):setRemoveInMP(false);
        TraitFactory.getTrait("Unlucky"):setRemoveInMP(false);
    end
    TraitFactory.sortList();
end

Events.OnGameBoot.Add(initToadTraits);
