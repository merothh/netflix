.class public Lo/CompanionDeviceManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothLeDeviceFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lo/DeviceFilter$ActionBar;)Lo/DeviceFilter;
    .locals 3

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 24
    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    const-string v2, "ConnectivityMonitor"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const-string v1, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1

    :cond_1
    const-string v1, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    .line 27
    :goto_1
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    .line 34
    new-instance v0, Lo/WifiDeviceFilter;

    invoke-direct {v0, p1, p2}, Lo/WifiDeviceFilter;-><init>(Landroid/content/Context;Lo/DeviceFilter$ActionBar;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lo/ActivityNotFoundException;

    invoke-direct {v0}, Lo/ActivityNotFoundException;-><init>()V

    :goto_2
    return-object v0
.end method
