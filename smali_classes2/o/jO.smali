.class public Lo/jO;
.super Lo/jC;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/zE;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    const-string v6, "playback_failure_info"

    const-string v7, ""

    const-string v8, "channelIdSource"

    .line 131
    invoke-direct/range {p0 .. p0}, Lo/jC;-><init>()V

    .line 133
    invoke-interface/range {p2 .. p2}, Lo/cz;->b()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v9

    .line 134
    invoke-interface/range {p2 .. p2}, Lo/cz;->e()Lo/ds;

    move-result-object v10

    .line 136
    invoke-interface {v10}, Lo/ds;->b()Ljava/lang/String;

    move-result-object v11

    const-string v12, "fesn4"

    invoke-static {v12, v11}, Lo/aev;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 138
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    .line 139
    invoke-virtual {v12}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v12

    const-wide/32 v14, 0x100000

    div-long/2addr v12, v14

    long-to-int v13, v12

    .line 140
    invoke-static/range {p1 .. p1}, Lo/adq;->p(Landroid/content/Context;)I

    move-result v12

    .line 141
    invoke-static/range {p1 .. p1}, Lo/adq;->r(Landroid/content/Context;)I

    move-result v14

    .line 143
    invoke-static {}, Lo/pf;->c()Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v16, v6

    .line 145
    invoke-static/range {p1 .. p1}, Lo/BulkCursorToCursorAdaptor;->d(Landroid/content/Context;)I

    move-result v6

    .line 148
    :try_start_0
    invoke-static/range {p1 .. p1}, Lo/adq;->n(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    .line 149
    invoke-static/range {p1 .. p1}, Lo/adq;->o(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    .line 151
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v17, v2

    .line 154
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v0, "AndroidDeviceID"

    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    iget-object v0, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v2, "android_version"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 159
    iget-object v0, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v2, "carrierinfo"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_0
    invoke-static {}, Lo/jO;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v2, "rooted"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "ro.modversion"

    .line 166
    invoke-static {v0, v7}, Lo/adk;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-interface/range {p2 .. p2}, Lo/cz;->ad()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "roBspVer"

    invoke-interface/range {p2 .. p2}, Lo/cz;->ad()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_2
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "yearClass"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "hwSpec"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "displayInfo"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "lowRam"

    invoke-static/range {p1 .. p1}, Lo/adk;->f(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 174
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "dalvikVMHeapSize"

    invoke-virtual {v2, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v15, :cond_3

    .line 176
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "storageInfo"

    invoke-virtual {v2, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :cond_3
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "devicecategory"

    invoke-virtual {v9}, Lcom/netflix/mediaclient/util/DeviceCategory;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "realdevicecategory"

    invoke-static {}, Lo/jO;->f()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/util/DeviceCategory;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "playerver"

    const-string v4, "EXO-2.5.3"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "fingerprint"

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "gms_client_version"

    invoke-virtual {v2, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "gms_pkg_version"

    invoke-virtual {v2, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "installationsource"

    invoke-static/range {p1 .. p1}, Lo/adg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "installerName"

    invoke-static/range {p1 .. p1}, Lo/adg;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "mdxjs"

    const-string v4, "1.1.6-android"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "mdxlib_version"

    const-string v4, "2014.1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "stock"

    .line 191
    :cond_4
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v3, "modversion"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    iget-object v0, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v2, "platform"

    invoke-static {}, Lo/adk;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    iget-object v0, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v2, "supported_crypto"

    invoke-static {}, Lo/adU;->e()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    iget-object v0, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v2, "system_id"

    invoke-interface {v10}, Lo/ds;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    iget-object v0, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v2, "used_crypto"

    invoke-interface {v10}, Lo/ds;->i()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v3

    iget v3, v3, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->a:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    iget-object v0, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v2, "video_decoders"

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaUtils;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    invoke-interface/range {p2 .. p2}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 200
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "channelId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p1

    .line 201
    invoke-static {v0, v8, v3}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 203
    invoke-static/range {p1 .. p1}, Lo/cE;->e(Landroid/content/Context;)V

    .line 204
    invoke-static {v0, v8, v3}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    :cond_5
    iget-object v4, v1, Lo/jO;->j:Lorg/json/JSONObject;

    invoke-virtual {v4, v8, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_6
    move-object/from16 v0, p1

    .line 209
    :goto_0
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "activationApkSource"

    invoke-static/range {p1 .. p1}, Lo/adk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "channelIdRo"

    const-string v5, "ro.netflix.channel"

    invoke-static {v5, v7}, Lo/adk;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "installType"

    invoke-interface/range {p2 .. p2}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "playReferrer"

    .line 215
    invoke-static {v0, v2, v3}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "playAppInstallTime"

    const-wide/16 v5, 0x0

    .line 217
    invoke-static {v0, v4, v5, v6}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 218
    iget-object v5, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v6, "playInstallTime"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    iget-object v4, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v5, "playReferrerUrl"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    :cond_7
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "widevineDeviceId"

    invoke-static {v10}, Lo/jO;->a(Lo/ds;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "configData"

    move-object/from16 v5, p2

    move/from16 v6, v17

    invoke-direct {v1, v5}, Lo/jO;->c(Lo/cz;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "features"

    new-instance v7, Lo/pZ;

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct {v7, v5, v8, v9}, Lo/pZ;-><init>(Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/zE;)V

    invoke-direct {v1, v7}, Lo/jO;->b(Lo/pZ;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0x17

    if-lt v6, v2, :cond_8

    .line 226
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "securityPatchVersion"

    sget-object v6, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    move-object/from16 v2, p6

    if-eqz v2, :cond_9

    .line 230
    iget-object v4, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v6, "previous_network_stats"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    :cond_9
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "mediaCache"

    move-object/from16 v6, p7

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "voipInstalled"

    const-class v6, Lo/bY;

    invoke-static {v6}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/bY;

    sget-object v7, Lo/bY$TaskDescription;->b:Lo/bY$TaskDescription;

    invoke-interface {v6, v7}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 236
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "inAppWidevineInstalled"

    const-class v6, Lo/bY;

    invoke-static {v6}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/bY;

    sget-object v7, Lo/bY$TaskDescription;->d:Lo/bY$TaskDescription;

    invoke-interface {v6, v7}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 237
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "partnermoduleInstalled"

    const-class v6, Lo/bY;

    invoke-static {v6}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/bY;

    sget-object v7, Lo/bY$TaskDescription;->e:Lo/bY$TaskDescription;

    invoke-interface {v6, v7}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 238
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "cronetVersion"

    invoke-static/range {p1 .. p1}, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, p8

    if-eqz v2, :cond_a

    .line 240
    iget-object v4, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v6, "moduleStats"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    move-object/from16 v2, v16

    .line 243
    invoke-static {v0, v2, v3}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 245
    iget-object v4, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v6, "play_crash_info"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :cond_b
    invoke-static {v0, v2}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    invoke-static/range {p1 .. p1}, Lo/adk;->i(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 251
    invoke-static/range {p1 .. p1}, Lo/adk;->j(Landroid/content/Context;)Z

    move-result v2

    goto :goto_1

    :cond_c
    const/4 v2, 0x0

    .line 253
    :goto_1
    iget-object v4, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v6, "pip_enabled"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 254
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "appVisibility"

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lo/aed;->c(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "foreground"

    goto :goto_2

    :cond_d
    const-string v6, "background"

    :goto_2
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    invoke-static {}, Lo/jO;->g()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 258
    iget-object v4, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v6, "safetyNetCapability"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    :cond_e
    invoke-static {}, Lo/jO;->i()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 263
    iget-object v4, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v6, "cad"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_f
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "googleCertified"

    sget-object v6, Lo/nd;->b:Lo/nd;

    invoke-virtual {v6}, Lo/nd;->c()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "cacheCleaned"

    invoke-static/range {p1 .. p1}, Lo/jO;->a(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 269
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_10

    .line 270
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lo/jO;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 272
    :cond_10
    iget-object v0, v1, Lo/jO;->j:Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lo/jO;->e(Lorg/json/JSONObject;)V

    .line 274
    iget-object v0, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v2, "widevineState"

    invoke-static/range {p2 .. p2}, Lo/jO;->d(Lo/cz;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-static {}, Lo/jO;->l()F

    move-result v0

    .line 276
    iget-object v2, v1, Lo/jO;->j:Lorg/json/JSONObject;

    const-string v4, "fontScale"

    float-to-double v5, v0

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "startuperror"

    .line 278
    iget-object v4, v1, Lo/jO;->j:Lorg/json/JSONObject;

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v2, "eventrepo"

    .line 280
    iget-object v4, v1, Lo/jO;->j:Lorg/json/JSONObject;

    invoke-static {v2, v4}, Lo/pr;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v2, "startup_logblob"

    const-string v4, "Font size: %f, %f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 282
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x1

    invoke-static {}, Lo/jO;->n()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v2, v4, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private static a(Lo/ds;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 378
    invoke-interface {p0}, Lo/ds;->d()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    invoke-interface {p0}, Lo/ds;->d()[B

    move-result-object p0

    invoke-static {p0}, Lo/ads;->d([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 334
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 337
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object p0

    .line 338
    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getCacheSizeBytes(Ljava/util/UUID;)J

    move-result-wide v1

    .line 339
    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getCacheQuotaBytes(Ljava/util/UUID;)J

    move-result-wide v3

    const-string p0, "cacheUsed"

    .line 340
    invoke-virtual {p1, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "cacheQuota"

    .line 341
    invoke-virtual {p1, p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 357
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "cacheExists.txt"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :try_start_1
    invoke-static {}, Lo/adi;->c()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    :catch_0
    const/4 p0, 0x0

    :catch_1
    :cond_0
    return p0
.end method

.method private b(Lo/pZ;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 454
    invoke-virtual {p1}, Lo/pZ;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 460
    new-instance v2, Lo/qa;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->a:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-direct {v2, v3, p1, v4}, Lo/qa;-><init>(Landroid/content/Context;Lo/pZ;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    const-string p1, "VP9SupportedOnDevice"

    .line 461
    invoke-virtual {v2}, Lo/pQ;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "HevcSupportedOnDevice"

    .line 462
    invoke-virtual {v2}, Lo/pQ;->q()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "AvcHighSupportedOnDevice"

    .line 463
    invoke-virtual {v2}, Lo/pQ;->u()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "Hd10SupportedOnDevice"

    .line 464
    invoke-virtual {v2}, Lo/pQ;->v()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "DolbyVisionSupportedOnDevice"

    .line 465
    invoke-virtual {v2}, Lo/pQ;->y()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 469
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "getFeaturesUsed"

    invoke-interface {v1, v2, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private c(Lo/cz;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 436
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 437
    invoke-interface {p1}, Lo/cz;->f()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "VP9HWCodecEnabled"

    .line 439
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isVP9HWCodecEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AVCHighCodecEnabled"

    .line 440
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isAVCHighCodecEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "eveVP9HWCodecEnabled"

    .line 441
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isEveVP9HWCodecEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AV1CodecEnabled"

    .line 442
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isAV1CodecEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "enableHdr10"

    .line 444
    invoke-interface {p1}, Lo/cz;->m()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "enableDolbyVision"

    .line 445
    invoke-interface {p1}, Lo/cz;->o()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static d(Lo/cz;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "evidence"

    .line 291
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 292
    invoke-interface {p0}, Lo/cz;->j()Z

    move-result v2

    const-string v3, "L1Approved"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 293
    invoke-static {}, Lo/adU;->c()Z

    move-result v2

    const-string v3, "L1Supported"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 294
    invoke-static {p0}, Lo/adU;->b(Lo/cz;)Z

    move-result p0

    const-string v2, "L3ShouldKeep"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 295
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p0

    const-string v2, "disable_widevine"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    const-string v2, "forcedToL3"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 296
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "disable_widevine_l1_reason"

    invoke-static {p0, v3, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v3, "forcedToL3Cause"

    .line 298
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p0

    const-string v3, "disable_widevine_l1_evidence"

    invoke-static {p0, v3, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 304
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\"JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-object v1
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 3

    .line 419
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preference_logging_delivery_stats"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 423
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v0, "loggingDeliveryStats"

    .line 424
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static f()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .line 403
    invoke-static {}, Lo/adq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->h:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0

    .line 405
    :cond_0
    invoke-static {}, Lo/adq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0

    .line 407
    :cond_1
    invoke-static {}, Lo/adq;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->c:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0

    .line 409
    :cond_2
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0

    .line 412
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method

.method private static g()Lorg/json/JSONObject;
    .locals 1

    .line 314
    const-class v0, Lo/zQ;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zQ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 318
    :cond_0
    invoke-interface {v0}, Lo/zQ;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static h()Z
    .locals 8

    const/4 v0, 0x0

    .line 370
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x2a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    aput-object v1, v3, v0

    const/16 v1, 0x4d53

    const/16 v5, 0x89

    const/16 v7, 0xb

    invoke-static {v1, v5, v7}, Lo/NetworkTemplate;->c(CII)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v5, "a"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v2, v0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v6

    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    throw v2

    :cond_0
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_1
    :goto_0
    return v0
.end method

.method private static i()Lorg/json/JSONObject;
    .locals 1

    .line 324
    const-class v0, Lo/zH;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zH;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_0
    invoke-interface {v0}, Lo/zH;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static l()F
    .locals 1

    .line 483
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    return v0
.end method

.method private static n()F
    .locals 4

    .line 492
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startup_logblob"

    const-string v3, "Settings not found!"

    .line 494
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public G_()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lo/jO;->j:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "startup"

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .line 388
    iget-object v0, p0, Lo/jO;->j:Lorg/json/JSONObject;

    return-object v0
.end method
