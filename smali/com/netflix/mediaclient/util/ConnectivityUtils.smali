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

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static carrierInfoNeeded(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 365
    const/4 v1, 0x4

    if-ne v1, p0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    const/4 v1, 0x3

    if-eq v1, p0, :cond_0

    .line 369
    const/4 v1, 0x5

    if-eq v1, p0, :cond_0

    .line 372
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static carrierInfoNeeded(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 467
    const-string/jumbo v1, "wifi"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    const-string/jumbo v1, "wimax"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    const-string/jumbo v1, "wired"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    if-nez p0, :cond_0

    move-object v0, v1

    .line 302
    :goto_0
    return-object v0

    .line 298
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 299
    if-nez v0, :cond_1

    move-object v0, v1

    .line 300
    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getActiveNetworkTypeOrMinusOne(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 886
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 887
    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 889
    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 893
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getApplicationRx()J
    .locals 4

    .prologue
    .line 195
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 196
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 197
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 198
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Application receiving statistic is not supported by this device"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-wide/16 v0, 0x0

    .line 201
    :cond_0
    return-wide v0
.end method

.method public static getApplicationTx()J
    .locals 4

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 155
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 156
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 157
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Transmit statistic is not supported by this device!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-wide/16 v0, 0x0

    .line 161
    :cond_0
    return-wide v0
.end method

.method public static getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;
    .locals 2

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Activity cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 117
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 119
    if-nez v0, :cond_1

    .line 120
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->UKNOWN:Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 123
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;
    .locals 1

    .prologue
    .line 838
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 839
    if-nez v0, :cond_0

    .line 840
    const/4 v0, 0x0

    .line 854
    :goto_0
    return-object v0

    .line 844
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 852
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0

    .line 846
    :sswitch_0
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wired:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0

    .line 849
    :sswitch_1
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wifi:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0

    .line 844
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCurrentOperatorNameOrEmptyString(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    if-eqz p0, :cond_0

    .line 871
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 872
    if-eqz v0, :cond_0

    .line 876
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getLocalIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 666
    if-nez p0, :cond_0

    move-object v0, v1

    .line 680
    :goto_0
    return-object v0

    .line 669
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 671
    if-eqz v0, :cond_1

    .line 672
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 675
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

    .line 676
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is WiFi"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_2
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is Mobile (it also covers everything else)."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 607
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
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

    .line 612
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 613
    if-nez v3, :cond_2

    move-object v0, v1

    .line 655
    :cond_1
    :goto_0
    return-object v0

    .line 617
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 620
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 621
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "NI is loopback, skip"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 652
    :catch_0
    move-exception v0

    .line 653
    const-string/jumbo v2, "nf_net"

    const-string/jumbo v3, "Failed to get IP address"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v1

    .line 655
    goto :goto_0

    .line 624
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 625
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "NI is virtual, skip"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 628
    :cond_5
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-nez v4, :cond_6

    .line 629
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "NI is not up, skip"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 633
    :cond_6
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 635
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

    .line 636
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_7

    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_7

    .line 637
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 638
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

    .line 641
    :cond_8
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 642
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 643
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "WiFi interface found in all network interfaces, skip!"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 579
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 580
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 581
    :cond_0
    const/4 v0, 0x0

    .line 589
    :goto_0
    return-object v0

    .line 584
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 589
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNetworkInterfaces(Landroid/content/Context;)[Landroid/net/NetworkInfo;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 237
    if-nez p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v3

    .line 241
    :cond_1
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 242
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 247
    if-eqz v4, :cond_0

    move v0, v1

    move v2, v1

    .line 253
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 254
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    aget-object v5, v4, v0

    invoke-static {v5}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 253
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    :cond_3
    if-lez v2, :cond_6

    .line 260
    new-array v3, v2, [Landroid/net/NetworkInfo;

    move v0, v1

    .line 261
    :goto_2
    array-length v2, v4

    if-ge v0, v2, :cond_5

    .line 262
    aget-object v2, v4, v0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    add-int/lit8 v2, v1, 0x1

    aget-object v5, v4, v0

    aput-object v5, v3, v1

    move v1, v2

    .line 261
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_3
    move-object v3, v0

    .line 267
    goto :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_3
.end method

.method public static getNetworkSpec(Lcom/netflix/mediaclient/service/net/LogMobileType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    if-nez p0, :cond_0

    .line 554
    const-string/jumbo v0, ""

    .line 567
    :goto_0
    return-object v0

    .line 557
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    const-string/jumbo v0, "2g"

    goto :goto_0

    .line 559
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->_3G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    const-string/jumbo v0, "3g"

    goto :goto_0

    .line 561
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    const-string/jumbo v0, "4g"

    goto :goto_0

    .line 563
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 564
    const-string/jumbo v0, "g"

    goto :goto_0

    .line 567
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getNetworkState(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 693
    if-nez p0, :cond_0

    .line 694
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    .line 720
    :goto_0
    return-object v0

    .line 696
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 697
    if-nez v0, :cond_1

    .line 698
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_3

    .line 702
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 705
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

    .line 706
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is WiFi"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 708
    if-nez v0, :cond_4

    .line 709
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "WiFi manager is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 713
    if-nez v1, :cond_5

    .line 714
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v4, v4, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 716
    :cond_5
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v4, v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_6
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is Mobile (it also covers everything else)."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v4, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getNetworkSubTypePerLoggingSpecification(Lcom/netflix/mediaclient/service/net/LogMobileType;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 343
    if-nez p0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    const/4 v0, 0x1

    goto :goto_0

    .line 349
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->_3G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    const/4 v0, 0x2

    goto :goto_0

    .line 351
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 352
    const/4 v0, 0x3

    goto :goto_0

    .line 353
    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    const-string/jumbo v0, ""

    .line 226
    :goto_0
    return-object v0

    .line 214
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 215
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 216
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    .line 221
    if-nez v0, :cond_3

    .line 222
    const-string/jumbo v0, ""

    goto :goto_0

    .line 223
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    const-string/jumbo v0, "WIFI"

    goto :goto_0

    .line 226
    :cond_4
    const-string/jumbo v0, "MOBILE"

    goto :goto_0
.end method

.method public static getNetworkTypePerLoggingSpecifcation(Landroid/content/Context;I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    if-nez p0, :cond_0

    move v0, v1

    .line 335
    :goto_0
    return v0

    .line 314
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 323
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 324
    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    move v0, v1

    .line 335
    goto :goto_0

    .line 316
    :sswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 318
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 320
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 328
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 330
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkTypePerLoggingSpecification(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 383
    if-nez p0, :cond_0

    .line 384
    const-string/jumbo v0, ""

    .line 420
    :goto_0
    return-object v0

    .line 387
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 388
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 389
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 393
    if-nez v0, :cond_3

    .line 394
    const-string/jumbo v0, ""

    goto :goto_0

    .line 396
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

    .line 398
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 409
    :pswitch_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 410
    if-eqz v0, :cond_4

    .line 411
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

    .line 412
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 420
    :cond_4
    const-string/jumbo v0, "mobile"

    goto :goto_0

    .line 400
    :pswitch_1
    const-string/jumbo v0, "wired"

    goto :goto_0

    .line 402
    :pswitch_2
    const-string/jumbo v0, "wimax"

    goto :goto_0

    .line 404
    :pswitch_3
    const-string/jumbo v0, "wifi"

    goto/16 :goto_0

    .line 406
    :pswitch_4
    const-string/jumbo v0, "bluetooth"

    goto/16 :goto_0

    .line 414
    :pswitch_5
    const-string/jumbo v0, "cdma"

    goto/16 :goto_0

    .line 416
    :pswitch_6
    const-string/jumbo v0, "gsm"

    goto/16 :goto_0

    .line 398
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

    .line 412
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static getRx()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 173
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 174
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 175
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 176
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Receiving statistic is not supported by this device! Report this!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 178
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 179
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Receiving statistic is not supported at all by this device! Report this!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-wide/16 v0, 0x0

    .line 184
    :cond_0
    return-wide v0
.end method

.method public static getSsidOrEmptyString(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    if-eqz p0, :cond_1

    .line 859
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 860
    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_0

    .line 865
    :goto_0
    return-object v0

    .line 862
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 865
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getTx()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 133
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 134
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 135
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 136
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Transmit statistic is not supported by this device! Failing back to all data!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    .line 138
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 139
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Transmit statistic is not supported at all by this device! Report this!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-wide/16 v0, 0x0

    .line 144
    :cond_0
    return-wide v0
.end method

.method public static hasCellular(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 438
    if-nez p0, :cond_0

    move v0, v1

    .line 455
    :goto_0
    return v0

    .line 442
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 443
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 444
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 445
    if-nez v0, :cond_1

    move v0, v1

    .line 446
    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 450
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 451
    const/4 v0, 0x1

    goto :goto_0

    .line 453
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

    .line 455
    goto :goto_0
.end method

.method public static hasInternet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 99
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 101
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

    .prologue
    const/4 v1, 0x0

    .line 488
    if-nez p0, :cond_0

    move v0, v1

    .line 501
    :goto_0
    return v0

    .line 493
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 494
    if-nez v0, :cond_1

    move v0, v1

    .line 495
    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 498
    if-nez v0, :cond_2

    move v0, v1

    .line 499
    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public static isConnectedOrConnecting(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 511
    if-nez p0, :cond_0

    move v0, v1

    .line 524
    :goto_0
    return v0

    .line 516
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 517
    if-nez v0, :cond_1

    move v0, v1

    .line 518
    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 521
    if-nez v0, :cond_2

    move v0, v1

    .line 522
    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    goto :goto_0
.end method

.method public static isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 285
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 283
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 277
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

    .prologue
    .line 428
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkTypePerLoggingSpecification(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 429
    const-string/jumbo v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cdma"

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "gsm"

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiFiConnected(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 535
    if-nez p0, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    .line 540
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    .line 541
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static processConnectivityChange(Landroid/content/Context;Landroid/content/Intent;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 732
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "Handle connectivity change, process..."

    invoke-static {v0, v4, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 738
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 740
    if-eqz v0, :cond_8

    .line 741
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v4, v0

    .line 744
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v5, "Connect intent"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-static {v4}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    .line 747
    const-string/jumbo v5, "nf_net"

    const-string/jumbo v6, "Network changed, find limit"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v0

    move v6, v2

    .line 757
    :goto_1
    if-eqz v4, :cond_5

    .line 759
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

    .line 762
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 763
    if-eqz v0, :cond_7

    .line 764
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_7

    .line 766
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    const-string/jumbo v1, "nf_net"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
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

    .line 770
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v0

    move-object v0, v1

    move v1, v3

    .line 787
    :goto_3
    if-nez v0, :cond_1

    .line 788
    const-string/jumbo v0, ""

    .line 791
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 792
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

    .line 795
    :cond_2
    new-instance v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    invoke-direct {v7, v6, v1, v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    .line 796
    iput-object v5, v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;->currentConnectionType:Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 797
    iput-object v4, v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;->ipAddr:Ljava/lang/String;

    .line 798
    return-object v7

    .line 751
    :cond_3
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v5, "Disconnect intent"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    move v6, v3

    goto/16 :goto_1

    .line 776
    :cond_4
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "Not wifi"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto :goto_3

    .line 782
    :cond_5
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "Intent does not have network info. It should NOT happen!"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    .line 795
    goto :goto_4

    :cond_7
    move-object v0, v1

    goto :goto_2

    :cond_8
    move-object v4, v1

    goto/16 :goto_0
.end method
