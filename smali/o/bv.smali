.class public final Lo/bv;
.super Lo/bt;
.source ""


# instance fields
.field private b:Lo/bA;

.field private e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lo/ds;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/bt;-><init>(Lo/ds;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 113
    monitor-exit p0

    return-object v0

    .line 116
    :cond_0
    :try_start_0
    iget-object v1, p0, Lo/bv;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    .line 118
    monitor-exit p0

    return-object v0

    .line 122
    :cond_1
    :try_start_1
    invoke-static {p1}, Lo/adl;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 123
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v1, "nf_secure_store_android"

    const-string v2, "Fail to get property!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 125
    invoke-static {v1, p1, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a()V
    .locals 2

    .line 41
    iget-object v0, p0, Lo/bv;->d:Lo/ds;

    invoke-static {v0}, Lo/bB;->c(Lo/ds;)Lo/bA;

    move-result-object v0

    iput-object v0, p0, Lo/bv;->b:Lo/bA;

    .line 43
    invoke-virtual {p0}, Lo/bv;->b()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lo/bv;->e:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v0, "nf_secure_store_android"

    const-string v1, "Secure store did NOT existed!"

    .line 52
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lo/bv;->e:Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method protected declared-synchronized b()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_secure_store"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 146
    monitor-exit p0

    return-object v2

    .line 151
    :cond_0
    :try_start_1
    invoke-static {v0}, Lo/adl;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    iget-object v1, p0, Lo/bv;->b:Lo/bA;

    invoke-interface {v1, v0}, Lo/bA;->d([B)[B

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "nf_secure_store_android"

    const-string v3, "Failed to load existing key store!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 155
    invoke-static {v1, v0, v3, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_secure_store"

    invoke-static {v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .line 163
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lo/adl;->c([B)Ljava/lang/String;

    move-result-object p2

    .line 66
    iget-object v1, p0, Lo/bv;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-static {p2, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "nf_secure_store_android"

    const-string v1, "Key %s value is not changed, do not save!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 69
    invoke-static {p2, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 73
    :cond_1
    :try_start_1
    iget-object v1, p0, Lo/bv;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    invoke-virtual {p0}, Lo/bv;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "nf_secure_store_android"

    const-string v1, "Fail to set property!"

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    invoke-static {p2, p1, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 61
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized e()V
    .locals 3

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lo/bv;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 175
    iget-object v1, p0, Lo/bv;->b:Lo/bA;

    invoke-interface {v1, v0}, Lo/bA;->e([B)[B

    move-result-object v0

    .line 176
    invoke-static {v0}, Lo/adl;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_secure_store"

    invoke-static {v1, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
