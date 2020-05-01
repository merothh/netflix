.class public final Lcom/netflix/mediaclient/util/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.java"


# static fields
.field public static final INTERFACE_TYPE_MOBILE:Ljava/lang/String; = "MOBILE"

.field public static final INTERFACE_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field public static final NETWORK_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final NETWORK_TYPE_CDMA:Ljava/lang/String; = "cdma"

.field public static final NETWORK_TYPE_GSM:Ljava/lang/String; = "gsm"

.field public static final NETWORK_TYPE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final NETWORK_TYPE_WIMAX:Ljava/lang/String; = "wimax"

.field public static final NETWORK_TYPE_WIRED:Ljava/lang/String; = "wired"

.field public static final NRD_NTWK_CDMA:I = 0x2

.field public static final NRD_NTWK_CONN_STATE_CONNECTED:I = 0x1

.field public static final NRD_NTWK_CONN_STATE_DISCONNECTED:I = 0x2

.field public static final NRD_NTWK_CONN_STATE_UNKNOWN:I = 0x0

.field public static final NRD_NTWK_GSM:I = 0x1

.field public static final NRD_NTWK_MOBILE:I = 0x0

.field public static final NRD_NTWK_SUBTYPE_1000MBPS_ETH:I = 0xa

.field public static final NRD_NTWK_SUBTYPE_100MBPS_ETH:I = 0x9

.field public static final NRD_NTWK_SUBTYPE_10MBPS_ETH:I = 0x8

.field public static final NRD_NTWK_SUBTYPE_2G:I = 0x1

.field public static final NRD_NTWK_SUBTYPE_3G:I = 0x2

.field public static final NRD_NTWK_SUBTYPE_4G:I = 0x3

.field public static final NRD_NTWK_SUBTYPE_802_11A:I = 0x4

.field public static final NRD_NTWK_SUBTYPE_802_11B:I = 0x5

.field public static final NRD_NTWK_SUBTYPE_802_11G:I = 0x6

.field public static final NRD_NTWK_SUBTYPE_802_11N:I = 0x7

.field public static final NRD_NTWK_SUBTYPE_UNKNOWN:I = 0x0

.field public static final NRD_NTWK_WIFI:I = 0x4

.field public static final NRD_NTWK_WIMAX:I = 0x3

.field public static final NRD_NTWK_WIRED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "nf_net"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static carrierInfoNeeded(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x3

    if-eq v1, p0, :cond_0

    const/4 v1, 0x5

    if-eq v1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static carrierInfoNeeded(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "wimax"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "wired"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getActiveNetworkTypeOrMinusOne(Landroid/content/Context;)I
    .locals 1

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getApplicationRx()J
    .locals 4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Application receiving statistic is not supported by this device"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public static getApplicationTx()J
    .locals 4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Transmit statistic is not supported by this device!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public static getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Activity cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->UKNOWN:Lcom/netflix/mediaclient/service/net/LogMobileType;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wired:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wifi:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCurrentOperatorNameOrEmptyString(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getLocalIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WIFI"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is WiFi"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is Mobile (it also covers everything else)."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_net"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exclude wifi if exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "NI is loopback, skip"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_net"

    const-string/jumbo v3, "Failed to get IP address"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "NI is virtual, skip"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "NI is not up, skip"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    const-string/jumbo v5, "nf_net"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_7

    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "nf_net"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Check if it is WiFi address."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "WiFi interface found in all network interfaces, skip!"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNetworkInterfaces(Landroid/content/Context;)[Landroid/net/NetworkInfo;
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    move v0, v1

    move v2, v1

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    aget-object v5, v4, v0

    invoke-static {v5}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-lez v2, :cond_6

    new-array v3, v2, [Landroid/net/NetworkInfo;

    move v0, v1

    :goto_2
    array-length v2, v4

    if-ge v0, v2, :cond_5

    aget-object v2, v4, v0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v4, v0

    aput-object v5, v3, v1

    move v1, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_3
    move-object v3, v0

    goto :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_3
.end method

.method public static getNetworkSpec(Lcom/netflix/mediaclient/service/net/LogMobileType;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "2g"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->_3G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "3g"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "4g"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "g"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getNetworkState(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "WIFI"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is WiFi"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_4

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "WiFi manager is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v4, v4, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v4, v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is Mobile (it also covers everything else)."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v4, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getNetworkSubTypePerLoggingSpecification(Lcom/netflix/mediaclient/service/net/LogMobileType;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->_3G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "WIFI"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "MOBILE"

    goto :goto_0
.end method

.method public static getNetworkTypePerLoggingSpecifcation(Landroid/content/Context;I)I
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkTypePerLoggingSpecification(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "nf_net"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkInfo type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    const-string/jumbo v1, "nf_net"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tm type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_4
    const-string/jumbo v0, "mobile"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "wired"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "wimax"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "wifi"

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v0, "bluetooth"

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v0, "cdma"

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v0, "gsm"

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static getRx()J
    .locals 6

    const-wide/16 v4, -0x1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Receiving statistic is not supported by this device! Report this!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Receiving statistic is not supported at all by this device! Report this!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public static getSsidOrEmptyString(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getTx()J
    .locals 6

    const-wide/16 v4, -0x1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Transmit statistic is not supported by this device! Failing back to all data!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Transmit statistic is not supported at all by this device! Report this!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public static hasCellular(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "nf_net"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tm simState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static hasInternet(Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public static isConnectedOrConnecting(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    goto :goto_0
.end method

.method public static isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeCellular(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkTypePerLoggingSpecification(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cdma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiFiConnected(Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static processConnectivityChange(Landroid/content/Context;Landroid/content/Intent;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "Handle connectivity change, process..."

    invoke-static {v0, v4, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_net"

    const-string/jumbo v5, "Connect intent"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    const-string/jumbo v5, "nf_net"

    const-string/jumbo v6, "Network changed, find limit"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v0

    move v6, v2

    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "WIFI"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_net"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "nf_net"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v0

    move-object v0, v1

    move v1, v3

    :goto_3
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "nf_net"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "LocalIPAddress:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    invoke-direct {v7, v6, v1, v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    iput-object v5, v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;->currentConnectionType:Lcom/netflix/mediaclient/service/net/LogMobileType;

    iput-object v4, v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;->ipAddr:Ljava/lang/String;

    return-object v7

    :cond_3
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v5, "Disconnect intent"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    move v6, v3

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "Not wifi"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "Intent does not have network info. It should NOT happen!"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto :goto_2

    :cond_8
    move-object v4, v1

    goto/16 :goto_0
.end method
