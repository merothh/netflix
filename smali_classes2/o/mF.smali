.class public Lo/mF;
.super Lo/mH;
.source ""


# instance fields
.field private m:Lcom/netflix/msl/util/MslContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/mN;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lo/mH;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/mN;)V

    return-void
.end method

.method private a(Ljava/util/List;JLcom/netflix/android/org/json/JSONObject;)Lo/ahV;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ahV;",
            ">;J",
            "Lcom/netflix/android/org/json/JSONObject;",
            ")",
            "Lo/ahV;"
        }
    .end annotation

    const-string v0, "mtSerialNumber"

    const-wide/16 v1, -0x1

    .line 467
    invoke-virtual {p4, v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 468
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "nf_msl_store_full"

    const-string v4, "Check if service token exist for given userIdToken serial number: %d and master token serial number: %d"

    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "serviceToken"

    .line 470
    invoke-virtual {p4, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lo/mF;->b(Ljava/lang/String;)Lo/ahp;

    move-result-object v6

    .line 471
    new-instance p4, Lo/ahV;

    iget-object v5, p0, Lo/mF;->m:Lcom/netflix/msl/util/MslContext;

    invoke-direct {p0, v0, v1}, Lo/mF;->c(J)Lo/ahS;

    move-result-object v7

    invoke-direct {p0, p2, p3}, Lo/mF;->d(J)Lo/ahX;

    move-result-object v8

    const/4 p2, 0x0

    move-object v9, p2

    check-cast v9, Lo/agM;

    move-object v4, p4

    invoke-direct/range {v4 .. v9}, Lo/ahV;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;Lo/ahX;Lo/agM;)V

    .line 472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/ahV;

    .line 473
    invoke-virtual {p2, p4}, Lo/ahV;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "Double bound service token found, use it!"

    .line 474
    invoke-static {v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    const-string p1, "Double bound service token not found, this should not happen! Use newly created service token!"

    .line 479
    invoke-static {v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4
.end method

.method private b(Ljava/lang/String;)Lo/ahp;
    .locals 1

    .line 490
    invoke-static {p1}, Lo/adl;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 491
    iget-object v0, p0, Lo/mF;->j:Lo/mN;

    invoke-virtual {v0, p1}, Lo/mN;->c([B)Lo/ahp;

    move-result-object p1

    return-object p1
.end method

.method private c(J)Lo/ahS;
    .locals 5

    .line 431
    iget-object v0, p0, Lo/mF;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ahS;

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1}, Lo/ahS;->b()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "nf_msl_store_full"

    const-string v2, "load:: UserId %s, netflixID %s, Secure Netflix ID: %s"

    .line 321
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 323
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "UserID is empty! It should NOT happen!"

    .line 324
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 328
    :cond_0
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "NetflixID is empty! It should NOT happen!"

    if-eqz v0, :cond_1

    .line 329
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 333
    :cond_1
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 338
    :cond_2
    iget-object v0, p0, Lo/mF;->i:Ljava/util/Map;

    new-instance v1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-direct {v1, p1, p2, p3}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d(J)Lo/ahX;
    .locals 5

    .line 448
    iget-object v0, p0, Lo/mF;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ahX;

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v1}, Lo/ahX;->b()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 14

    .line 352
    iget-object v0, p0, Lo/mF;->c:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "useragent_current_profile_id"

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "nf_msl_store_full"

    if-eqz v2, :cond_0

    const-string p1, "recoverLastProfileCredentialsOnMslStoreLoadFailure::No profile ID, user is not logged in, do NOT try to recover."

    .line 354
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v6, "recoverLastProfileCredentialsOnMslStoreLoadFailure::Current profile ID: %s, user is logged in, try to recover"

    .line 357
    invoke-static {v3, v6, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 365
    :try_start_0
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4, p1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cryptoContexts"

    .line 366
    invoke-virtual {v4, p1}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v6, "recoverLastProfileCredentialsOnMslStoreLoadFailure::Crypto contexts map found, size: %d"

    new-array v7, v2, [Ljava/lang/Object;

    .line 369
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v7, v1

    const/4 v6, 0x0

    .line 371
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 373
    invoke-virtual {p1, v6}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v8

    const-string v9, "masterToken"

    .line 374
    invoke-virtual {v8, v9}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lo/mF;->b(Ljava/lang/String;)Lo/ahp;

    move-result-object v8

    .line 375
    new-instance v9, Lo/ahS;

    iget-object v10, p0, Lo/mF;->m:Lcom/netflix/msl/util/MslContext;

    invoke-direct {v9, v10, v8}, Lo/ahS;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;)V

    if-eqz v7, :cond_1

    .line 376
    invoke-virtual {v9, v7}, Lo/ahS;->a(Lo/ahS;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    move-object v7, v9

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    const-string p1, "recoverLastProfileCredentialsOnMslStoreLoadFailure::Master token NOT found, can not complete restore path! Log user out!"

    .line 382
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p1, "userIdTokens"

    .line 392
    invoke-virtual {v4, p1}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v4, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: UserId tokens map found, size: %d"

    new-array v6, v2, [Ljava/lang/Object;

    .line 395
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v3, v4, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v4, 0x0

    .line 397
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 399
    invoke-virtual {p1, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    const-string v8, "userId"

    .line 400
    invoke-virtual {v6, v8}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "userIdToken"

    .line 401
    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lo/mF;->b(Ljava/lang/String;)Lo/ahp;

    move-result-object v9

    const-string v10, "mtSerialNumber"

    .line 402
    invoke-virtual {v6, v10}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 403
    invoke-virtual {v7}, Lo/ahS;->b()J

    move-result-wide v12

    cmp-long v6, v12, v10

    if-eqz v6, :cond_5

    const-string v6, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: master token serial number %d != than one found in user id token! "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 404
    invoke-virtual {v7}, Lo/ahS;->b()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v3, v6, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 408
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 409
    new-instance v1, Lo/ahX;

    iget-object p1, p0, Lo/mF;->m:Lcom/netflix/msl/util/MslContext;

    invoke-direct {v1, p1, v9, v7}, Lo/ahX;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;)V

    const-string p1, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: user id token found for profile %s, we should be able to attempt recovery! "

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 410
    invoke-static {v3, p1, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    if-eqz v1, :cond_a

    const-string p1, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: recovery data found, we will attempt recoveryfor %s "

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 416
    invoke-static {v3, p1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 417
    new-instance p1, Lo/zE$Activity;

    invoke-direct {p1, v0, v7, v1}, Lo/zE$Activity;-><init>(Ljava/lang/String;Lo/ahS;Lo/ahX;)V

    iput-object p1, p0, Lo/mF;->o:Lo/zE$Activity;

    goto :goto_4

    :cond_8
    const-string p1, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: UserId tokens map not found! Unable to recover, log user out!"

    .line 421
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    const-string p1, "recoverLastProfileCredentialsOnMslStoreLoadFailure::Crypto contexts map not found, can not complete restore path! Log user out!"

    .line 387
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: Failed to recover authorization data from MSL store: log user out!!!"

    .line 425
    invoke-static {v3, p1, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_a
    :goto_4
    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 4

    .line 497
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/repository/SecureStoreProvider;->b:Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/repository/SecureStoreProvider;->b()Lo/bx;

    move-result-object v0

    const-string v1, "cookies"

    invoke-interface {v0, v1}, Lo/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nf_msl_store_full"

    const-string v3, "Failed to load MSL store from secure store"

    .line 500
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private m()V
    .locals 8

    .line 284
    invoke-direct {p0}, Lo/mF;->k()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "nf_msl_store_full"

    if-eqz v1, :cond_0

    const-string v0, "loadCookies:: Cookies not found..."

    .line 286
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v3, "loadCookies:: MSL store found: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v1

    .line 292
    invoke-static {v2, v3, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    new-instance v3, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v3, v0}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v0, "loadCookies:: User authorization tokens map found, size: %d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 297
    invoke-virtual {v3}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v0, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    .line 299
    :goto_0
    invoke-virtual {v3}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 301
    invoke-virtual {v3, v0}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "userId"

    .line 303
    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "netflixID"

    .line 304
    invoke-virtual {v4, v6}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "secureNetflixID"

    .line 305
    invoke-virtual {v4, v7}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-direct {p0, v5, v6, v4}, Lo/mF;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "loadCookies:: Failed to load cookies..."

    .line 315
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return-void
.end method

.method private n()V
    .locals 27

    move-object/from16 v1, p0

    .line 102
    iget-object v0, v1, Lo/mF;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "nf_msl_store_json"

    invoke-static {v0, v3, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "nf_msl_store_full"

    if-eqz v0, :cond_0

    const-string v0, "loadMslStore:: MSL store not found..."

    .line 104
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v5, 0x0

    .line 114
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "cryptoContexts"

    .line 116
    invoke-virtual {v0, v6}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    const-string v8, "loadMslStore::Crypto contexts map found, size: %d"

    new-array v9, v7, [Ljava/lang/Object;

    .line 119
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v4, v8, v9}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v8, 0x0

    .line 121
    :goto_0
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 123
    invoke-virtual {v6, v8}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v9

    const-string v10, "masterToken"

    .line 124
    invoke-virtual {v9, v10}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lo/mF;->b(Ljava/lang/String;)Lo/ahp;

    move-result-object v10

    .line 125
    new-instance v11, Lo/ahS;

    iget-object v12, v1, Lo/mF;->m:Lcom/netflix/msl/util/MslContext;

    invoke-direct {v11, v12, v10}, Lo/ahS;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;)V

    .line 126
    iget-object v10, v1, Lo/mF;->m:Lcom/netflix/msl/util/MslContext;

    const-string v12, "cryptoContext"

    invoke-virtual {v9, v12}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v9

    invoke-static {v10, v9}, Lo/mK;->c(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lo/mK;

    move-result-object v9

    .line 127
    iget-object v10, v1, Lo/mF;->b:Ljava/util/Map;

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "loadMslStore::Crypto contexts map not found!"

    .line 135
    invoke-static {v4, v6}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v6, "userIdTokens"

    .line 139
    invoke-virtual {v0, v6}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v8, "mtSerialNumber"

    if-eqz v6, :cond_3

    :try_start_1
    const-string v9, "loadMslStore:: UserId tokens map found, size: %d"

    new-array v10, v7, [Ljava/lang/Object;

    .line 142
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v4, v9, v10}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v9, 0x0

    .line 144
    :goto_1
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 146
    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v10

    const-string v11, "userId"

    .line 147
    invoke-virtual {v10, v11, v2}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "userIdToken"

    .line 148
    invoke-virtual {v10, v12}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lo/mF;->b(Ljava/lang/String;)Lo/ahp;

    move-result-object v12

    .line 150
    invoke-virtual {v10, v8}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 151
    new-instance v10, Lo/ahX;

    iget-object v15, v1, Lo/mF;->m:Lcom/netflix/msl/util/MslContext;

    invoke-direct {v1, v13, v14}, Lo/mF;->c(J)Lo/ahS;

    move-result-object v13

    invoke-direct {v10, v15, v12, v13}, Lo/ahX;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;)V

    .line 157
    iget-object v12, v1, Lo/mF;->e:Ljava/util/Map;

    invoke-interface {v12, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "loadMslStore:: UserId tokens map not found!"

    .line 161
    invoke-static {v4, v6}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v6, "nonReplayableIds"

    .line 164
    invoke-virtual {v0, v6}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v9, "loadMslStore:: NonReplayableId map found, size: %d"

    new-array v10, v7, [Ljava/lang/Object;

    .line 167
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v4, v9, v10}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v9, 0x0

    .line 169
    :goto_2
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 171
    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v10

    .line 172
    invoke-virtual {v10, v8}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "nonReplayableId"

    .line 173
    invoke-virtual {v10, v12}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 179
    iget-object v12, v1, Lo/mF;->d:Ljava/util/Map;

    invoke-interface {v12, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    const-string v6, "loadMslStore:: NonReplayableId map not found!"

    .line 182
    invoke-static {v4, v6}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v6, "unboundServiceTokens"

    .line 185
    invoke-virtual {v0, v6}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v9, 0x0

    .line 192
    :goto_3
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 194
    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lo/mF;->b(Ljava/lang/String;)Lo/ahp;

    move-result-object v13

    .line 195
    new-instance v10, Lo/ahV;

    iget-object v12, v1, Lo/mF;->m:Lcom/netflix/msl/util/MslContext;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v2

    check-cast v16, Lo/agM;

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lo/ahV;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;Lo/ahX;Lo/agM;)V

    .line 196
    iget-object v11, v1, Lo/mF;->a:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    const-string v6, "loadMslStore:: UnboundServiceTokens set not found!"

    .line 203
    invoke-static {v4, v6}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v6, "mtServiceTokens"

    .line 206
    invoke-virtual {v0, v6}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v6

    .line 209
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v10, "uitSerialNumber"

    const-string v11, "serviceTokenSet"

    if-eqz v6, :cond_c

    :try_start_2
    const-string v12, "loadMslStore:: MasterTokenServiceToken map found, size: %d"

    new-array v13, v7, [Ljava/lang/Object;

    .line 213
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {v4, v12, v13}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v12, 0x0

    .line 215
    :goto_4
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_b

    .line 217
    invoke-virtual {v6, v12}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v13

    .line 218
    invoke-virtual {v13, v8}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 219
    invoke-virtual {v13, v11}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v13

    .line 220
    new-instance v15, Ljava/util/HashSet;

    invoke-virtual {v13}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v15, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 221
    iget-object v5, v1, Lo/mF;->f:Ljava/util/Map;

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 222
    :goto_5
    invoke-virtual {v13}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_a

    .line 224
    invoke-virtual {v13, v5}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v7

    const-string v2, "serviceToken"

    .line 225
    invoke-virtual {v7, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/mF;->b(Ljava/lang/String;)Lo/ahp;

    move-result-object v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v23, v3

    const-wide/16 v2, -0x1

    .line 227
    :try_start_3
    invoke-virtual {v7, v10, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 229
    new-instance v7, Lo/ahV;

    move-object/from16 v24, v6

    iget-object v6, v1, Lo/mF;->m:Lcom/netflix/msl/util/MslContext;

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Lo/mF;->c(J)Lo/ahS;

    move-result-object v20

    invoke-direct {v1, v2, v3}, Lo/mF;->d(J)Lo/ahX;

    move-result-object v21

    const/4 v2, 0x0

    move-object/from16 v22, v2

    check-cast v22, Lo/agM;

    move-object/from16 v17, v7

    move-object/from16 v18, v6

    invoke-direct/range {v17 .. v22}, Lo/ahV;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;Lo/ahS;Lo/ahX;Lo/agM;)V

    .line 230
    invoke-interface {v15, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v7}, Lo/ahV;->a()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v7}, Lo/ahV;->f()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 233
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v23

    move-object/from16 v6, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    goto :goto_5

    :cond_a
    move-object/from16 v23, v3

    move-object/from16 v24, v6

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_b
    move-object/from16 v23, v3

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    goto :goto_6

    :cond_c
    move-object/from16 v23, v3

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    const-string v2, "loadMslStore:: MasterTokenServiceToken map not found!"

    .line 242
    invoke-static {v4, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const-string v2, "uitServiceTokens"

    .line 245
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v2, "loadMslStore:: UserIdsServiceToken map found, size: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 248
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v4, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    .line 250
    :goto_7
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 252
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    move-object/from16 v5, v25

    .line 253
    invoke-virtual {v3, v5}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v7, v26

    .line 254
    invoke-virtual {v3, v7}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v3

    .line 255
    new-instance v8, Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 256
    iget-object v10, v1, Lo/mF;->h:Ljava/util/Map;

    invoke-interface {v10, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    .line 257
    :goto_8
    invoke-virtual {v3}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_e

    .line 259
    invoke-virtual {v3, v10}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v11

    .line 260
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v1, v9, v12, v13, v11}, Lo/mF;->a(Ljava/util/List;JLcom/netflix/android/org/json/JSONObject;)Lo/ahV;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 262
    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    goto :goto_7

    :cond_f
    const-string v0, "loadMslStore:: UserIdsServiceToken map not found!"

    .line 270
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string v0, "loadMslStore:: loaded."

    .line 273
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual/range {p0 .. p0}, Lo/mF;->l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v23, v3

    :goto_9
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "loadMslStore:: Failed to load MSL store: try restore..."

    .line 277
    invoke-static {v4, v0, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v2, v23

    .line 278
    invoke-direct {v1, v2}, Lo/mF;->e(Ljava/lang/String;)V

    :goto_a
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_msl_store_full"

    const-string v1, "init:: force clear cookies..."

    .line 95
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lo/mF;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 97
    invoke-virtual {p0}, Lo/mF;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/netflix/msl/util/MslContext;Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 71
    :try_start_0
    iput-object p1, p0, Lo/mF;->m:Lcom/netflix/msl/util/MslContext;

    if-eqz p2, :cond_0

    const-string p1, "nf_msl_store_full"

    const-string p2, "init:: force clear MSL store started."

    .line 75
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lo/mF;->b()V

    .line 77
    invoke-virtual {p0}, Lo/mF;->g()V

    const-string p1, "nf_msl_store_full"

    const-string p2, "init:: force clear MSL store done."

    .line 79
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "nf_msl_store_full"

    const-string p2, "load:: started."

    .line 82
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lo/mF;->n()V

    .line 85
    invoke-direct {p0}, Lo/mF;->m()V

    const-string p1, "nf_msl_store_full"

    const-string p2, "load:: done."

    .line 87
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 69
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MSL Context can not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method
