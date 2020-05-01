.class public Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetNetworkInterfaces.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setNetworkInterfaces"

.field private static final PROPERTY_interfaceName:Ljava/lang/String; = "interfaceName"

.field private static final PROPERTY_internetConnected:Ljava/lang/String; = "internetConnected"

.field private static final PROPERTY_ipv4Address:Ljava/lang/String; = "ipv4Address"

.field private static final PROPERTY_isDefault:Ljava/lang/String; = "isDefault"

.field private static final PROPERTY_linkConnected:Ljava/lang/String; = "linkConnected"

.field private static final PROPERTY_macAddress:Ljava/lang/String; = "macAddress"

.field private static final PROPERTY_mobileCarrier:Ljava/lang/String; = "mobileCarrier"

.field private static final PROPERTY_mobileCountryCode:Ljava/lang/String; = "mobileCountryCode"

.field private static final PROPERTY_mobileNetworkCode:Ljava/lang/String; = "mobileNetworkCode"

.field private static final PROPERTY_networkInterfaces:Ljava/lang/String; = "networkInterfaces"

.field private static final PROPERTY_physicalLayerSubType:Ljava/lang/String; = "physicalLayerSubType"

.field private static final PROPERTY_physicalLayerType:Ljava/lang/String; = "physicalLayerType"

.field private static final PROPERTY_ssid:Ljava/lang/String; = "ssid"

.field private static final PROPERTY_wirelessChannel:Ljava/lang/String; = "wirelessChannel"

.field private static final TARGET:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "android"

    const-string/jumbo v1, "setNetworkInterfaces"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;->setArguments(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method private setArguments(Landroid/content/Context;)V
    .locals 13

    .prologue
    .line 108
    .line 110
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 112
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkInterfaces(Landroid/content/Context;)[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 113
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 116
    :try_start_0
    array-length v8, v6

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v8, :cond_c

    aget-object v3, v6, v2

    .line 117
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 118
    const-string/jumbo v0, "interfaceName"

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkTypePerLoggingSpecifcation(Landroid/content/Context;I)I

    move-result v4

    .line 121
    const-string/jumbo v0, "physicalLayerType"

    invoke-virtual {v9, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    invoke-static {v3}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkSubTypePerLoggingSpecification(Lcom/netflix/mediaclient/service/net/LogMobileType;)I

    move-result v0

    .line 125
    const-string/jumbo v1, "physicalLayerSubType"

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const/4 v1, 0x0

    .line 128
    const/4 v0, 0x0

    .line 131
    if-eqz v7, :cond_0

    .line 132
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 133
    const/4 v1, 0x1

    .line 134
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 138
    :cond_0
    if-eqz v1, :cond_8

    .line 139
    const-string/jumbo v3, "isDefault"

    invoke-virtual {v9, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 140
    if-eqz v0, :cond_7

    .line 141
    const-string/jumbo v0, "linkConnected"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    :goto_1
    const-string/jumbo v0, "internetConnected"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    const/4 v1, 0x0

    .line 157
    const/4 v0, 0x4

    if-ne v0, v4, :cond_9

    .line 158
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 159
    if-eqz v0, :cond_e

    .line 160
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 161
    if-eqz v3, :cond_e

    .line 162
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const-string/jumbo v0, "nf_invoke"

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string/jumbo v0, "nf_invoke"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 170
    if-eqz v1, :cond_2

    .line 171
    const-string/jumbo v10, "ssid"

    invoke-virtual {v9, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :cond_2
    if-eqz v3, :cond_3

    .line 175
    const-string/jumbo v1, "macAddress"

    invoke-virtual {v9, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :cond_3
    const-string/jumbo v1, "wirelessChannel"

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    :goto_2
    if-eqz v0, :cond_4

    .line 187
    const-string/jumbo v1, "ipv4Address"

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_4
    invoke-static {v4}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->carrierInfoNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    const-string/jumbo v4, ""

    .line 192
    const-string/jumbo v3, ""

    .line 193
    const-string/jumbo v1, ""

    .line 194
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 195
    if-eqz v0, :cond_b

    .line 196
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 199
    const-string/jumbo v10, "nf_invoke"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "networkOperator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_5
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_a

    .line 202
    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 203
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 205
    const-string/jumbo v3, "nf_invoke"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mcc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string/jumbo v3, "nf_invoke"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mnc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 212
    :goto_3
    const-string/jumbo v4, "mobileCarrier"

    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string/jumbo v3, "mobileCountryCode"

    invoke-virtual {v9, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string/jumbo v1, "mobileNetworkCode"

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_6
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 116
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 143
    :cond_7
    const-string/jumbo v0, "linkConnected"

    const/4 v1, 0x2

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_4
    return-void

    .line 146
    :cond_8
    :try_start_1
    const-string/jumbo v0, "isDefault"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v0, "linkConnected"

    const/4 v1, 0x2

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 183
    :cond_9
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 209
    :cond_a
    const-string/jumbo v0, "nf_invoke"

    const-string/jumbo v10, "Network operator less than 4 characters!"

    invoke-static {v0, v10}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_3

    .line 219
    :cond_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 220
    const-string/jumbo v1, "networkInterfaces"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;->arguments:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_d
    move-object v3, v4

    goto :goto_3

    :cond_e
    move-object v0, v1

    goto/16 :goto_2
.end method
