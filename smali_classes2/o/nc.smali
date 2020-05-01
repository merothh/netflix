.class public Lo/nc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zQ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nc$ActionBar;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/zQ$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/afJ;

.field private d:Lo/mw;

.field private final e:Lo/nh;


# direct methods
.method public constructor <init>(Lo/mw;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/nc;->b:Ljava/util/List;

    .line 74
    new-instance v0, Lo/nh;

    invoke-direct {v0}, Lo/nh;-><init>()V

    iput-object v0, p0, Lo/nc;->e:Lo/nh;

    .line 78
    iput-object p1, p0, Lo/nc;->d:Lo/mw;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lo/nc$ActionBar;
    .locals 6

    const-string v0, "error"

    const-string v1, "nf_safetynet"

    const/4 v2, 0x0

    .line 444
    :try_start_0
    invoke-static {p0}, Lo/nc;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "API response %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p0, v5, v2

    .line 445
    invoke-static {v1, v3, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 447
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 449
    new-instance p0, Lo/nc$ActionBar;

    invoke-direct {p0, v2, v2}, Lo/nc$ActionBar;-><init>(ZZ)V

    return-object p0

    .line 453
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "API response has error %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 454
    invoke-static {v1, v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "internal_error"

    .line 456
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Retry for internal error"

    .line 457
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance p0, Lo/nc$ActionBar;

    invoke-direct {p0, v4, v4}, Lo/nc$ActionBar;-><init>(ZZ)V

    return-object p0

    .line 459
    :cond_1
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Error empty, even if property exists..."

    .line 460
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance p0, Lo/nc$ActionBar;

    invoke-direct {p0, v2, v2}, Lo/nc$ActionBar;-><init>(ZZ)V

    return-object p0

    :cond_2
    const-string v0, "Retry for %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 463
    invoke-static {v1, v0, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 464
    new-instance p0, Lo/nc$ActionBar;

    invoke-direct {p0, v4, v2}, Lo/nc$ActionBar;-><init>(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Failed to extract payload..."

    .line 468
    invoke-static {v1, p0, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 469
    new-instance p0, Lo/nc$ActionBar;

    invoke-direct {p0, v2, v2}, Lo/nc$ActionBar;-><init>(ZZ)V

    return-object p0
.end method

.method private a(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 2

    .line 153
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleSafetyNetAttestation: Failed to get nonce, unable to execute attestation with server generated nonce, bailing! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/nc;->d(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p2, p1}, Lo/nh;->b(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 156
    invoke-direct {p0}, Lo/nc;->c()V

    .line 157
    invoke-direct {p0, v1}, Lo/nc;->d(Z)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "SafetyNet nonce received from server is null, bailing!"

    .line 163
    invoke-static {p1}, Lo/nc;->d(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p1}, Lo/nh;->g()V

    .line 165
    invoke-direct {p0}, Lo/nc;->c()V

    .line 166
    invoke-direct {p0, v1}, Lo/nc;->d(Z)V

    return-void

    .line 170
    :cond_1
    iget-object p1, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p1}, Lo/nh;->h()V

    .line 171
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "nf_safetynet"

    const-string v1, "Nonce received: %s"

    .line 173
    invoke-static {p2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    invoke-static {}, Lo/nc;->b()Lo/afO;

    move-result-object p2

    iput-object p2, p0, Lo/nc;->c:Lo/afJ;

    .line 176
    iget-object p2, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p2}, Lo/nh;->j()V

    .line 178
    new-instance p2, Lo/nc$4;

    invoke-direct {p2, p0}, Lo/nc$4;-><init>(Lo/nc;)V

    invoke-direct {p0, p1, p2}, Lo/nc;->a([BLo/zQ$StateListAnimator;)V

    return-void
.end method

.method static synthetic a(Lo/nc;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/nc;->c()V

    return-void
.end method

.method static synthetic a(Lo/nc;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lo/nc;->a(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/zQ$Activity;)V
    .locals 0

    invoke-static {p0}, Lo/nc;->g(Lo/zQ$Activity;)V

    return-void
.end method

.method private a([BLo/zQ$StateListAnimator;)V
    .locals 3

    .line 255
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->k(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "nf_safetynet"

    if-nez v0, :cond_0

    const-string p1, "Device does not support SafetyNet"

    .line 256
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-interface {p2}, Lo/zQ$StateListAnimator;->a()V

    return-void

    .line 261
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Getting Google SafetyNet client..."

    .line 262
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v0

    const-string v2, "Got Google SafetyNet client"

    .line 265
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lo/bE;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/safetynet/SafetyNetClient;->attest([BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 268
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 270
    new-instance v2, Lo/nc$5;

    invoke-direct {v2, p0, p1, p2}, Lo/nc$5;-><init>(Lo/nc;[BLo/zQ$StateListAnimator;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lo/nc$1;

    invoke-direct {v2, p0, p1, p2}, Lo/nc$1;-><init>(Lo/nc;[BLo/zQ$StateListAnimator;)V

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/ApiException;[BLo/zQ$StateListAnimator;)Z
    .locals 2

    .line 334
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    const/4 v0, 0x5

    const-string v1, "nf_safetynet"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    const-string p1, "Internal error..."

    .line 336
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_0
    invoke-direct {p0, p2, p3}, Lo/nc;->d([BLo/zQ$StateListAnimator;)Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "Not recoverable error..."

    .line 340
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private static b()Lo/afO;
    .locals 9

    .line 518
    new-instance v8, Lo/afO;

    const/16 v1, 0x1388

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/16 v6, 0x7530

    const v7, 0xea60

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/afO;-><init>(IDDII)V

    return-object v8
.end method

.method static synthetic b(Lo/nc;Ljava/lang/String;[BLo/zQ$StateListAnimator;)Lo/nc$ActionBar;
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lo/nc;->c(Ljava/lang/String;[BLo/zQ$StateListAnimator;)Lo/nc$ActionBar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/zQ$Activity;)V
    .locals 0

    invoke-static {p0}, Lo/nc;->e(Lo/zQ$Activity;)V

    return-void
.end method

.method private static synthetic b(Lo/zQ$Activity;Z)V
    .locals 0

    .line 376
    invoke-interface {p0, p1}, Lo/zQ$Activity;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lo/nc;->a()Z

    move-result v0

    const-string v1, "nf_safetynet"

    if-nez v0, :cond_0

    const-string p1, "SafetyNet is disabled"

    .line 102
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p1}, Lo/nh;->d()V

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {v0}, Lo/nh;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Device does not support SafetyNet"

    .line 108
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p1}, Lo/nh;->i()V

    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lo/nc;->d:Lo/mw;

    invoke-virtual {v0}, Lo/mw;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "MSL service is not yet ready, postpone..."

    .line 114
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "Skip check should we refresh attestation, go and refresh SF if it is not pending..."

    .line 119
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_3
    iget-object p1, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p1}, Lo/nh;->n()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "No need to refresh attestation yet, postpone..."

    .line 122
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_4
    :goto_0
    iget-object p1, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p1}, Lo/nh;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "SafetyNet attestation request is already pending, do nothing!"

    .line 128
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string p1, "Execute SafetyNet check"

    .line 132
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p1}, Lo/nh;->f()V

    .line 135
    new-instance p1, Lo/nl;

    new-instance v0, Lo/nc$2;

    invoke-direct {v0, p0}, Lo/nc$2;-><init>(Lo/nc;)V

    invoke-direct {p1, v0}, Lo/nl;-><init>(Lo/zQ$ActionBar;)V

    .line 142
    iget-object v0, p0, Lo/nc;->d:Lo/mw;

    invoke-virtual {v0, p1}, Lo/mw;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method private c(Ljava/lang/String;[BLo/zQ$StateListAnimator;)Lo/nc$ActionBar;
    .locals 1

    .line 324
    invoke-static {p1}, Lo/nc;->a(Ljava/lang/String;)Lo/nc$ActionBar;

    move-result-object p1

    .line 325
    iget-boolean v0, p1, Lo/nc$ActionBar;->e:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0, p2, p3}, Lo/nc;->d([BLo/zQ$StateListAnimator;)Z

    move-result p2

    iput-boolean p2, p1, Lo/nc$ActionBar;->e:Z

    :cond_0
    return-object p1
.end method

.method private c()V
    .locals 2

    .line 203
    new-instance v0, Lo/mZ;

    iget-object v1, p0, Lo/nc;->e:Lo/nh;

    invoke-direct {v0, v1}, Lo/mZ;-><init>(Lo/nh;)V

    invoke-static {v0}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .line 208
    iget-object v0, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {v0}, Lo/nh;->o()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "nf_safetynet"

    const-string v3, "Received attestation data from Google %s"

    .line 210
    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "handleSafetyNetAttestation::verified: attestation data empty! Unable to verify it!"

    .line 213
    invoke-static {p1}, Lo/nc;->d(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p1}, Lo/nh;->m()V

    .line 215
    invoke-direct {p0}, Lo/nc;->c()V

    .line 216
    invoke-direct {p0, v1}, Lo/nc;->d(Z)V

    return-void

    .line 220
    :cond_0
    new-instance v0, Lo/nw;

    new-instance v1, Lo/nc$3;

    invoke-direct {v1, p0}, Lo/nc$3;-><init>(Lo/nc;)V

    invoke-direct {v0, p1, v1}, Lo/nw;-><init>(Ljava/lang/String;Lo/zQ$TaskDescription;)V

    .line 242
    iget-object p1, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {p1}, Lo/nh;->k()V

    .line 243
    iget-object p1, p0, Lo/nc;->d:Lo/mw;

    invoke-virtual {p1, v0}, Lo/mw;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method private synthetic c([BLo/zQ$StateListAnimator;)V
    .locals 2

    const-string v0, "nf_safetynet"

    const-string v1, "Execute retry..."

    .line 358
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0, p1, p2}, Lo/nc;->a([BLo/zQ$StateListAnimator;)V

    return-void
.end method

.method static synthetic c(Lo/nc;Lcom/google/android/gms/common/api/ApiException;[BLo/zQ$StateListAnimator;)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lo/nc;->a(Lcom/google/android/gms/common/api/ApiException;[BLo/zQ$StateListAnimator;)Z

    move-result p0

    return p0
.end method

.method static declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lo/nc;

    monitor-enter v0

    :try_start_0
    const-string v1, "nf_safetynet"

    .line 248
    invoke-static {v1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v1, p0}, Lcom/netflix/cl/ExtLogger;->logError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic d(Lo/nc;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lo/nc;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lo/nc;[BLo/zQ$StateListAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/nc;->c([BLo/zQ$StateListAnimator;)V

    return-void
.end method

.method private d(Z)V
    .locals 5

    .line 370
    iget-object v0, p0, Lo/nc;->b:Ljava/util/List;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lo/nc;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 372
    monitor-exit v0

    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lo/nc;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/zQ$Activity;

    .line 376
    new-instance v3, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v3}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v4, Lo/ne;

    invoke-direct {v4, v2, p1}, Lo/ne;-><init>(Lo/zQ$Activity;Z)V

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 378
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d([BLo/zQ$StateListAnimator;)Z
    .locals 7

    const-string v0, "nf_safetynet"

    const-string v1, "Can we retry..."

    .line 350
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lo/nc;->c:Lo/afJ;

    invoke-interface {v1}, Lo/afJ;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lo/nc;->c:Lo/afJ;

    invoke-interface {v1}, Lo/afJ;->b()J

    move-result-wide v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    .line 355
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "We can retry again in %d [ms]. Posting to handler..."

    invoke-static {v0, v2, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 357
    iget-object v0, p0, Lo/nc;->d:Lo/mw;

    invoke-virtual {v0}, Lo/mw;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lo/nb;

    invoke-direct {v2, p0, p1, p2}, Lo/nb;-><init>(Lo/nc;[BLo/zQ$StateListAnimator;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_0
    return v2
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\."

    .line 477
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 480
    array-length v1, p0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 481
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :cond_1
    return-object v0
.end method

.method static synthetic e(Lo/nc;)Lo/nh;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/nc;->e:Lo/nh;

    return-object p0
.end method

.method static synthetic e(Lo/nc;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lo/nc;->d(Z)V

    return-void
.end method

.method private static synthetic e(Lo/zQ$Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 395
    invoke-interface {p0, v0}, Lo/zQ$Activity;->a(Z)V

    return-void
.end method

.method static synthetic e(Lo/zQ$Activity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lo/nc;->b(Lo/zQ$Activity;Z)V

    return-void
.end method

.method private static synthetic g(Lo/zQ$Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 393
    invoke-interface {p0, v0}, Lo/zQ$Activity;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 414
    invoke-static {}, Lo/hd;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c(Lo/zQ$Activity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 389
    iget-object v0, p0, Lo/nc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {v0}, Lo/nh;->a()Lo/zC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lo/ni;

    invoke-direct {v1, p1}, Lo/ni;-><init>(Lo/zQ$Activity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {v0}, Lo/nh;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lo/nf;

    invoke-direct {v1, p1}, Lo/nf;-><init>(Lo/zQ$Activity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .line 424
    iget-object v0, p0, Lo/nc;->e:Lo/nh;

    invoke-virtual {v0}, Lo/nh;->l()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public d(Lo/zQ$Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lo/nc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 96
    :try_start_0
    invoke-direct {p0, v0}, Lo/nc;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
