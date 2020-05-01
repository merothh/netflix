.class public final Lo/oS;
.super Lo/jR;
.source ""


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p3, p4}, Lo/jR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lo/oS;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 46
    iget-object p1, p0, Lo/oS;->j:Lorg/json/JSONObject;

    sget-object p3, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->f:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->e()I

    move-result p3

    const-string p4, "level"

    invoke-virtual {p1, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lo/oS;->j:Lorg/json/JSONObject;

    const-string p3, "mid"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_0
    invoke-static {p7}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lo/oS;->j:Lorg/json/JSONObject;

    const-string p2, "errormsg"

    invoke-virtual {p1, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_1
    invoke-static {p6}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lo/oS;->j:Lorg/json/JSONObject;

    const-string p2, "errorcode"

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_2
    invoke-static {p5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 60
    iget-object p1, p0, Lo/oS;->j:Lorg/json/JSONObject;

    const-string p2, "downloadrequesttype"

    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    :cond_3
    iput-boolean p8, p0, Lo/oS;->a:Z

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    .line 83
    invoke-direct/range {v0 .. v8}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Lo/or;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 71
    invoke-interface {p2}, Lo/or;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lo/or;->e()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-interface {p2}, Lo/or;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lo/or;->l()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    .line 71
    invoke-direct/range {v0 .. v8}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Lo/zS;I)V
    .locals 12

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 303
    :try_start_0
    new-instance v11, Lo/oS;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string v5, "-1"

    const-string v6, "-1"

    const-string v7, "-1"

    const-string v8, "storageAddedOrRemoved"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "volumeCount="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v11}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 307
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 305
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static a(Lo/zS;Lo/or;Ljava/lang/String;)V
    .locals 10

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 275
    :try_start_0
    new-instance v9, Lo/oS;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string v6, "manifestSaved"

    const-string v7, ""

    const/4 v8, 0x0

    move-object v3, v9

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Lo/or;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    invoke-direct {v9, p2}, Lo/oS;->b(Ljava/lang/String;)V

    .line 277
    invoke-interface {p0, v9}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 281
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 279
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 102
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lo/oS;->j:Lorg/json/JSONObject;

    const-string v1, "dbgmsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "offlineErrorLogBlob"

    const-string v1, "JSONException:"

    .line 106
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Lo/zS;Lo/or;JLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 242
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    :cond_1
    const/4 p4, 0x0

    .line 247
    :goto_0
    :try_start_1
    new-instance v9, Lo/oS;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string v6, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DlRequestStorageInfo removable="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v9

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Lo/or;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 249
    invoke-direct {v9, p2, p3}, Lo/oS;->e(J)V

    .line 250
    invoke-direct {v9, p5}, Lo/oS;->b(Ljava/lang/String;)V

    .line 251
    invoke-interface {p0, v9}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "Exception:"

    .line 255
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "JSONException:"

    .line 253
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    return-void
.end method

.method public static b(Lo/zS;Lo/or;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 123
    :try_start_0
    invoke-static {p2}, Lo/adS;->a(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-static {p2}, Lo/adS;->e(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v7

    .line 125
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 126
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/StatusCode;->bm:Lcom/netflix/mediaclient/StatusCode;

    if-ne v4, v5, :cond_1

    .line 127
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    :cond_1
    move-object v4, v3

    .line 129
    new-instance v9, Lo/oS;

    const/4 v8, 0x1

    move-object v3, v9

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Lo/or;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 130
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v9, p1}, Lo/oS;->b(Ljava/lang/String;)V

    .line 131
    invoke-interface {p0, v9}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 135
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 133
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static b(Lo/zS;Lo/or;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;Ljava/lang/String;)V
    .locals 10

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 143
    :try_start_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 145
    sget-object v4, Lo/oS$3;->e:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 188
    :pswitch_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    goto :goto_0

    .line 184
    :pswitch_1
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    goto :goto_0

    .line 180
    :pswitch_2
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    goto :goto_0

    .line 176
    :pswitch_3
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    goto :goto_0

    .line 172
    :pswitch_4
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    goto :goto_0

    .line 168
    :pswitch_5
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    goto :goto_0

    .line 164
    :pswitch_6
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->b:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    goto :goto_0

    .line 160
    :pswitch_7
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    goto :goto_0

    .line 152
    :pswitch_8
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    :goto_0
    move-object v5, v3

    const/4 v3, 0x1

    goto :goto_2

    :goto_1
    const-string v4, " onDownloadStopped stopReason: %s, no-op"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v1

    .line 191
    invoke-static {v0, v4, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :pswitch_9
    move-object v5, v3

    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1

    .line 195
    invoke-static {p2}, Lo/aeF;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Ljava/lang/String;

    move-result-object v7

    .line 196
    new-instance p2, Lo/oS;

    const-string v8, "downloadStopError"

    const/4 v9, 0x1

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Lo/or;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    invoke-direct {p2, p3}, Lo/oS;->b(Ljava/lang/String;)V

    .line 198
    invoke-interface {p0, p2}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 203
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 201
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lo/zS;Lo/or;Ljava/lang/String;)V
    .locals 10

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 329
    :try_start_0
    new-instance v9, Lo/oS;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string v6, ""

    const-string v7, "log"

    const/4 v8, 0x0

    move-object v3, v9

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Lo/or;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 330
    invoke-direct {v9, p2}, Lo/oS;->b(Ljava/lang/String;)V

    .line 331
    invoke-interface {p0, v9}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 335
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 333
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static c(Lo/zS;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V
    .locals 12

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 263
    :try_start_0
    new-instance v11, Lo/oS;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string v5, "-1"

    const-string v6, "-1"

    const-string v7, "-1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "offline feature n/a"

    const/4 v10, 0x1

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v11}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 267
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 265
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static c(Lo/zS;Lo/or;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 12

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 343
    :try_start_0
    invoke-static {p2}, Lo/adS;->a(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {p2}, Lo/adS;->e(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v4

    .line 345
    new-instance v11, Lo/oS;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    :goto_0
    move-object v6, v5

    const-string v8, "licenseReplace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v5, v11

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Lo/or;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 347
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v11, p1}, Lo/oS;->b(Ljava/lang/String;)V

    .line 348
    invoke-interface {p0, v11}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 352
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 350
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method public static d(Lo/zS;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 12

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 227
    :try_start_0
    new-instance v11, Lo/oS;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string v5, "-1"

    const-string v6, "-1"

    const-string v7, "-1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NetflixStartJob"

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v11}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 231
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 229
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static d(Lo/zS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 315
    :try_start_0
    new-instance v11, Lo/oS;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string v6, "-1"

    const-string v7, "-1"

    const-string v8, ""

    const-string v9, "log"

    const/4 v10, 0x0

    move-object v3, v11

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 316
    invoke-direct {v11, p2}, Lo/oS;->b(Ljava/lang/String;)V

    .line 317
    invoke-interface {p0, v11}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 321
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 319
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private e(J)V
    .locals 2

    .line 113
    :try_start_0
    iget-object v0, p0, Lo/oS;->j:Lorg/json/JSONObject;

    const-string v1, "freespace"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "offlineErrorLogBlob"

    const-string v0, "JSONException:"

    .line 115
    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static e(Lo/zS;Lo/or;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 211
    :try_start_0
    invoke-static {p2}, Lo/adS;->a(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-static {p2}, Lo/adS;->e(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v7

    .line 213
    new-instance v9, Lo/oS;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->b:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Lo/or;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v9, p1}, Lo/oS;->b(Ljava/lang/String;)V

    .line 215
    invoke-interface {p0, v9}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 219
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 217
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static e(Lo/zS;Lo/or;Ljava/lang/String;)V
    .locals 10

    const-string v0, "offlineErrorLogBlob"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 289
    :try_start_0
    new-instance v9, Lo/oS;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string v6, "manifestNotFound"

    const-string v7, ""

    const/4 v8, 0x0

    move-object v3, v9

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lo/oS;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Lo/or;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    invoke-direct {v9, p2}, Lo/oS;->b(Ljava/lang/String;)V

    .line 291
    invoke-interface {p0, v9}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Exception:"

    .line 295
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "JSONException:"

    .line 293
    invoke-static {v0, p0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lo/oS;->a:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->a:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/oS;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-object v0
.end method
