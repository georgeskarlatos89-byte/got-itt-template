.class public Lai/gotit/giap/service/DeviceInfoManager;
.super Ljava/lang/Object;
.source "DeviceInfoManager.java"


# instance fields
.field private configManager:Lai/gotit/giap/service/ConfigManager;

.field private staticProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private storage:Lai/gotit/giap/service/Storage;


# direct methods
.method public constructor <init>(Lai/gotit/giap/service/ConfigManager;Lai/gotit/giap/service/Storage;)V
    .locals 9

    const-string v0, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it."

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lai/gotit/giap/service/DeviceInfoManager;->configManager:Lai/gotit/giap/service/ConfigManager;

    .line 41
    iput-object p2, p0, Lai/gotit/giap/service/DeviceInfoManager;->storage:Lai/gotit/giap/service/Storage;

    .line 43
    invoke-virtual {p1}, Lai/gotit/giap/service/ConfigManager;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 51
    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v3, v2

    :catch_1
    const-string p1, "System information constructed with a context that apparently doesn\'t exist."

    .line 54
    invoke-static {p1}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    move-object p1, v2

    .line 62
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_2
    const-string v6, "hasSystemFeature"

    new-array v7, v5, [Ljava/lang/Class;

    .line 65
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_0

    :try_start_3
    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "android.hardware.nfc"

    aput-object v7, v6, v1

    .line 71
    invoke-virtual {v4, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "android.hardware.telephony"

    aput-object v7, v5, v1

    .line 72
    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    move-object v6, v2

    .line 76
    :catch_4
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-object v6, v2

    .line 74
    :catch_6
    invoke-static {v0}, Lai/gotit/giap/util/Logger;->warn(Ljava/lang/String;)V

    :goto_2
    move-object p2, v2

    :goto_3
    move-object v2, v6

    goto :goto_4

    :cond_0
    move-object p2, v2

    .line 80
    :goto_4
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v1, "$device_id"

    invoke-direct {p0}, Lai/gotit/giap/service/DeviceInfoManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v1, "$os"

    const-string v4, "Android"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v1, "$lib"

    const-string v4, "GIAP-android"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v1, "$lib_version"

    const-string v4, "1.0"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-direct {p0}, Lai/gotit/giap/service/DeviceInfoManager;->getScreenMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "$screen_height"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "$screen_width"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "$screen_dpi"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v1, "$os_version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v1, "$app_build_number"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v1, "$app_version_string"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v0, "$carrier"

    invoke-direct {p0}, Lai/gotit/giap/service/DeviceInfoManager;->getCarrier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object p1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v0, "$manufacturer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v0, "$model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v0, "$brand"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v0, "$bluetooth_version"

    invoke-direct {p0}, Lai/gotit/giap/service/DeviceInfoManager;->getBluetoothVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v0, "$has_nfc"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string v0, "$has_telephone"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    const-string p2, "$google_play_services"

    invoke-direct {p0}, Lai/gotit/giap/service/DeviceInfoManager;->getGooglePlayServices()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getBluetoothVersion()Ljava/lang/String;
    .locals 2

    .line 161
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->configManager:Lai/gotit/giap/service/ConfigManager;

    .line 162
    invoke-virtual {v0}, Lai/gotit/giap/service/ConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ble"

    goto :goto_0

    :cond_0
    const-string v1, "android.hardware.bluetooth"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "classic"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCarrier()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->configManager:Lai/gotit/giap/service/ConfigManager;

    .line 150
    invoke-virtual {v0}, Lai/gotit/giap/service/ConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 3

    .line 131
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->storage:Lai/gotit/giap/service/Storage;

    const-string v1, "DEVICE_ID"

    invoke-virtual {v0, v1}, Lai/gotit/giap/service/Storage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v2, p0, Lai/gotit/giap/service/DeviceInfoManager;->storage:Lai/gotit/giap/service/Storage;

    invoke-virtual {v2, v1, v0}, Lai/gotit/giap/service/Storage;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getGooglePlayServices()Ljava/lang/String;
    .locals 2

    .line 177
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lai/gotit/giap/service/DeviceInfoManager;->configManager:Lai/gotit/giap/service/ConfigManager;

    .line 178
    invoke-virtual {v1}, Lai/gotit/giap/service/ConfigManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "invalid"

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    goto :goto_0

    :cond_2
    const-string v0, "out of date"

    goto :goto_0

    :cond_3
    const-string v0, "missing"

    goto :goto_0

    :cond_4
    const-string v0, "available"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "not configured"
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "not included"

    :goto_0
    return-object v0
.end method

.method private getScreenMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 140
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->configManager:Lai/gotit/giap/service/ConfigManager;

    .line 141
    invoke-virtual {v0}, Lai/gotit/giap/service/ConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private isBluetoothEnabled()Ljava/lang/Boolean;
    .locals 4

    .line 238
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->configManager:Lai/gotit/giap/service/ConfigManager;

    invoke-virtual {v0}, Lai/gotit/giap/service/ConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 241
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.BLUETOOTH"

    .line 242
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method private isWifiConnected()Ljava/lang/Boolean;
    .locals 5

    .line 208
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->configManager:Lai/gotit/giap/service/ConfigManager;

    invoke-virtual {v0}, Lai/gotit/giap/service/ConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "connectivity"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    return-object v2

    .line 220
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x1

    if-lt v1, v3, :cond_3

    .line 221
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2

    .line 228
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 230
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 231
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 229
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static makeInstance(Lai/gotit/giap/service/ConfigManager;Lai/gotit/giap/service/Storage;)Lai/gotit/giap/service/DeviceInfoManager;
    .locals 1

    .line 102
    new-instance v0, Lai/gotit/giap/service/DeviceInfoManager;

    invoke-direct {v0, p0, p1}, Lai/gotit/giap/service/DeviceInfoManager;-><init>(Lai/gotit/giap/service/ConfigManager;Lai/gotit/giap/service/Storage;)V

    return-object v0
.end method


# virtual methods
.method public getDeviceInfo()Lorg/json/JSONObject;
    .locals 2

    .line 106
    invoke-virtual {p0}, Lai/gotit/giap/service/DeviceInfoManager;->getDeviceInfoAsMap()Ljava/util/Map;

    move-result-object v0

    .line 108
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method getDeviceInfoAsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "$wifi"

    .line 117
    invoke-direct {p0}, Lai/gotit/giap/service/DeviceInfoManager;->isWifiConnected()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "$bluetooth_enabled"

    .line 118
    invoke-direct {p0}, Lai/gotit/giap/service/DeviceInfoManager;->isBluetoothEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getStaticProps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lai/gotit/giap/service/DeviceInfoManager;->staticProps:Ljava/util/Map;

    return-object v0
.end method
