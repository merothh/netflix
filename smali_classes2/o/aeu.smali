.class public final Lo/aeu;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static b(Lcom/android/volley/VolleyError;)Lcom/netflix/cl/model/Error;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    .line 202
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "rootCause"

    .line 206
    invoke-static {p0}, Lo/aeu;->c(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/util/log/RootCause;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/log/RootCause;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    invoke-static {p0}, Lo/aeu;->d(Lcom/android/volley/VolleyError;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "statusCode"

    .line 210
    iget-object v2, p0, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    iget v2, v2, Lo/ExitTransitionCoordinator;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    iget-object v1, p0, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    iget-object v1, v1, Lo/ExitTransitionCoordinator;->c:[B

    if-eqz v1, :cond_1

    const-string v1, "response"

    .line 212
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    iget-object v3, v3, Lo/ExitTransitionCoordinator;->c:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :catchall_0
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->b:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/netflix/cl/util/ExtCLUtils;->toError(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)Lcom/netflix/cl/model/Error;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 72
    :cond_0
    instance-of v1, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;

    if-eqz v1, :cond_1

    .line 73
    check-cast p0, Lcom/netflix/mediaclient/android/app/BaseStatus;

    .line 74
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;->h()Lcom/netflix/cl/model/Error;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/util/log/RootCause;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 62
    new-instance p2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, p1, v0, p3}, Lo/aeu;->d(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/util/log/RootCause;)Lcom/netflix/cl/model/Error;

    move-result-object p0

    .line 64
    invoke-virtual {p2, p0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->c(Lcom/netflix/cl/model/Error;)V

    return-object p2
.end method

.method public static c(Lcom/netflix/mediaclient/StatusCode;Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    new-instance v1, Lcom/netflix/cl/model/Debug;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/Debug;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez p0, :cond_1

    .line 86
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->a:Lcom/netflix/mediaclient/StatusCode;

    .line 90
    :cond_1
    sget-object p1, Lo/aeu$4;->e:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    .line 149
    new-instance p0, Lcom/netflix/cl/model/Error;

    sget-object p1, Lcom/netflix/mediaclient/util/log/RootCause;->r:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/log/RootCause;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    goto :goto_1

    .line 142
    :pswitch_0
    new-instance p0, Lcom/netflix/cl/model/Error;

    sget-object p1, Lcom/netflix/mediaclient/util/log/RootCause;->r:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/log/RootCause;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    goto :goto_1

    .line 135
    :pswitch_1
    new-instance p0, Lcom/netflix/cl/model/Error;

    sget-object p1, Lcom/netflix/mediaclient/util/log/RootCause;->q:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/log/RootCause;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    goto :goto_1

    .line 128
    :pswitch_2
    new-instance p0, Lcom/netflix/cl/model/Error;

    sget-object p1, Lcom/netflix/mediaclient/util/log/RootCause;->i:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/log/RootCause;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    goto :goto_1

    .line 121
    :pswitch_3
    new-instance p0, Lcom/netflix/cl/model/Error;

    sget-object p1, Lcom/netflix/mediaclient/util/log/RootCause;->i:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/log/RootCause;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    goto :goto_1

    .line 114
    :pswitch_4
    new-instance p0, Lcom/netflix/cl/model/Error;

    sget-object p1, Lcom/netflix/mediaclient/util/log/RootCause;->j:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/log/RootCause;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    goto :goto_1

    .line 107
    :pswitch_5
    new-instance p0, Lcom/netflix/cl/model/Error;

    sget-object p1, Lcom/netflix/mediaclient/util/log/RootCause;->e:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/log/RootCause;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    goto :goto_1

    .line 100
    :pswitch_6
    new-instance p0, Lcom/netflix/cl/model/Error;

    sget-object p1, Lcom/netflix/mediaclient/util/log/RootCause;->g:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/log/RootCause;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    goto :goto_1

    :pswitch_7
    const-string p0, "StatusUtils"

    const-string p1, "Report success"

    .line 93
    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
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

.method public static c(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/util/log/RootCause;
    .locals 3

    .line 163
    invoke-static {p0}, Lo/aeu;->d(Lcom/android/volley/VolleyError;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    sget-object p0, Lcom/netflix/mediaclient/util/log/RootCause;->g:Lcom/netflix/mediaclient/util/log/RootCause;

    return-object p0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    iget v0, v0, Lo/ExitTransitionCoordinator;->d:I

    const/16 v1, 0x190

    const/16 v2, 0x1f4

    if-lt v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    .line 170
    sget-object p0, Lcom/netflix/mediaclient/util/log/RootCause;->l:Lcom/netflix/mediaclient/util/log/RootCause;

    return-object p0

    :cond_1
    if-lt v0, v2, :cond_2

    const/16 v1, 0x258

    if-ge v0, v1, :cond_2

    .line 173
    sget-object p0, Lcom/netflix/mediaclient/util/log/RootCause;->n:Lcom/netflix/mediaclient/util/log/RootCause;

    return-object p0

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 178
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sslhandshakeexception"

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    sget-object p0, Lcom/netflix/mediaclient/util/log/RootCause;->h:Lcom/netflix/mediaclient/util/log/RootCause;

    return-object p0

    :cond_3
    const-string v0, "current time"

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "validation time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    sget-object p0, Lcom/netflix/mediaclient/util/log/RootCause;->j:Lcom/netflix/mediaclient/util/log/RootCause;

    return-object p0

    :cond_4
    const-string v0, "no trusted certificate found"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 184
    sget-object p0, Lcom/netflix/mediaclient/util/log/RootCause;->i:Lcom/netflix/mediaclient/util/log/RootCause;

    return-object p0

    .line 187
    :cond_5
    sget-object p0, Lcom/netflix/mediaclient/util/log/RootCause;->g:Lcom/netflix/mediaclient/util/log/RootCause;

    return-object p0
.end method

.method private static d(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/util/log/RootCause;)Lcom/netflix/cl/model/Error;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/util/Pair;

    .line 42
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "fatal"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x0

    aput-object v1, v0, p2

    .line 43
    new-instance p2, Landroid/util/Pair;

    const-string v1, "reason"

    invoke-direct {p2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 44
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/util/log/RootCause;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "rootCause"

    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 46
    invoke-static {v0}, Lo/adN;->e([Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Lo/aeu;->c(Lcom/netflix/mediaclient/StatusCode;Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/android/volley/VolleyError;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 157
    iget-object p0, p0, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
