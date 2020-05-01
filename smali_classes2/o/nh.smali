.class Lo/nh;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:J = 0x5265c00L


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private final j:Z

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Ljava/lang/String;

.field private m:Lorg/json/JSONObject;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field private p:Lo/zC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->k(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lo/nh;->j:Z

    .line 85
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->a:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/nh;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/nh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    invoke-virtual {p0}, Lo/nh;->q()V

    return-void
.end method

.method private b(J)V
    .locals 2

    .line 330
    iget-wide v0, p0, Lo/nh;->g:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lo/nh;->i:J

    return-void
.end method

.method private c(J)V
    .locals 2

    .line 265
    iget-wide v0, p0, Lo/nh;->b:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lo/nh;->e:J

    return-void
.end method

.method private d(J)V
    .locals 6

    .line 174
    iget-wide v0, p0, Lo/nh;->c:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lo/nh;->d:J

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 175
    iget-wide v2, p0, Lo/nh;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_safetynet"

    const-string v4, "nonceRequestTimeInMs: %d"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v1, v0, [Ljava/lang/Object;

    .line 176
    iget-wide v4, p0, Lo/nh;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "nonceRequestStartTimeInMs: %d"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v0, v0, [Ljava/lang/Object;

    .line 177
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "now: %d"

    invoke-static {v2, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private static e(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "Unkown status"

    .line 317
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "Status code: "

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", message: "

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e(J)V
    .locals 2

    .line 258
    iget-wide v0, p0, Lo/nh;->f:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lo/nh;->h:J

    return-void
.end method

.method private p()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 545
    iput-wide v0, p0, Lo/nh;->h:J

    .line 546
    iput-wide v0, p0, Lo/nh;->f:J

    .line 548
    iput-wide v0, p0, Lo/nh;->d:J

    .line 549
    iput-wide v0, p0, Lo/nh;->c:J

    .line 551
    iput-wide v0, p0, Lo/nh;->b:J

    .line 552
    iput-wide v0, p0, Lo/nh;->e:J

    .line 554
    iput-wide v0, p0, Lo/nh;->g:J

    .line 555
    iput-wide v0, p0, Lo/nh;->i:J

    .line 557
    iget-object v0, p0, Lo/nh;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lo/nh;->l:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized r()V
    .locals 3

    monitor-enter p0

    .line 535
    :try_start_0
    invoke-virtual {p0}, Lo/nh;->s()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preference_safetynet"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "nf_safetynet"

    const-string v1, "Failed to save SafetyNet state to preferences."

    .line 539
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private t()V
    .locals 6

    const-string v0, "nf_safetynet"

    const/4 v1, 0x0

    .line 376
    :try_start_0
    iget-object v2, p0, Lo/nh;->p:Lo/zC;

    if-eqz v2, :cond_5

    .line 378
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    const-string v5, "UNKNOWN"

    .line 380
    invoke-virtual {v2, v5}, Lo/zC;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "SafetyNet supported, data exist, unknown attestation!"

    .line 382
    invoke-static {v0, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_0
    const-string v5, "BASIC_OS_VERIFIED"

    .line 384
    invoke-virtual {v2, v5}, Lo/zC;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "SafetyNet supported, data exist, device is rooted!"

    .line 386
    invoke-static {v0, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_1
    const-string v5, "VENDOR_COMPATIBILITY_TEST"

    .line 389
    invoke-virtual {v2, v5}, Lo/zC;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SafetyNet supported, data exist, device is not certified!"

    .line 391
    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_2
    const-string v2, "passed"

    .line 393
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    const-string v2, "completionTime"

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 397
    :cond_3
    iget-object v2, p0, Lo/nh;->p:Lo/zC;

    if-eqz v2, :cond_4

    const-string v2, "deviceAttestation"

    .line 398
    iget-object v4, p0, Lo/nh;->p:Lo/zC;

    invoke-virtual {v4}, Lo/zC;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    :cond_4
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    const-string v4, "preference_cap_safetynet"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "saveSafetyNetCapability saved"

    .line 401
    invoke-static {v0, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Failed to create SafetyNetCapability"

    .line 404
    invoke-static {v0, v2, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lo/zC;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/nh;->p:Lo/zC;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_safetynet"

    const-string v1, "transitionToFailedVerifyMetadataRequest..."

    .line 341
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lo/nh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 345
    invoke-direct {p0, v0, v1}, Lo/nh;->b(J)V

    .line 346
    invoke-direct {p0, v0, v1}, Lo/nh;->e(J)V

    .line 348
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->k:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 349
    iget-object v0, p0, Lo/nh;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 350
    invoke-static {p1}, Lo/nh;->e(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/nh;->l:Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Lo/nh;->r()V

    .line 352
    invoke-direct {p0}, Lo/nh;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .line 524
    :try_start_0
    iget-object v0, p0, Lo/nh;->p:Lo/zC;

    if-eqz v0, :cond_0

    const-string v0, "deviceAttestation"

    .line 525
    iget-object v1, p0, Lo/nh;->p:Lo/zC;

    invoke-virtual {v1}, Lo/zC;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nf_safetynet"

    const-string v3, "Failed to add attestation to JSON object."

    .line 528
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-object p1
.end method

.method public b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "nf_safetynet"

    const-string v1, "transitionToFailedToGetNonce..."

    .line 187
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 190
    invoke-direct {p0, v0, v1}, Lo/nh;->e(J)V

    .line 191
    invoke-direct {p0, v0, v1}, Lo/nh;->d(J)V

    .line 193
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->h:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 194
    iget-object v0, p0, Lo/nh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    iget-object v0, p0, Lo/nh;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 196
    invoke-static {p1}, Lo/nh;->e(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/nh;->l:Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Lo/nh;->r()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lo/nh;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized c(Lo/zC;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_safetynet"

    const-string v1, "transitionToVerifyMetadataSuccess..."

    .line 360
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lo/nh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 364
    invoke-direct {p0, v2, v3}, Lo/nh;->b(J)V

    .line 365
    invoke-direct {p0, v2, v3}, Lo/nh;->e(J)V

    .line 367
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->r:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 368
    iput-object p1, p0, Lo/nh;->p:Lo/zC;

    .line 369
    iget-object p1, p0, Lo/nh;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 370
    invoke-direct {p0}, Lo/nh;->t()V

    .line 371
    invoke-direct {p0}, Lo/nh;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lo/nh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-direct {p0}, Lo/nh;->p()V

    .line 147
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->c:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 148
    invoke-direct {p0}, Lo/nh;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "nf_safetynet"

    const-string v4, "transitionToFailedMetadataFromGoogle, error %s"

    .line 288
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 289
    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->i:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v1, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 290
    iget-object v1, p0, Lo/nh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 293
    invoke-direct {p0, v1, v2}, Lo/nh;->c(J)V

    .line 294
    invoke-direct {p0, v1, v2}, Lo/nh;->e(J)V

    .line 296
    iget-object v1, p0, Lo/nh;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 297
    iput-object p1, p0, Lo/nh;->l:Ljava/lang/String;

    .line 298
    invoke-direct {p0}, Lo/nh;->r()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lo/nh;->j:Z

    return v0
.end method

.method public declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_safetynet"

    const-string v1, "transitionToGetNonce..."

    .line 164
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lo/nh;->p()V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    iput-wide v0, p0, Lo/nh;->f:J

    .line 168
    iput-wide v0, p0, Lo/nh;->c:J

    .line 169
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->e:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 170
    iget-object v0, p0, Lo/nh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    invoke-direct {p0}, Lo/nh;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .locals 2

    const-string v0, "nf_safetynet"

    const-string v1, "transitionToReceivedEmptyNonce..."

    .line 205
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 208
    invoke-direct {p0, v0, v1}, Lo/nh;->e(J)V

    .line 209
    invoke-direct {p0, v0, v1}, Lo/nh;->d(J)V

    .line 211
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 212
    iget-object v0, p0, Lo/nh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    iget-object v0, p0, Lo/nh;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    invoke-direct {p0}, Lo/nh;->r()V

    return-void
.end method

.method public declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_safetynet"

    const-string v1, "transitionToReceivedNonce..."

    .line 222
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 224
    invoke-direct {p0, v0, v1}, Lo/nh;->d(J)V

    .line 225
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->j:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 226
    invoke-direct {p0}, Lo/nh;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_safetynet"

    const-string v1, "transitionToNotSupported..."

    .line 152
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lo/nh;->p()V

    .line 154
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 155
    invoke-direct {p0}, Lo/nh;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_safetynet"

    const-string v1, "transitionToGetMetadataFromGoogle..."

    .line 234
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/nh;->b:J

    .line 236
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->g:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 237
    invoke-direct {p0}, Lo/nh;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_safetynet"

    const-string v1, "transitionToVerifyMetadata..."

    .line 306
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/nh;->g:J

    .line 308
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 309
    invoke-direct {p0}, Lo/nh;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "nf_safetynet"

    const/4 v1, 0x0

    .line 410
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preference_cap_safetynet"

    invoke-static {v2, v3, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "getSafetyNetCapability is null"

    .line 412
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 416
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to getSafetyNetCapability"

    .line 419
    invoke-static {v0, v2, v4, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1
.end method

.method public m()V
    .locals 2

    const-string v0, "nf_safetynet"

    const-string v1, "transitionToReceivedEmpyMetadataFromGoogle..."

    .line 245
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->l:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 247
    iget-object v0, p0, Lo/nh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 250
    invoke-direct {p0, v0, v1}, Lo/nh;->c(J)V

    .line 251
    invoke-direct {p0, v0, v1}, Lo/nh;->e(J)V

    .line 253
    iget-object v0, p0, Lo/nh;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 254
    invoke-direct {p0}, Lo/nh;->r()V

    return-void
.end method

.method public n()Z
    .locals 8

    .line 426
    iget-boolean v0, p0, Lo/nh;->j:Z

    const/4 v1, 0x0

    const-string v2, "nf_safetynet"

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lo/nh;->p:Lo/zC;

    if-eqz v0, :cond_0

    const-string v0, "Device does not support GPS, but it was attested in past! Not expected!"

    .line 430
    invoke-static {v0}, Lo/nc;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Amazon or non Google certified device, nothing to refresh"

    .line 432
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    .line 437
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lo/nh;->a:J

    sub-long/2addr v3, v5

    .line 438
    iget-wide v5, p0, Lo/nh;->f:J

    const/4 v0, 0x1

    cmp-long v7, v5, v3

    if-gtz v7, :cond_2

    const-string v1, "It is more than 24h since we refreshed attestation, go for it!"

    .line 439
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const-string v3, "It is less than 24h since we tried to get attestation, check if we actually succeeded."

    .line 442
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v3, p0, Lo/nh;->p:Lo/zC;

    if-nez v3, :cond_3

    const-string v1, "It is less than 24h since we tried to get attestation, but we failed to receive attestation, try again."

    .line 444
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const-string v0, "It is less than 24h since we refreshed attestation, no need yet."

    .line 447
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public o()V
    .locals 2

    const-string v0, "nf_safetynet"

    const-string v1, "transitionToReceivedMetadataFromGoogle..."

    .line 276
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->l:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 279
    invoke-direct {p0, v0, v1}, Lo/nh;->c(J)V

    .line 280
    invoke-direct {p0}, Lo/nh;->r()V

    return-void
.end method

.method declared-synchronized q()V
    .locals 4

    monitor-enter p0

    .line 458
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preference_safetynet"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "nf_safetynet"

    const-string v1, "SafetyNet Attestation never done on this device."

    .line 460
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 464
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 465
    iput-object v1, p0, Lo/nh;->m:Lorg/json/JSONObject;

    const-string v0, "startTimeInMs"

    .line 466
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/nh;->f:J

    const-string v0, "processTimeInMs"

    .line 467
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/nh;->h:J

    const-string v0, "nonceRequestTimeInMs"

    .line 468
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/nh;->d:J

    const-string v0, "attestationRequestTimeInMs"

    .line 469
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/nh;->e:J

    const-string v0, "verificationRequestTimeInMs"

    .line 470
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/nh;->i:J

    .line 472
    invoke-virtual {p0}, Lo/nh;->l()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "deviceAttestation"

    .line 473
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    new-instance v2, Lo/zC;

    const-string v3, "deviceAttestation"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, v0}, Lo/zC;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lo/nh;->p:Lo/zC;

    :cond_1
    const-string v0, "state"

    .line 477
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "state"

    .line 478
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    move-result-object v0

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    goto :goto_0

    .line 480
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->b:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    iput-object v0, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    :goto_0
    const-string v0, "error"

    .line 483
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/nh;->l:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "nf_safetynet"

    const-string v2, "Failed to save SafetyNet state to preferences."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 486
    invoke-static {v1, v0, v2, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 492
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 4

    .line 498
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "startTimeInMs"

    .line 499
    iget-wide v2, p0, Lo/nh;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "processTimeInMs"

    .line 500
    iget-wide v2, p0, Lo/nh;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "nonceRequestTimeInMs"

    .line 501
    iget-wide v2, p0, Lo/nh;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "attestationRequestTimeInMs"

    .line 502
    iget-wide v2, p0, Lo/nh;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "verificationRequestTimeInMs"

    .line 503
    iget-wide v2, p0, Lo/nh;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 505
    iget-object v1, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "state"

    if-eqz v1, :cond_0

    .line 506
    :try_start_1
    iget-object v1, p0, Lo/nh;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 508
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->b:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "supported"

    .line 510
    iget-boolean v2, p0, Lo/nh;->j:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 512
    iget-object v1, p0, Lo/nh;->l:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "error"

    .line 513
    iget-object v2, p0, Lo/nh;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nf_safetynet"

    const-string v3, "Failed to create SafetyNet state to JSON object."

    .line 517
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    return-object v0
.end method
