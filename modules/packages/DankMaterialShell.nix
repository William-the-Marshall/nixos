{inputs, ...}: {
  flake-file.inputs = {
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  flake.nixosModules.DankMaterialShell = {pkgs, lib, ...}: {
    imports = [ inputs.home-manager.nixosModules.home-manager ];

    home-manager.users.jonf = {
      imports = [
        inputs.DankMaterialShell.homeModules.dank-material-shell
        inputs.DankMaterialShell.homeModules.niri
      ];

      programs.dank-material-shell = {
        enable = true;
        systemd.enable = true;
        enableSystemMonitoring = true;
        enableDynamicTheming = true;
        enableAudioWavelength = true;

        settings = {
          
  currentThemeName = "custom";
  currentThemeCategory = "registry";
  customThemeFile = "/home/jonf/.config/DankMaterialShell/themes/tokyoNightNightMoon/theme.json";
  registryThemeVariants = {
    gruvboxMulti = {
      dark = {
        flavor = "material-medium-dark";
        accent = "green";
      };
    };
    amoledBlack = {
      dark = {
        flavor = "black";
        accent = "turquoise";
      };
    };
    gruvboxMaterial = "hard";
    everforest = "hard";
  };
  matugenScheme = "scheme-vibrant";
  matugenContrast = 0;
  runUserMatugenTemplates = true;
  matugenTargetMonitor = "";
  popupTransparency = 0.8;
  dockTransparency = 0.57;
  widgetBackgroundColor = "sth";
  widgetBackgroundCustomColor = "#6750A4";
  widgetBackgroundCustomStrength = 0.5;
  widgetColorMode = "default";
  controlCenterTileColorMode = "primary";
  buttonColorMode = "primary";
  cornerRadius = 12;
  niriLayoutGapsOverride = -1;
  niriLayoutRadiusOverride = -1;
  niriLayoutBorderSize = -1;
  hyprlandLayoutGapsOverride = -1;
  hyprlandLayoutGapsOutOverride = -1;
  hyprlandLayoutRadiusOverride = -1;
  hyprlandLayoutBorderSize = -1;
  hyprlandResizeOnBorder = false;
  mangoLayoutGapsOverride = -1;
  mangoLayoutGapsOutOverride = -1;
  mangoLayoutRadiusOverride = -1;
  mangoLayoutBorderSize = -1;
  mangoTrackpadNaturalScrolling = true;
  firstDayOfWeek = -1;
  showWeekNumber = false;
  calendarBackend = "auto";
  use24HourClock = false;
  showSeconds = false;
  padHours12Hour = false;
  useFahrenheit = true;
  windSpeedUnit = "kmh";
  nightModeEnabled = false;
  animationSpeed = 0;
  customAnimationDuration = 500;
  syncComponentAnimationSpeeds = true;
  popoutAnimationSpeed = 1;
  popoutCustomAnimationDuration = 150;
  modalAnimationSpeed = 1;
  modalCustomAnimationDuration = 150;
  enableRippleEffects = true;
  animationVariant = 0;
  motionEffect = 0;
  m3ElevationEnabled = true;
  m3ElevationIntensity = 12;
  m3ElevationOpacity = 30;
  m3ElevationColorMode = "default";
  m3ElevationLightDirection = "top";
  m3ElevationCustomColor = "#000000";
  modalElevationEnabled = true;
  popoutElevationEnabled = true;
  barElevationEnabled = false;
  blurEnabled = true;
  blurForegroundLayers = true;
  blurLayerOutlineOpacity = 0.12;
  blurBorderColor = "outline";
  blurBorderCustomColor = "#ffffff";
  blurBorderOpacity = 0.35;
  wallpaperFillMode = "Fill";
  blurredWallpaperLayer = false;
  blurWallpaperOnOverview = false;
  wallpaperBackgroundColorMode = "black";
  wallpaperBackgroundCustomColor = "#000000";
  showLauncherButton = true;
  showWorkspaceSwitcher = true;
  showFocusedWindow = true;
  showWeather = true;
  showMusic = true;
  showClipboard = true;
  showCpuUsage = true;
  showMemUsage = true;
  showCpuTemp = true;
  showGpuTemp = true;
  selectedGpuIndex = 0;
  enabledGpuPciIds = [ ];
  showSystemTray = true;
  systemTrayIconTintMode = "none";
  systemTrayIconTintSaturation = 50;
  systemTrayIconTintStrength = 135;
  showClock = true;
  showNotificationButton = true;
  showBattery = true;
  showBatteryPercent = true;
  showBatteryPercentOnlyOnBattery = false;
  showBatteryTime = false;
  showBatteryTimeOnlyOnBattery = false;
  batteryPillStyle = false;
  batteryPillPercentSign = false;
  showControlCenterButton = true;
  showCapsLockIndicator = true;
  controlCenterShowNetworkIcon = true;
  controlCenterShowBluetoothIcon = true;
  controlCenterShowAudioIcon = true;
  controlCenterShowAudioPercent = false;
  controlCenterShowVpnIcon = true;
  controlCenterShowBrightnessIcon = false;
  controlCenterShowBrightnessPercent = false;
  controlCenterShowMicIcon = false;
  controlCenterShowMicPercent = false;
  controlCenterShowBatteryIcon = false;
  controlCenterShowPrinterIcon = false;
  controlCenterShowScreenSharingIcon = true;
  controlCenterShowIdleInhibitorIcon = false;
  controlCenterShowDoNotDisturbIcon = false;
  showPrivacyButton = true;
  privacyShowMicIcon = false;
  privacyShowCameraIcon = false;
  privacyShowScreenShareIcon = false;
  controlCenterWidgets = [
    {
      id = "volumeSlider";
      enabled = true;
      width = 50;
    }
    {
      id = "brightnessSlider";
      enabled = true;
      width = 50;
    }
    {
      id = "wifi";
      enabled = true;
      width = 50;
    }
    {
      id = "bluetooth";
      enabled = true;
      width = 50;
    }
    {
      id = "audioOutput";
      enabled = true;
      width = 50;
    }
    {
      id = "audioInput";
      enabled = true;
      width = 50;
    }
    {
      id = "nightMode";
      enabled = true;
      width = 50;
    }
    {
      id = "darkMode";
      enabled = true;
      width = 50;
    }
  ];
  showWorkspaceIndex = false;
  showWorkspaceName = false;
  showWorkspacePadding = false;
  workspaceScrolling = false;
  showWorkspaceApps = false;
  workspaceDragReorder = true;
  maxWorkspaceIcons = 3;
  workspaceAppIconSizeOffset = 0;
  groupWorkspaceApps = false;
  groupActiveWorkspaceApps = false;
  workspaceFollowFocus = false;
  showOccupiedWorkspacesOnly = true;
  reverseScrolling = false;
  dwlShowAllTags = false;
  workspaceActiveAppHighlightEnabled = false;
  workspaceColorMode = "default";
  workspaceFocusedCustomColor = "#6750A4";
  workspaceOccupiedColorMode = "none";
  workspaceOccupiedCustomColor = "#625B71";
  workspaceUnfocusedColorMode = "default";
  workspaceUnfocusedCustomColor = "#49454E";
  workspaceUrgentColorMode = "default";
  workspaceUrgentCustomColor = "#B3261E";
  workspaceFocusedBorderEnabled = false;
  workspaceFocusedBorderColor = "primary";
  workspaceFocusedBorderCustomColor = "#6750A4";
  workspaceFocusedBorderThickness = 2;
  workspaceUnfocusedMonitorSeparateAppearance = false;
  workspaceUnfocusedMonitorColorMode = "default";
  workspaceUnfocusedMonitorFocusedCustomColor = "#6750A4";
  workspaceUnfocusedMonitorOccupiedColorMode = "none";
  workspaceUnfocusedMonitorOccupiedCustomColor = "#625B71";
  workspaceUnfocusedMonitorUnfocusedColorMode = "default";
  workspaceUnfocusedMonitorUnfocusedCustomColor = "#49454E";
  workspaceUnfocusedMonitorUrgentColorMode = "default";
  workspaceUnfocusedMonitorUrgentCustomColor = "#B3261E";
  workspaceUnfocusedMonitorBorderEnabled = false;
  workspaceUnfocusedMonitorBorderColor = "primary";
  workspaceUnfocusedMonitorBorderCustomColor = "#6750A4";
  workspaceUnfocusedMonitorBorderThickness = 2;
  workspaceNameIcons = {
    Music = {
      type = "icon";
      value = "music_note";
    };
    Browser = {
      type = "icon";
      value = "laptop";
    };
    Home = {
      type = "icon";
      value = "work";
    };
    Play = {
      type = "icon";
      value = "sports_esports";
    };
    Work = {
      type = "icon";
      value = "work";
    };
  };
  waveProgressEnabled = true;
  scrollTitleEnabled = true;
  mediaAdaptiveWidthEnabled = true;
  audioVisualizerEnabled = true;
  audioScrollMode = "volume";
  audioWheelScrollAmount = 5;
  audioDeviceScrollVolumeEnabled = false;
  mediaExcludePlayers = [ ];
  clockCompactMode = false;
  focusedWindowCompactMode = false;
  focusedWindowSize = 1;
  focusedWindowShowIcon = true;
  runningAppsCompactMode = true;
  barMaxVisibleApps = 0;
  barMaxVisibleRunningApps = 0;
  barShowOverflowBadge = true;
  trayAutoOverflow = true;
  trayPopupSingleLine = true;
  trayMaxVisibleItems = 0;
  appsDockHideIndicators = false;
  appsDockColorizeActive = false;
  appsDockActiveColorMode = "primary";
  appsDockEnlargeOnHover = false;
  appsDockEnlargePercentage = 125;
  appsDockIconSizePercentage = 100;
  keyboardLayoutNameCompactMode = false;
  keyboardLayoutNameShowIcon = false;
  runningAppsCurrentWorkspace = true;
  runningAppsGroupByApp = false;
  runningAppsCurrentMonitor = false;
  appIdSubstitutions = [
    {
      pattern = "Spotify";
      replacement = "spotify";
      type = "exact";
    }
    {
      pattern = "beepertexts";
      replacement = "beeper";
      type = "exact";
    }
    {
      pattern = "home assistant desktop";
      replacement = "homeassistant-desktop";
      type = "exact";
    }
    {
      pattern = "com.transmissionbt.transmission";
      replacement = "transmission-gtk";
      type = "contains";
    }
    {
      pattern = "^steam_app_(\d+)$";
      replacement = "steam_icon_$1";
      type = "regex";
    }
  ];
  centeringMode = "index";
  clockDateFormat = "";
  lockDateFormat = "";
  greeterRememberLastSession = true;
  greeterRememberLastUser = true;
  greeterAutoLogin = false;
  greeterEnableFprint = false;
  greeterEnableU2f = false;
  greeterWallpaperPath = "";
  greeterUse24HourClock = true;
  greeterShowSeconds = false;
  greeterPadHours12Hour = false;
  greeterLockDateFormat = "";
  greeterFontFamily = "";
  greeterWallpaperFillMode = "";
  greeterSyncPending = false;
  greeterSyncBaseline = { };
  mediaSize = 1;
  appLauncherViewMode = "list";
  spotlightModalViewMode = "list";
  browserPickerViewMode = "grid";
  browserUsageHistory = {
    firefox = {
      count = 5;
      lastUsed = 1777063337046;
      name = "Firefox";
    };
    waterfox = {
      count = 15;
      lastUsed = 1783831148938;
      name = "Waterfox";
    };
  };
  appPickerViewMode = "grid";
  filePickerUsageHistory = {
    nvim = {
      count = 2;
      lastUsed = 1783831215040;
      name = "Neovim";
    };
  };
  sortAppsAlphabetically = false;
  appLauncherGridColumns = 5;
  spotlightCloseNiriOverview = true;
  rememberLastQuery = false;
  rememberLastMode = true;
  spotlightSectionViewModes = {
    apps = "grid";
  };
  appDrawerSectionViewModes = {
    apps = "list";
  };
  niriOverviewOverlayEnabled = true;
  dankLauncherV2Size = "compact";
  dankLauncherV2ShowSourceBadges = true;
  dankLauncherV2BorderEnabled = false;
  dankLauncherV2BorderThickness = 2;
  dankLauncherV2BorderColor = "primary";
  dankLauncherV2ShowFooter = true;
  dankLauncherV2UnloadOnClose = true;
  dankLauncherV2IncludeFilesInAll = false;
  dankLauncherV2IncludeFoldersInAll = false;
  launcherUseOverlayLayer = false;
  launcherStyle = "full";
  spotlightBarShowModeChips = false;
  keybindsFloatingWindow = false;
  useAutoLocation = false;
  weatherEnabled = true;
  dashTabs = [
    {
      id = "overview";
      enabled = true;
    }
    {
      id = "media";
      enabled = true;
    }
    {
      id = "wallpaper";
      enabled = true;
    }
    {
      id = "weather";
      enabled = true;
    }
    {
      id = "settings";
      enabled = true;
    }
  ];
  networkPreference = "wifi";
  iconThemeDark = "Papirus-Dark";
  iconThemeLight = "System Default";
  iconThemePerMode = false;
  lastAppliedIconTheme = "Papirus-Dark";
  cursorSettings = {
    theme = "Adwaita";
    size = 25;
    niri = {
      hideWhenTyping = true;
      hideAfterInactiveMs = 0;
    };
    hyprland = {
      hideOnKeyPress = false;
      hideOnTouch = false;
      inactiveTimeout = 0;
    };
    dwl = {
      cursorHideTimeout = 0;
    };
  };
  launcherLogoMode = "apps";
  launcherLogoCustomPath = "";
  launcherLogoColorOverride = "";
  launcherLogoColorInvertOnMode = false;
  launcherLogoBrightness = 0.5;
  launcherLogoContrast = 1;
  launcherLogoSizeOffset = 0;
  fontFamily = "JetBrains Mono";
  monoFontFamily = "JetBrains Mono";
  fontWeight = 400;
  fontScale = 1;
  textRenderType = 0;
  textRenderQuality = 0;
  notepadUseMonospace = true;
  notepadFontFamily = "";
  notepadFontSize = 14;
  notificationSummaryFontSize = 0;
  notificationBodyFontSize = 0;
  notepadShowLineNumbers = false;
  notepadAutoSave = false;
  notepadSlideoutSide = "right";
  notepadDefaultMode = "slideout";
  notepadTransparencyOverride = 0.7;
  notepadLastCustomTransparency = 0.7;
  notepadUseCompositorGap = false;
  notepadEdgeGap = 0;
  soundsEnabled = false;
  useSystemSoundTheme = false;
  soundLogin = false;
  soundNewNotification = true;
  soundVolumeChanged = true;
  soundPluggedIn = true;
  muteSoundsWhenMediaPlaying = true;
  acMonitorTimeout = 0;
  acLockTimeout = 0;
  acSuspendTimeout = 0;
  acSuspendBehavior = 0;
  acProfileName = "";
  acPostLockMonitorTimeout = 0;
  batteryMonitorTimeout = 0;
  batteryLockTimeout = 0;
  batterySuspendTimeout = 0;
  batterySuspendBehavior = 0;
  batteryProfileName = "";
  batteryPostLockMonitorTimeout = 0;
  batteryChargeLimit = 100;
  batteryNotifyChargeLimit = false;
  batteryCriticalThreshold = 10;
  batteryNotifyCritical = true;
  batteryLowThreshold = 20;
  batteryNotifyLow = false;
  batteryChargeLimitNotificationType = 0;
  batteryLowNotificationType = 0;
  batteryCriticalNotificationType = 1;
  batteryAutoPowerSaver = false;
  lockBeforeSuspend = false;
  loginctlLockIntegration = true;
  fadeToLockEnabled = true;
  fadeToLockGracePeriod = 5;
  fadeToDpmsEnabled = true;
  fadeToDpmsGracePeriod = 5;
  launchPrefix = "";
  brightnessDevicePins = { };
  wifiNetworkPins = { };
  bluetoothDevicePins = { };
  audioInputDevicePins = { };
  audioOutputDevicePins = {
    preferredOutput = [
      "alsa_output.usb-Topping_D50s-00.pro-output-0"
      "alsa_output.usb-Topping_D50s-00.HiFi__Headphones__sink"
    ];
  };
  gtkThemingEnabled = false;
  qtThemingEnabled = false;
  syncModeWithPortal = true;
  terminalsAlwaysDark = true;
  muxType = "tmux";
  muxUseCustomCommand = false;
  muxCustomCommand = "";
  muxSessionFilter = "";
  runDmsMatugenTemplates = true;
  matugenTemplateGtk = true;
  matugenTemplateNiri = true;
  matugenTemplateHyprland = false;
  matugenTemplateMangowc = true;
  matugenTemplateQt5ct = true;
  matugenTemplateQt6ct = true;
  matugenTemplateFirefox = true;
  matugenTemplatePywalfox = false;
  matugenTemplateZenBrowser = false;
  matugenTemplateVesktop = false;
  matugenTemplateVencord = true;
  matugenTemplateEquibop = false;
  matugenTemplateGhostty = false;
  matugenTemplateKitty = false;
  matugenTemplateFoot = false;
  matugenTemplateAlacritty = true;
  matugenTemplateNeovim = true;
  matugenTemplateWezterm = true;
  matugenTemplateDgop = true;
  matugenTemplateKcolorscheme = true;
  matugenTemplateVscode = false;
  matugenTemplateEmacs = false;
  matugenTemplateZed = false;
  matugenTemplateNeovimSettings = {
    dark = {
      baseTheme = "tokyonight";
      harmony = 0.5;
    };
    light = {
      baseTheme = "github_light";
      harmony = 0.5;
    };
  };
  matugenTemplateNeovimSetBackground = true;
  showDock = false;
  dockAutoHide = false;
  dockSmartAutoHide = false;
  dockUseOverlayLayer = false;
  dockGroupByApp = false;
  dockRestoreSpecialWorkspaceOnClick = false;
  dockOpenOnOverview = false;
  dockPosition = 1;
  dockSpacing = 8;
  dockBottomGap = 0;
  dockMargin = 0;
  dockIconSize = 40;
  dockIndicatorStyle = "line";
  dockBorderEnabled = true;
  dockBorderColor = "surfaceText";
  dockBorderOpacity = 1;
  dockBorderThickness = 1;
  dockIsolateDisplays = false;
  dockLauncherEnabled = false;
  dockLauncherLogoMode = "apps";
  dockLauncherLogoCustomPath = "";
  dockLauncherLogoColorOverride = "";
  dockLauncherLogoSizeOffset = 0;
  dockLauncherLogoBrightness = 0.5;
  dockLauncherLogoContrast = 1;
  dockMaxVisibleApps = 0;
  dockMaxVisibleRunningApps = 0;
  dockShowOverflowBadge = true;
  dockShowTrash = false;
  dockTrashFileManager = "default";
  dockTrashCustomCommand = "";
  notificationOverlayEnabled = false;
  notificationPopupShadowEnabled = true;
  notificationPopupPrivacyMode = false;
  modalDarkenBackground = true;
  lockScreenShowPowerActions = true;
  lockScreenShowSystemIcons = true;
  lockScreenShowTime = true;
  lockScreenShowDate = true;
  lockScreenShowProfileImage = true;
  lockScreenShowPasswordField = true;
  lockScreenShowMediaPlayer = true;
  lockScreenPowerOffMonitorsOnLock = false;
  lockAtStartup = false;
  enableFprint = false;
  maxFprintTries = 15;
  enableU2f = false;
  u2fMode = "or";
  lockScreenInactiveColor = "#000000";
  lockScreenNotificationMode = 0;
  lockScreenVideoEnabled = false;
  lockScreenVideoPath = "";
  lockScreenVideoCycling = false;
  lockScreenWallpaperPath = "";
  lockScreenWallpaperFillMode = "";
  lockScreenFontFamily = "";
  hideBrightnessSlider = false;
  notificationTimeoutLow = 5000;
  notificationTimeoutNormal = 5000;
  notificationTimeoutCritical = 0;
  notificationCompactMode = false;
  notificationShowTimeoutBar = false;
  notificationDedupeEnabled = true;
  notificationPopupPosition = 0;
  notificationAnimationSpeed = 1;
  notificationCustomAnimationDuration = 400;
  notificationHistoryEnabled = true;
  notificationHistoryMaxCount = 50;
  notificationHistoryMaxAgeDays = 7;
  notificationHistorySaveLow = true;
  notificationHistorySaveNormal = true;
  notificationHistorySaveCritical = true;
  notificationRules = [ ];
  notificationFocusedMonitor = false;
  osdAlwaysShowValue = false;
  osdPosition = 5;
  osdVolumeEnabled = true;
  osdMediaVolumeEnabled = true;
  osdMediaPlaybackEnabled = false;
  osdBrightnessEnabled = true;
  osdIdleInhibitorEnabled = true;
  osdMicMuteEnabled = true;
  osdCapsLockEnabled = true;
  osdPowerProfileEnabled = false;
  osdAudioOutputEnabled = true;
  powerActionConfirm = true;
  powerActionHoldDuration = 0.5;
  powerMenuActions = [
    "reboot"
    "logout"
    "poweroff"
    "lock"
    "suspend"
    "restart"
  ];
  powerMenuDefaultAction = "logout";
  powerMenuGridLayout = false;
  customPowerActionLock = "";
  customPowerActionLogout = "";
  customPowerActionSuspend = "";
  customPowerActionHibernate = "";
  customPowerActionReboot = "";
  customPowerActionPowerOff = "";
  updaterHideWidget = false;
  updaterCheckOnStart = false;
  updaterUseCustomCommand = false;
  updaterCustomCommand = "";
  updaterTerminalAdditionalParams = "";
  updaterIntervalSeconds = 1800;
  updaterIncludeFlatpak = true;
  updaterAllowAUR = true;
  displayNameMode = "system";
  screenPreferences = { };
  showOnLastDisplay = { };
  niriOutputSettings = {
    HDMI-A-1 = {
      vrrOnDemand = true;
      hotCorners = {
        off = true;
      };
      layout = {
        alwaysCenterSingleColumn = true;
      };
    };
  };
  hyprlandOutputSettings = { };
  displayProfiles = { };
  activeDisplayProfile = { };
  displayProfileAutoSelect = false;
  displayShowDisconnected = false;
  displaySnapToEdge = true;
  connectedFrameBarStyleBackups = {
    default = {
      shadowIntensity = 0;
      squareCorners = false;
      gothCornersEnabled = false;
      borderEnabled = true;
    };
  };
  barConfigs = [
    {
      id = "default";
      name = "Main Bar";
      enabled = true;
      position = 0;
      screenPreferences = [
        "all"
      ];
      showOnLastDisplay = true;
      leftWidgets = [
        "workspaceSwitcher"
        "focusedWindow"
      ];
      centerWidgets = [
        "music"
        "clock"
      ];
      rightWidgets = [
        {
          id = "systemTray";
          enabled = true;
        }
        {
          id = "memUsage";
          enabled = true;
          minimumWidth = true;
          showInGb = false;
        }
        {
          id = "controlCenterButton";
          enabled = true;
        }
      ];
      spacing = 5;
      innerPadding = 5;
      bottomGap = 0;
      transparency = 0.4;
      widgetTransparency = 0.8;
      squareCorners = false;
      noBackground = true;
      gothCornersEnabled = false;
      gothCornerRadiusOverride = false;
      gothCornerRadiusValue = 12;
      borderEnabled = false;
      borderColor = "primary";
      borderOpacity = 0.4;
      borderThickness = 2;
      fontScale = 1.15;
      autoHide = false;
      autoHideDelay = 250;
      openOnOverview = false;
      visible = true;
      popupGapsAuto = true;
      popupGapsManual = 4;
      maximizeWidgetIcons = false;
      maximizeWidgetText = false;
      removeWidgetPadding = false;
      showOnWindowsOpen = false;
      widgetPadding = 13;
      shadowIntensity = 0;
      widgetOutlineEnabled = false;
      widgetOutlineColor = "secondary";
      iconScale = 1.1;
      clickThrough = false;
      scrollYBehavior = "column";
      scrollXBehavior = "workspace";
    }
  ];
  desktopClockEnabled = false;
  desktopClockStyle = "analog";
  desktopClockTransparency = 0.8;
  desktopClockColorMode = "primary";
  desktopClockCustomColor = {
    r = 1;
    g = 1;
    b = 1;
    a = 1;
    hsvHue = -1;
    hsvSaturation = 0;
    hsvValue = 1;
    hslHue = -1;
    hslSaturation = 0;
    hslLightness = 1;
    valid = true;
  };
  desktopClockShowDate = true;
  desktopClockShowAnalogNumbers = false;
  desktopClockShowAnalogSeconds = true;
  desktopClockX = -1;
  desktopClockY = -1;
  desktopClockWidth = 280;
  desktopClockHeight = 180;
  desktopClockDisplayPreferences = [
    "all"
  ];
  systemMonitorEnabled = false;
  systemMonitorShowHeader = true;
  systemMonitorTransparency = 0.8;
  systemMonitorColorMode = "primary";
  systemMonitorCustomColor = {
    r = 1;
    g = 1;
    b = 1;
    a = 1;
    hsvHue = -1;
    hsvSaturation = 0;
    hsvValue = 1;
    hslHue = -1;
    hslSaturation = 0;
    hslLightness = 1;
    valid = true;
  };
  systemMonitorShowCpu = true;
  systemMonitorShowCpuGraph = true;
  systemMonitorShowCpuTemp = true;
  systemMonitorShowGpuTemp = false;
  systemMonitorGpuPciId = "";
  systemMonitorShowMemory = true;
  systemMonitorShowMemoryGraph = true;
  systemMonitorShowNetwork = true;
  systemMonitorShowNetworkGraph = true;
  systemMonitorShowDisk = true;
  systemMonitorShowTopProcesses = false;
  systemMonitorTopProcessCount = 3;
  systemMonitorTopProcessSortBy = "cpu";
  systemMonitorGraphInterval = 60;
  systemMonitorLayoutMode = "auto";
  systemMonitorX = -1;
  systemMonitorY = -1;
  systemMonitorWidth = 320;
  systemMonitorHeight = 480;
  systemMonitorDisplayPreferences = [
    "all"
  ];
  systemMonitorVariants = [ ];
  desktopWidgetPositions = { };
  desktopWidgetGridSettings = { };
  desktopWidgetInstances = [ ];
  desktopWidgetGroups = [ ];
  builtInPluginSettings = {
    dms_settings_search = {
      trigger = "?";
    };
    dms_clipboard_search = {
      trigger = "cb";
    };
  };
  clipboardClickToPaste = false;
  clipboardEnterToPaste = false;
  clipboardRememberTypeFilter = false;
  clipboardTypeFilter = "all";
  clipboardVisibleEntryActions = [
    "pin"
    "edit"
    "delete"
  ];
  launcherPluginVisibility = {
    dms_settings_search = {
      allowWithoutTrigger = true;
    };
  };
  launcherPluginOrder = [ ];
  frameEnabled = true;
  frameThickness = 10;
  frameRounding = 15;
  frameColor = "surface";
  frameOpacity = 0.6;
  frameScreenPreferences = [
    "all"
  ];
  frameBarSize = 40;
  frameShowOnOverview = true;
  frameBlurEnabled = true;
  frameCloseGaps = true;
  frameLauncherEmergeSide = "bottom";
  frameLauncherArcExtender = false;
  frameLauncherEdgeHover = false;
  frameMode = "connected";
  barInsetPaddingShared = -1;
  barInsetPaddingSyncAll = false;
  frameBarInsetPadding = -1;
  configVersion = 12;

        };

        niri.includes.enable = true;
      };
    };

    services.tuned.enable = true;
    services.upower.enable = true;
  };
}
