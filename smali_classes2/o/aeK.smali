.class public final Lo/aeK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lcom/android/volley/VolleyError;

.field public static d:I = 0x198


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 57
    new-instance v0, Lcom/android/volley/VolleyError;

    new-instance v1, Lo/ExitTransitionCoordinator;

    sget v2, Lo/aeK;->d:I

    const/4 v3, 0x0

    new-array v4, v3, [B

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5, v3}, Lo/ExitTransitionCoordinator;-><init>(I[BLjava/util/Map;Z)V

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Lo/ExitTransitionCoordinator;)V

    sput-object v0, Lo/aeK;->c:Lcom/android/volley/VolleyError;

    return-void
.end method

.method public static a(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 263
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    .line 264
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cb:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 265
    :cond_0
    instance-of v1, v0, Ljava/net/ConnectException;

    if-eqz v1, :cond_1

    .line 266
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cc:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 267
    :cond_1
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_2

    .line 268
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->ca:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 269
    :cond_2
    invoke-static {p0}, Lo/adT;->c(Lcom/android/volley/VolleyError;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 270
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cC:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 271
    :cond_3
    instance-of p0, v0, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    if-eqz p0, :cond_4

    .line 272
    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;->b()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p0

    goto :goto_0

    .line 273
    :cond_4
    invoke-static {v0}, Lo/aeK;->c(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 274
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cA:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 275
    :cond_5
    instance-of p0, v0, Lorg/chromium/net/CronetException;

    if-eqz p0, :cond_6

    .line 278
    check-cast v0, Lorg/chromium/net/CronetException;

    .line 279
    invoke-static {v0}, Lo/aeK;->c(Lorg/chromium/net/CronetException;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object p0

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lo/zt;Z)Lo/zt;
    .locals 2

    .line 374
    invoke-interface {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->e(Ljava/lang/String;)Lo/ze;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    const/4 v0, 0x1

    const-string v1, "nf_volley"

    if-eqz p3, :cond_0

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, p0

    const-string p0, "UserCredentialRegistry not found for profile %s, but request is marked as always deliver, use current credentials."

    .line 377
    invoke-static {v1, p0, p3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, p0

    const-string p0, "UserCredentialRegistry not found for profile %s, drop request"

    .line 379
    invoke-static {v1, p0, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0

    .line 383
    :cond_1
    invoke-virtual {p2, p0}, Lo/zt;->d(Lo/ze;)V

    :goto_0
    return-object p2
.end method

.method private static a(Ljava/lang/Throwable;)Z
    .locals 1

    .line 355
    instance-of v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/netflix/msl/MslInternalException;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/netflix/msl/MslException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Lcom/android/volley/VolleyError;Lo/zz;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 115
    instance-of v1, p0, Lcom/netflix/falkor/FalkorException;

    if-eqz v1, :cond_0

    .line 116
    invoke-static {v0, p1}, Lcom/netflix/falkor/FalkorException;->b(Ljava/lang/String;Lo/zz;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_0
    instance-of p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    if-eqz p1, :cond_1

    .line 119
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->bE:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 121
    :cond_1
    instance-of p1, p0, Lcom/android/volley/ServerError;

    if-eqz p1, :cond_2

    .line 122
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->S:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 124
    :cond_2
    instance-of p1, p0, Lcom/android/volley/NoConnectionError;

    if-eqz p1, :cond_3

    .line 125
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->k:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 127
    :cond_3
    instance-of p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz p1, :cond_4

    .line 128
    move-object p1, p0

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->b()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_4
    invoke-static {p0}, Lo/aeK;->a(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_5

    move-object p1, p2

    .line 135
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getStatus statusCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "nf_volley"

    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 138
    invoke-static {p0}, Lo/aeu;->b(Lcom/android/volley/VolleyError;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->c(Lcom/netflix/cl/model/Error;)V

    .line 139
    invoke-virtual {p2, p0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e(Lcom/android/volley/VolleyError;)V

    return-object p2
.end method

.method private static c(Lorg/chromium/net/CronetException;)Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 288
    instance-of v0, p0, Lorg/chromium/net/NetworkException;

    if-eqz v0, :cond_0

    .line 289
    check-cast p0, Lorg/chromium/net/NetworkException;

    .line 290
    invoke-virtual {p0}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cs:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 319
    :pswitch_1
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->co:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 316
    :pswitch_2
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cl:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 313
    :pswitch_3
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cm:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 310
    :pswitch_4
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cn:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 307
    :pswitch_5
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->ck:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 304
    :pswitch_6
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cj:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 301
    :pswitch_7
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->ci:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 298
    :pswitch_8
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cg:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 295
    :pswitch_9
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->ch:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 292
    :pswitch_a
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->cf:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static c(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aJ:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    return-object v0

    .line 245
    :cond_0
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "REQUEST_ERROR_CONNECTION_TIMED_OUT"

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aI:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "ERR_NAME_NOT_RESOLVED"

    .line 248
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aL:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v0, "ERR_INVALID_URL"

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ERR_DISALLOWED_URL_SCHEME"

    .line 251
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ERR_UNKNOWN_URL_SCHEME"

    .line 252
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 256
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aJ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    return-object v0

    .line 253
    :cond_4
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aH:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/lang/Throwable;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 339
    :cond_0
    invoke-static {p0}, Lo/aeK;->a(Ljava/lang/Throwable;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 343
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lo/aeK;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 346
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 347
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 348
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 349
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.netflix.msl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-class v1, Lo/mB;

    .line 350
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-class v1, Lo/mF;

    .line 351
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method
