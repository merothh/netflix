.class public Lo/cG;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/cz;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cG$StateListAnimator;
    }
.end annotation


# instance fields
.field private A:Lo/cF;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Lo/hy;

.field private F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private G:Z

.field private H:Lo/sT;

.field private I:Landroid/content/BroadcastReceiver;

.field private final J:Ljava/lang/Runnable;

.field private K:Lcom/netflix/mediaclient/media/VideoResolutionRange;

.field private final L:Ljava/lang/Runnable;

.field private final M:Lo/cR;

.field private final N:Lo/cO;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/cG$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/cG$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Landroid/content/Context;

.field private final e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

.field private f:Lo/cH;

.field private g:Lo/ds;

.field private h:Lo/cX;

.field private i:Lo/cI;

.field private j:Lcom/netflix/mediaclient/android/app/Status;

.field private k:Lo/cK;

.field private l:Lo/afK;

.field private m:Lo/cA;

.field private n:Lo/cL;

.field private o:Lo/cv;

.field private p:Z

.field private q:Lo/cP;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lo/cN;

.field private u:Lo/cE;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V
    .locals 4

    .line 225
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/cG;->a:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/cG;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lo/cG;->c:Z

    const/4 v1, -0x1

    .line 187
    iput v1, p0, Lo/cG;->v:I

    const/4 v1, 0x0

    .line 188
    iput-object v1, p0, Lo/cG;->w:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lo/cG;->y:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    .line 193
    iput-boolean v0, p0, Lo/cG;->B:Z

    .line 194
    iput-boolean v0, p0, Lo/cG;->C:Z

    .line 212
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lo/cG;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 979
    new-instance v1, Lo/cG$10;

    invoke-direct {v1, p0}, Lo/cG$10;-><init>(Lo/cG;)V

    iput-object v1, p0, Lo/cG;->L:Ljava/lang/Runnable;

    .line 989
    new-instance v1, Lo/cG$7;

    invoke-direct {v1, p0}, Lo/cG$7;-><init>(Lo/cG;)V

    iput-object v1, p0, Lo/cG;->J:Ljava/lang/Runnable;

    .line 1320
    new-instance v1, Lo/cG$8;

    invoke-direct {v1, p0}, Lo/cG$8;-><init>(Lo/cG;)V

    iput-object v1, p0, Lo/cG;->N:Lo/cO;

    .line 1363
    new-instance v1, Lo/cG$1;

    invoke-direct {v1, p0}, Lo/cG$1;-><init>(Lo/cG;)V

    iput-object v1, p0, Lo/cG;->M:Lo/cR;

    .line 226
    invoke-static {p1}, Lo/adi;->e(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lo/cG;->v:I

    .line 227
    iput-object p2, p0, Lo/cG;->e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Object;

    .line 228
    iget v2, p0, Lo/cG;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "nf_configurationagent"

    const-string v3, "Current app version code=%d"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 230
    invoke-static {p1}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/cG;->w:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lo/cG;->w:Ljava/lang/String;

    aput-object v1, p2, v0

    const-string v1, "Current softwareVersion=%s"

    invoke-static {v2, v1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 233
    new-instance p2, Lo/cF;

    iget v1, p0, Lo/cG;->v:I

    invoke-static {p1}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lo/dj;->n()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v1, p1, v2, v3}, Lo/cF;-><init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lo/cG;->A:Lo/cF;

    .line 234
    new-instance p2, Lo/cH;

    invoke-direct {p2, p1}, Lo/cH;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/cG;->f:Lo/cH;

    .line 236
    new-instance p2, Lo/cv;

    invoke-direct {p2, p1}, Lo/cv;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/cG;->o:Lo/cv;

    .line 237
    new-instance p2, Lo/cX;

    invoke-direct {p2, p1}, Lo/cX;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/cG;->h:Lo/cX;

    .line 238
    invoke-static {}, Lo/fO;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lo/gF;->a:Lo/gF$StateListAnimator;

    .line 239
    invoke-virtual {p2}, Lo/gF$StateListAnimator;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 240
    new-instance p2, Lo/cw;

    invoke-direct {p2, p1}, Lo/cw;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/cG;->k:Lo/cK;

    goto :goto_0

    .line 242
    :cond_0
    new-instance p2, Lo/cx;

    invoke-direct {p2, p1}, Lo/cx;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/cG;->k:Lo/cK;

    .line 244
    :goto_0
    new-instance p2, Lo/cP;

    invoke-direct {p2, p1}, Lo/cP;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/cG;->q:Lo/cP;

    .line 245
    new-instance p2, Lo/cN;

    invoke-direct {p2, p1}, Lo/cN;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/cG;->t:Lo/cN;

    .line 246
    new-instance p2, Lo/cL;

    invoke-direct {p2, p1}, Lo/cL;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/cG;->n:Lo/cL;

    .line 247
    new-instance p2, Lo/cA;

    invoke-direct {p2, p1}, Lo/cA;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/cG;->m:Lo/cA;

    .line 248
    new-instance p2, Lo/afK;

    invoke-direct {p2, p1}, Lo/afK;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/cG;->l:Lo/afK;

    .line 249
    iput-object p1, p0, Lo/cG;->d:Landroid/content/Context;

    const-string p2, "offline_blaclisted_device_override"

    .line 250
    invoke-static {p1, p2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lo/cG;->G:Z

    return-void
.end method

.method static synthetic a(Lo/cG;)Lo/cH;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/cG;->f:Lo/cH;

    return-object p0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "deviceConfig"

    const/4 v1, 0x0

    .line 1051
    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1052
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private aH()V
    .locals 3

    .line 295
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-interface {v0}, Lo/bO;->i()V

    .line 296
    invoke-virtual {p0}, Lo/cG;->aJ()Z

    move-result v0

    const-string v1, "nf_configurationagent"

    if-eqz v0, :cond_1

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 299
    invoke-virtual {p0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/cB;->d(Landroid/content/Context;)Lo/cB;

    move-result-object v0

    iput-object v0, p0, Lo/cG;->g:Lo/ds;

    .line 304
    iget-object v0, p0, Lo/cG;->g:Lo/ds;

    if-nez v0, :cond_0

    const-string v0, "Unable to use pre cached ESN, calculate ESN..."

    .line 305
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/Esn;

    iget-object v2, p0, Lo/cG;->g:Lo/ds;

    invoke-interface {v2}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/Esn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 308
    invoke-direct {p0}, Lo/cG;->aK()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "Use calculated ESN..."

    .line 313
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0}, Lo/cG;->aP()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 315
    invoke-direct {p0}, Lo/cG;->aO()V

    if-eqz v0, :cond_2

    const-string v2, "Failed to calculate ESN, report failure during service startup!"

    .line 317
    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0, v0}, Lo/cG;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    return-void
.end method

.method private aK()V
    .locals 4

    const-string v0, "nf_configurationagent"

    const-string v1, "Using cached ESN..."

    .line 324
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lo/cG;->g:Lo/ds;

    invoke-interface {v0}, Lo/ds;->i()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    invoke-static {v0}, Lo/dd;->b(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;)V

    .line 326
    iget-object v0, p0, Lo/cG;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 328
    invoke-virtual {p0}, Lo/cG;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/cG$3;

    invoke-direct {v1, p0}, Lo/cG$3;-><init>(Lo/cG;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    invoke-direct {p0}, Lo/cG;->aO()V

    .line 336
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/cG;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private aM()V
    .locals 2

    .line 625
    invoke-virtual {p0}, Lo/cG;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/cG$2;

    invoke-direct {v1, p0}, Lo/cG$2;-><init>(Lo/cG;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private aN()V
    .locals 7

    const-string v0, "nf_configurationagent"

    .line 427
    invoke-virtual {p0}, Lo/cG;->ar()Z

    move-result v1

    :try_start_0
    const-string v2, "::init createCryptoInstance "

    .line 429
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 431
    iget-object v4, p0, Lo/cG;->d:Landroid/content/Context;

    iget-object v5, p0, Lo/cG;->e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    new-instance v6, Lo/cG$5;

    invoke-direct {v6, p0, v2, v3, v1}, Lo/cG$5;-><init>(Lo/cG;JZ)V

    invoke-static {v4, v5, p0, v6}, Lo/dd;->b(Landroid/content/Context;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;Lo/cz;Lo/dc$StateListAnimator;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "::init: Failed to create MSL crypto registry"

    .line 504
    invoke-static {v0, v2, v4, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 505
    sget-object v0, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p0, v0, v1}, Lo/cG;->e(Lcom/netflix/mediaclient/android/app/Status;Z)V

    :goto_0
    return-void
.end method

.method private aO()V
    .locals 4

    .line 342
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/Chipset;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/cG;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/cG;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/Chipset;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    return-void
.end method

.method private aP()Lcom/netflix/mediaclient/android/app/Status;
    .locals 6

    const-string v0, "nf_configurationagent"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 347
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 348
    iget-object v3, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v3, p0}, Lo/dp;->d(Landroid/content/Context;Lo/cz;)Lo/ds;

    move-result-object v3

    iput-object v3, p0, Lo/cG;->g:Lo/ds;

    .line 349
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v4, Lcom/netflix/cl/model/context/Esn;

    iget-object v5, p0, Lo/cG;->g:Lo/ds;

    invoke-interface {v5}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/netflix/cl/model/context/Esn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1NotSupportedAfterOsUpgradeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/media/MediaDrmResetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/media/MediaDrm$MediaDrmStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/mediaclient/service/configuration/esn/WidevineNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1NotSupportedWhenExpectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-direct {p0}, Lo/cG;->aN()V

    return-object v1

    :catchall_0
    move-exception v0

    .line 379
    iget-object v1, p0, Lo/cG;->e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->ai:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 380
    invoke-virtual {p0}, Lo/cG;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object v0

    const-string v1, "DRM_FAILURE_CDM_GENERIC_ERROR"

    invoke-interface {v0, v1}, Lo/zz;->c(Ljava/lang/String;)V

    .line 381
    sget-object v0, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0

    :catch_0
    move-exception v0

    .line 377
    invoke-direct {p0, v0}, Lo/cG;->b(Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1NotSupportedWhenExpectedException;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 375
    invoke-direct {p0, v0}, Lo/cG;->b(Lcom/netflix/mediaclient/service/configuration/esn/WidevineNotSupportedException;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MediaDrmStateException:"

    .line 369
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 370
    iget-object v0, p0, Lo/cG;->e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->aj:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {v0, v2, v3, v1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 371
    invoke-virtual {p0}, Lo/cG;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object v0

    const-string v1, "DRM_FAILURE_MEDIADRM_STATE_EXCEPTION"

    invoke-interface {v0, v1}, Lo/zz;->c(Ljava/lang/String;)V

    .line 372
    sget-object v0, Lo/LegacyErrorStrings;->B:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0

    :catch_3
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MediaDrmResetException:"

    .line 363
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 364
    iget-object v0, p0, Lo/cG;->e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->ay:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {v0, v2, v3, v1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 365
    invoke-virtual {p0}, Lo/cG;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object v0

    const-string v1, "DRM_FAILURE_MEDIADRM_RESET"

    invoke-interface {v0, v1}, Lo/zz;->c(Ljava/lang/String;)V

    .line 366
    sget-object v0, Lo/LegacyErrorStrings;->D:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0

    :catch_4
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "WidevineL1NotSupportedAfterOsUpgradeException:"

    .line 357
    invoke-static {v0, v3, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 358
    iget-object v0, p0, Lo/cG;->e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->cG:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {v0, v2, v3, v1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 359
    invoke-virtual {p0}, Lo/cG;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object v0

    const-string v1, "DRM_FAILURE_OS_UPGRADE"

    invoke-interface {v0, v1}, Lo/zz;->c(Ljava/lang/String;)V

    .line 360
    sget-object v0, Lo/LegacyErrorStrings;->R:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0

    :catch_5
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to create ESN"

    .line 354
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 355
    sget-object v0, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0
.end method

.method private aQ()Z
    .locals 2

    .line 551
    iget-object v0, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "nf_configurationagent"

    const-string v1, "Unable to get PackageManager! This should NOT happen!"

    .line 553
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "android.hardware.microphone"

    .line 557
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private aR()V
    .locals 0

    return-void
.end method

.method private aS()V
    .locals 2

    const-string v0, "nf_configurationagent"

    const-string v1, "Check if we should report ad id via runnable"

    .line 999
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {p0}, Lo/cG;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "CL is not available!"

    .line 1002
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1006
    :cond_0
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->h()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "AD logger is not available!"

    .line 1008
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1012
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->d:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;->c(Ljava/lang/String;)V

    return-void
.end method

.method private aT()V
    .locals 2

    .line 1039
    iget-object v0, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lo/cG;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "nf_configurationagent"

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->O()V

    const-string v0, "Device Config & Streaming Config in cache... proceed!"

    .line 1042
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-direct {p0}, Lo/cG;->aH()V

    goto :goto_0

    :cond_0
    const-string v0, "Need to fetch device config on app start "

    .line 1045
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-direct {p0}, Lo/cG;->aV()V

    :goto_0
    return-void
.end method

.method private aU()Z
    .locals 1

    .line 1485
    iget-object v0, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/cI;->e(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->a()Z

    move-result v0

    return v0
.end method

.method private aV()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1056
    sget-object v1, Lo/hw;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/hw;->f:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo/cG$6;

    invoke-direct {v1, p0}, Lo/cG$6;-><init>(Lo/cG;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lo/cG;->d(Lo/zX;Ljava/util/List;Lo/cJ;)V

    return-void
.end method

.method private aX()V
    .locals 0

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1NotSupportedWhenExpectedException;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_configurationagent"

    const-string v2, "WidevineL1NotSupportedWhenExpectedException:"

    .line 394
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 395
    sget-object p1, Lo/LegacyErrorStrings;->ap:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/service/configuration/esn/WidevineNotSupportedException;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_configurationagent"

    const-string v2, "WidevineNotSupportedException:"

    .line 400
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 402
    invoke-static {}, Lo/adU;->g()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "Widevine is supported, but plugin is in bad state, start DRM recovery workflow"

    .line 404
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p1, p0, Lo/cG;->e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->cK:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p1, v1, v2, v0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 406
    sget-object p1, Lo/LegacyErrorStrings;->ak:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object p1

    .line 408
    :cond_0
    invoke-virtual {p0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lo/adU;->d(Landroid/content/Context;Lo/cz;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Widevine not supported, but Widevine was used before, we may be able to recover"

    .line 410
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object p1, p0, Lo/cG;->e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->cx:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p1, v1, v2, v0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 412
    invoke-virtual {p0}, Lo/cG;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object p1

    const-string v0, "MSL_LEGACY_CRYPTO_BUT_USED_WIDEVINE_BEFORE"

    invoke-interface {p1, v0}, Lo/zz;->c(Ljava/lang/String;)V

    .line 413
    sget-object p1, Lo/LegacyErrorStrings;->P:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object p1

    :cond_1
    const-string p1, "Widevine not supported, never used before, we will not be able to recover"

    .line 416
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lo/cG;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object p1

    const-string v0, "MSL_LEGACY_CRYPTO"

    invoke-interface {p1, v0}, Lo/zz;->c(Ljava/lang/String;)V

    .line 418
    sget-object p1, Lo/LegacyErrorStrings;->O:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object p1
.end method

.method static synthetic b(Lo/cG;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/cG;->aP()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lo/cG;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic b(Lo/cG;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lo/cG;->c:Z

    return p1
.end method

.method static synthetic c(Lo/cG;)Landroid/content/Context;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/cG;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lo/cG;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private c(Lo/zX;ZLo/cJ;)V
    .locals 2

    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lo/cG;->c:Z

    .line 680
    new-instance v0, Lo/cG$4;

    invoke-direct {v0, p0, p3, p2}, Lo/cG$4;-><init>(Lo/cG;Lo/cJ;Z)V

    .line 694
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 696
    invoke-virtual {p0}, Lo/cG;->H()Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    invoke-virtual {p0, p3}, Lo/cG;->a(Ljava/util/List;)Ljava/util/List;

    .line 700
    :cond_0
    invoke-static {p3}, Lo/hw;->e(Ljava/util/List;)Ljava/util/List;

    if-eqz p2, :cond_1

    .line 702
    invoke-virtual {p0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lo/hw;->c(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 704
    :cond_1
    invoke-virtual {p0, p3}, Lo/cG;->c(Ljava/util/List;)Ljava/util/List;

    .line 705
    invoke-static {p3}, Lo/hw;->b(Ljava/util/List;)Ljava/util/List;

    .line 708
    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lo/cG;->d(Lo/zX;Ljava/util/List;Lo/cJ;)V

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    if-eqz p1, :cond_3

    .line 1095
    iget-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1099
    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldForceLegacyCrypto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    sget-object p1, Lo/LegacyErrorStrings;->O:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object p1

    .line 1103
    :cond_1
    iget-object p1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isBlacklisted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1104
    sget-object p1, Lo/LegacyErrorStrings;->p:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object p1

    .line 1107
    :cond_2
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object p1

    .line 1096
    :cond_3
    :goto_0
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object p1
.end method

.method static synthetic d(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 113
    iput-object p1, p0, Lo/cG;->j:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method static synthetic d(Lo/cG;Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/cG;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lo/cG;)Ljava/util/List;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/cG;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/cG;->e(Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method

.method private d(Lo/zX;Ljava/util/List;Lo/cJ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/zX;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/cJ;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "nf_configurationagent"

    const-string v2, "fetchConfigData %s"

    .line 924
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 926
    new-instance v0, Lo/cG$9;

    invoke-direct {v0, p0, p3}, Lo/cG$9;-><init>(Lo/cG;Lo/cJ;)V

    .line 952
    invoke-virtual {p0}, Lo/cG;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object p3

    iget-object v1, p0, Lo/cG;->E:Lo/hy;

    invoke-virtual {v1, p1, p2, v0}, Lo/hy;->c(Lo/zX;Ljava/util/List;Lo/cJ;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-interface {p3, p1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method private e(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 5

    .line 803
    iget-object v0, p0, Lo/cG;->y:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    if-eqz v0, :cond_0

    return-object v0

    .line 807
    :cond_0
    invoke-virtual {p0}, Lo/cG;->g()Z

    move-result v0

    .line 808
    invoke-static {p1}, Lo/aek;->e(Landroid/content/Context;)Z

    move-result v1

    .line 809
    invoke-static {p1}, Lo/adq;->a(Landroid/content/Context;)I

    move-result p1

    const/16 v2, 0xf0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    if-gt p1, v2, :cond_1

    .line 812
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->e:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->b:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    if-gt p1, v2, :cond_3

    .line 815
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->a:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->e:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    :cond_4
    if-gt p1, v2, :cond_5

    .line 817
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->e:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->b:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    .line 820
    :goto_0
    iput-object v2, p0, Lo/cG;->y:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    .line 821
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const/4 p1, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "nf_configurationagent"

    const-string v0, "computeImageResolutionClass() [%s] dpi: %s, isTablet:%s, isLowMem:%s"

    invoke-static {p1, v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 822
    iget-object p1, p0, Lo/cG;->y:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    return-object p1
.end method

.method static synthetic e(Lo/cG;)Lo/ds;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/cG;->g:Lo/ds;

    return-object p0
.end method

.method private e(Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "nf_configurationagent"

    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/lang/Object;

    .line 519
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "Handling not delayed init crypto status %s"

    invoke-static {v2, v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 520
    invoke-virtual {p0, p1}, Lo/cG;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 524
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    aput-object v3, p2, v1

    iget-boolean v3, p0, Lo/cG;->C:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const-string v0, "Handling delayed init crypto status %s, ESN migration detected %b"

    invoke-static {v2, v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 525
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lo/cG;->C:Z

    if-nez p2, :cond_1

    const-string p1, "Succesfully initialized crypto"

    .line 526
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0}, Lo/cG;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object p1

    invoke-interface {p1}, Lo/SmartSelectSprite;->c()V

    goto :goto_0

    .line 530
    :cond_1
    invoke-virtual {p0}, Lo/cG;->getErrorHandler()Lo/zF;

    move-result-object p2

    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-interface {v0}, Lo/bO;->e()Lo/hT;

    move-result-object v0

    invoke-virtual {p0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p1, v1}, Lo/hT;->c(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Z)Lo/hR;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/zF;->d(Lo/hR;)Z

    :goto_0
    return-void
.end method

.method static synthetic e(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lo/cG;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic e(Lo/cG;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lo/cG;->C:Z

    return p1
.end method

.method static synthetic f(Lo/cG;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/cG;->aM()V

    return-void
.end method

.method static synthetic g(Lo/cG;)Ljava/lang/Runnable;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/cG;->J:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lo/cG;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/cG;->j:Lcom/netflix/mediaclient/android/app/Status;

    return-object p0
.end method

.method static synthetic i(Lo/cG;)Ljava/util/List;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/cG;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lo/cG;)Ljava/lang/Runnable;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/cG;->L:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic k(Lo/cG;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 0

    .line 113
    invoke-virtual {p0}, Lo/cG;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lo/cG;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/cG;->aS()V

    return-void
.end method

.method static synthetic m(Lo/cG;)Lo/sT;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/cG;->H:Lo/sT;

    return-object p0
.end method

.method static synthetic n(Lo/cG;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/cG;->aH()V

    return-void
.end method

.method static synthetic o(Lo/cG;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 0

    .line 113
    invoke-virtual {p0}, Lo/cG;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lo/cG;)Lo/cv;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/cG;->o:Lo/cv;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1388
    iget-boolean v0, p0, Lo/cG;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoip()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    .line 1389
    invoke-virtual {v0}, Lo/cH;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/cG;->o:Lo/cv;

    invoke-virtual {v0}, Lo/cv;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1378
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->t()Z

    move-result v0

    return v0
.end method

.method public C()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;
    .locals 2

    .line 1476
    invoke-direct {p0}, Lo/cG;->aU()Z

    move-result v0

    invoke-static {v0}, Lo/afP;->d(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    .line 1477
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1383
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;
    .locals 1

    .line 1190
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->D()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v0

    return-object v0
.end method

.method public F()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;
    .locals 1

    .line 1185
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->C()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-result-object v0

    return-object v0
.end method

.method public G()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
    .locals 1

    .line 1510
    iget-object v0, p0, Lo/cG;->q:Lo/cP;

    iget-object v0, v0, Lo/cP;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    return-object v0
.end method

.method public H()Z
    .locals 4

    .line 1112
    invoke-virtual {p0}, Lo/cG;->aI()Z

    move-result v0

    .line 1113
    iget-object v1, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v1}, Lo/cL;->b(Landroid/content/Context;)Z

    move-result v1

    .line 1114
    iget-object v2, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v2}, Lo/cP;->b(Landroid/content/Context;)Z

    move-result v2

    .line 1115
    iget-object v3, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v3}, Lo/cN;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()V
    .locals 1

    .line 1505
    iget-object v0, p0, Lo/cG;->n:Lo/cL;

    invoke-virtual {v0}, Lo/cL;->e()V

    return-void
.end method

.method public J()Z
    .locals 1

    .line 1440
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {v0}, Lo/cH;->H()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public K()I
    .locals 1

    .line 904
    invoke-virtual {p0}, Lo/cG;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public L()Z
    .locals 1

    .line 1237
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->k()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 1238
    invoke-static {}, Lo/qB;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public M()Z
    .locals 1

    .line 1406
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->s()Z

    move-result v0

    return v0
.end method

.method public N()Lo/cF;
    .locals 1

    .line 1520
    iget-object v0, p0, Lo/cG;->A:Lo/cF;

    return-object v0
.end method

.method public O()I
    .locals 1

    .line 1553
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->G()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->getMaintenanceJobPeriodInHrs()I

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 1

    .line 1593
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {v0}, Lo/cH;->R()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public Q()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 1

    .line 1525
    invoke-virtual {p0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/cG;->e(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v0

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .line 1530
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S()Z
    .locals 1

    .line 1563
    invoke-virtual {p0}, Lo/cG;->W()Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T()Z
    .locals 1

    .line 1603
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/cH;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isShowHelpForNonMember()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public U()Z
    .locals 1

    .line 1612
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/cH;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V()Ljava/lang/String;
    .locals 1

    .line 1579
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public W()Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;
    .locals 2

    .line 1537
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->G()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->isOfflineFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->b:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    return-object v0

    .line 1541
    :cond_0
    iget-boolean v0, p0, Lo/cG;->G:Z

    if-eqz v0, :cond_1

    .line 1542
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->h:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    return-object v0

    .line 1544
    :cond_1
    iget-object v0, p0, Lo/cG;->g:Lo/ds;

    invoke-interface {v0}, Lo/ds;->i()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lo/cG;->g:Lo/ds;

    invoke-interface {v0}, Lo/ds;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4266"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1545
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->g:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public X()Z
    .locals 1

    .line 1584
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    if-eqz v0, :cond_0

    .line 1585
    invoke-virtual {v0}, Lo/cH;->I()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Y()Z
    .locals 1

    .line 1622
    iget-boolean v0, p0, Lo/cG;->p:Z

    return v0
.end method

.method public Z()Ljava/lang/String;
    .locals 2

    .line 1632
    iget-object v0, p0, Lo/cG;->r:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v1, ""

    .line 1633
    invoke-static {v0, v1}, Lo/adk;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/cG;->r:Ljava/lang/String;

    .line 1635
    :cond_0
    iget-object v0, p0, Lo/cG;->r:Ljava/lang/String;

    return-object v0
.end method

.method public a()Lcom/netflix/mediaclient/media/VideoResolutionRange;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lo/cG;->K:Lcom/netflix/mediaclient/media/VideoResolutionRange;

    if-nez v0, :cond_1

    .line 867
    invoke-virtual {p0}, Lo/cG;->d()I

    move-result v0

    if-lez v0, :cond_0

    .line 871
    invoke-static {v0}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getVideoResolutionRangeFromMaxHieght(I)Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v0

    iput-object v0, p0, Lo/cG;->K:Lcom/netflix/mediaclient/media/VideoResolutionRange;

    goto :goto_0

    .line 873
    :cond_0
    iget-object v0, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/aek;->i(Landroid/content/Context;)Lcom/netflix/mediaclient/media/VideoResolutionRange;

    move-result-object v0

    iput-object v0, p0, Lo/cG;->K:Lcom/netflix/mediaclient/media/VideoResolutionRange;

    .line 876
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/cG;->K:Lcom/netflix/mediaclient/media/VideoResolutionRange;

    return-object v0
.end method

.method public a(Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;
    .locals 1

    .line 1265
    iget-object v0, p0, Lo/cG;->o:Lo/cv;

    invoke-virtual {v0, p1}, Lo/cv;->b(Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/cP;->b(Landroid/content/Context;)Z

    move-result v0

    .line 725
    iget-object v1, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v1}, Lo/cN;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v0, :cond_0

    .line 728
    sget-object v0, Lo/hw;->j:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 730
    :cond_0
    sget-object v0, Lo/hw;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-nez v1, :cond_1

    .line 733
    sget-object v0, Lo/hw;->i:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public declared-synchronized a(Lo/sT;)V
    .locals 1

    monitor-enter p0

    .line 768
    :try_start_0
    iput-object p1, p0, Lo/cG;->H:Lo/sT;

    .line 769
    iget-object p1, p0, Lo/cG;->H:Lo/sT;

    invoke-virtual {p0}, Lo/cG;->ay()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/sT;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lo/zX;ZLo/cJ;Lo/cG$StateListAnimator;)V
    .locals 1

    monitor-enter p0

    if-eqz p4, :cond_0

    .line 592
    :try_start_0
    iget-object v0, p0, Lo/cG;->a:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_0
    iget-boolean p4, p0, Lo/cG;->c:Z

    if-nez p4, :cond_1

    const-string p4, "nf_configurationagent"

    const-string v0, "Starting a config refresh "

    .line 596
    invoke-static {p4, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {p0, p1, p2, p3}, Lo/cG;->c(Lo/zX;ZLo/cJ;)V

    goto :goto_0

    :cond_1
    const-string p1, "nf_configurationagent"

    const-string p2, "Ignoring request to refreshConfig because one is on-going."

    .line 599
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public aA()Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;
    .locals 1

    .line 758
    iget-object v0, p0, Lo/cG;->o:Lo/cv;

    invoke-virtual {v0}, Lo/cv;->l()Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public aB()I
    .locals 1

    .line 1865
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/cH;->V()I

    move-result v0

    :goto_0
    return v0
.end method

.method public aC()Z
    .locals 1

    .line 1251
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->U()Z

    move-result v0

    return v0
.end method

.method public aD()Z
    .locals 1

    .line 1246
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->W()Z

    move-result v0

    return v0
.end method

.method public aE()J
    .locals 2

    .line 890
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->M()J

    move-result-wide v0

    return-wide v0
.end method

.method public aF()Ljava/lang/String;
    .locals 1

    .line 894
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aG()Ljava/lang/String;
    .locals 1

    .line 886
    iget-object v0, p0, Lo/cG;->w:Ljava/lang/String;

    return-object v0
.end method

.method public aI()Z
    .locals 1

    .line 1490
    invoke-direct {p0}, Lo/cG;->aU()Z

    move-result v0

    invoke-static {v0}, Lo/afP;->d(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    .line 1491
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v0

    return v0
.end method

.method public aJ()Z
    .locals 2

    .line 1798
    invoke-virtual {p0}, Lo/cG;->ah()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1803
    :cond_0
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1806
    :cond_1
    invoke-virtual {p0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fp;->b(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public aL()V
    .locals 2

    .line 1825
    iget-object v0, p0, Lo/cG;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 2

    .line 1640
    iget-object v0, p0, Lo/cG;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.hardware"

    const-string v1, ""

    .line 1641
    invoke-static {v0, v1}, Lo/adk;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/cG;->s:Ljava/lang/String;

    .line 1643
    :cond_0
    iget-object v0, p0, Lo/cG;->s:Ljava/lang/String;

    return-object v0
.end method

.method public ab()Ljava/lang/String;
    .locals 1

    .line 1617
    iget-object v0, p0, Lo/cG;->u:Lo/cE;

    invoke-virtual {v0}, Lo/cE;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 1627
    iget-object v0, p0, Lo/cG;->u:Lo/cE;

    invoke-virtual {v0}, Lo/cE;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized ad()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1649
    :try_start_0
    iget-object v0, p0, Lo/cG;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.netflix.bsp_rev"

    const-string v1, ""

    .line 1650
    invoke-static {v0, v1}, Lo/adk;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/cG;->x:Ljava/lang/String;

    .line 1652
    :cond_0
    iget-object v0, p0, Lo/cG;->x:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ae()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ro.vendor.mtk_microtrust_tee_support"

    const-string v1, ""

    .line 1658
    invoke-static {v0, v1}, Lo/adk;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1659
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "microtrust"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "ro.vendor.mtk_trustonic_tee_support"

    const-string v1, ""

    .line 1662
    invoke-static {v0, v1}, Lo/adk;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1663
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "trustonic"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1664
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 1667
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public af()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    .locals 1

    .line 256
    iget-object v0, p0, Lo/cG;->k:Lo/cK;

    invoke-interface {v0}, Lo/cK;->e()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v0

    return-object v0
.end method

.method public ag()Ljava/lang/String;
    .locals 1

    .line 1673
    iget-object v0, p0, Lo/cG;->o:Lo/cv;

    invoke-virtual {v0}, Lo/cv;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "config"

    return-object v0
.end method

.method public ah()Z
    .locals 2

    .line 1685
    invoke-virtual {p0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fu;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_configurationagent"

    const-string v1, "Current user is in AB test (cell 2) to use MSL for all requests"

    .line 1686
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ai()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public aj()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public ak()J
    .locals 2

    const-wide/32 v0, 0x48190800

    return-wide v0
.end method

.method public al()I
    .locals 1

    .line 1761
    invoke-static {}, Lo/aek;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public am()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public an()Z
    .locals 1

    .line 1821
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->P()Z

    move-result v0

    return v0
.end method

.method public ao()Lo/afR;
    .locals 1

    .line 541
    iget-object v0, p0, Lo/cG;->l:Lo/afK;

    return-object v0
.end method

.method public ap()V
    .locals 1

    .line 536
    iget-object v0, p0, Lo/cG;->n:Lo/cL;

    invoke-virtual {v0}, Lo/cL;->e()V

    return-void
.end method

.method public aq()V
    .locals 2

    .line 1791
    invoke-virtual {p0}, Lo/cG;->I()V

    .line 1792
    invoke-virtual {p0}, Lo/cG;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->j()Lo/zX;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/cG;->b(Lo/zX;Lo/cJ;)V

    return-void
.end method

.method public ar()Z
    .locals 1

    .line 1812
    invoke-virtual {p0}, Lo/cG;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1816
    :cond_0
    iget-object v0, p0, Lo/cG;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public as()I
    .locals 1

    .line 1859
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->d()I

    move-result v0

    return v0
.end method

.method public at()I
    .locals 1

    .line 1830
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/cH;->S()I

    move-result v0

    :goto_0
    return v0
.end method

.method public au()Z
    .locals 5

    .line 1835
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1839
    :cond_0
    invoke-static {}, Lo/adU;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/cG;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1840
    :goto_0
    invoke-virtual {p0}, Lo/cG;->f()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1843
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isAVCHighCodecEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lo/pQ;->e(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1844
    :cond_2
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isAVCHighCodecForceEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public av()I
    .locals 1

    .line 1851
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/cH;->T()I

    move-result v0

    :goto_0
    return v0
.end method

.method public aw()Z
    .locals 2

    .line 745
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->a()I

    move-result v0

    .line 753
    iget v1, p0, Lo/cG;->v:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ax()I
    .locals 1

    .line 1870
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/cH;->aa()I

    move-result v0

    :goto_0
    return v0
.end method

.method public ay()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;
    .locals 1

    .line 859
    iget-object v0, p0, Lo/cG;->h:Lo/cX;

    invoke-virtual {v0}, Lo/cX;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    move-result-object v0

    return-object v0
.end method

.method public az()Z
    .locals 3

    .line 783
    invoke-virtual {p0}, Lo/cG;->as()I

    move-result v0

    .line 792
    invoke-virtual {p0}, Lo/cG;->aB()I

    move-result v1

    invoke-static {v1}, Lo/adi;->e(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 799
    :cond_0
    iget v1, p0, Lo/cG;->v:I

    if-lt v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public b()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 2

    .line 831
    invoke-static {}, Lo/aek;->k()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->e:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 834
    :cond_0
    invoke-static {}, Lo/adq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->h:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0

    .line 836
    :cond_1
    invoke-static {}, Lo/adq;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 837
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0

    .line 838
    :cond_2
    invoke-static {}, Lo/adq;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->c:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0

    .line 840
    :cond_3
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 841
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0

    .line 843
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method

.method public declared-synchronized b(Lo/cG$StateListAnimator;Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 611
    :try_start_0
    iget-object p2, p0, Lo/cG;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 614
    :cond_0
    iget-object p2, p0, Lo/cG;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 618
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public b(Lo/zX;Lo/cJ;)V
    .locals 6

    .line 1125
    invoke-virtual {p0}, Lo/cG;->aI()Z

    move-result v0

    .line 1126
    iget-object v1, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v1}, Lo/cL;->b(Landroid/content/Context;)Z

    move-result v1

    .line 1127
    iget-object v2, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v2}, Lo/cP;->b(Landroid/content/Context;)Z

    move-result v2

    .line 1128
    iget-object v3, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v3}, Lo/cN;->c(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "nf_configurationagent"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const-string p1, "Skipping fetch of esn dependent configs"

    .line 1131
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1133
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, p1, v0}, Lo/cJ;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void

    .line 1138
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_2

    .line 1140
    sget-object v0, Lo/hw;->b:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v1, :cond_3

    .line 1143
    sget-object v0, Lo/hw;->f:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v2, :cond_4

    .line 1146
    sget-object v0, Lo/hw;->j:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1148
    :cond_4
    sget-object v0, Lo/hw;->g:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-nez v3, :cond_5

    .line 1151
    sget-object v0, Lo/hw;->i:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const-string v1, "fetching esnBasedConfigs queries: %s"

    .line 1157
    invoke-static {v4, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1158
    invoke-direct {p0, p1, v5, p2}, Lo/cG;->d(Lo/zX;Ljava/util/List;Lo/cJ;)V

    return-void
.end method

.method public b(ZLo/cJ;)V
    .locals 1

    .line 1786
    iget-object v0, p0, Lo/cG;->E:Lo/hy;

    invoke-virtual {v0, p1, p2}, Lo/hy;->e(ZLo/cJ;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/cG;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
    .locals 1

    .line 899
    iget-object v0, p0, Lo/cG;->i:Lo/cI;

    return-object v0
.end method

.method public c(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lo/cG;->aI()Z

    move-result v0

    .line 712
    iget-object v1, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v1}, Lo/cL;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v0, :cond_0

    .line 715
    sget-object v0, Lo/hw;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez v1, :cond_1

    .line 718
    sget-object v0, Lo/hw;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V
    .locals 3

    .line 562
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getDeviceConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/cH;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;)V

    .line 563
    iget-object v0, p0, Lo/cG;->h:Lo/cX;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getStreamingConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/cX;->c(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lo/cG;->o:Lo/cv;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getAccountConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/cv;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V

    .line 565
    iget-object v0, p0, Lo/cG;->k:Lo/cK;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getABTestConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/cK;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    .line 566
    iget-object v0, p0, Lo/cG;->n:Lo/cL;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/cL;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V

    .line 567
    iget-object v0, p0, Lo/cG;->n:Lo/cL;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getNrmLanguagesData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/cL;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;)V

    .line 568
    iget-object v0, p0, Lo/cG;->m:Lo/cA;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getCastKeyData()Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/cA;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;)V

    .line 569
    iget-object v0, p0, Lo/cG;->q:Lo/cP;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/cP;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V

    .line 571
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getFpConfig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lo/cG;->t:Lo/cN;

    iget-object v1, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getFpConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/cN;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 574
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->getFtlConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;)V

    .line 575
    iget-object p1, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {p1, p0}, Lo/cS;->e(Landroid/content/Context;Lo/cz;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1496
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1500
    :cond_0
    iget-object v0, p0, Lo/cG;->n:Lo/cL;

    invoke-virtual {v0, p1}, Lo/cL;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "nf_configurationagent"

    const-string v0, "formerMemberData object is null - ignore overwrite"

    .line 1497
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()I
    .locals 1

    .line 1169
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->o()I

    move-result v0

    return v0
.end method

.method public d(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 3

    .line 1567
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bn:Lcom/netflix/mediaclient/StatusCode;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "nf_configurationagent"

    const-string v1, "Device is blacklisted, disable offline"

    .line 1570
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v0, p0, Lo/cG;->d:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "offline_blaclisted_device_override"

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1572
    iput-boolean v1, p0, Lo/cG;->G:Z

    .line 1573
    invoke-virtual {p0}, Lo/cG;->getErrorHandler()Lo/zF;

    move-result-object v0

    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v1

    invoke-interface {v1}, Lo/bO;->e()Lo/hT;

    move-result-object v1

    iget-object v2, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lo/hT;->a(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)Lo/hR;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/zF;->d(Lo/hR;)Z

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/cJ;)V
    .locals 8

    .line 1515
    invoke-virtual {p0}, Lo/cG;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v0

    iget-object v1, p0, Lo/cG;->E:Lo/hy;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lo/hy;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/cJ;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public d(Lo/zX;ZLo/cJ;)V
    .locals 1

    const/4 v0, 0x0

    .line 975
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/cG;->a(Lo/zX;ZLo/cJ;Lo/cG$StateListAnimator;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 644
    invoke-super {p0}, Lo/bV;->destroy()V

    .line 646
    invoke-virtual {p0}, Lo/cG;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lo/cG;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/cG;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 648
    invoke-virtual {p0}, Lo/cG;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/cG;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 651
    :cond_0
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {v0}, Lo/cH;->c()V

    .line 655
    :cond_1
    iget-object v0, p0, Lo/cG;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 656
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 659
    :cond_2
    iget-object v0, p0, Lo/cG;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 660
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 663
    :cond_3
    iget-object v0, p0, Lo/cG;->u:Lo/cE;

    if-eqz v0, :cond_4

    .line 664
    invoke-virtual {v0}, Lo/cE;->c()V

    .line 667
    :cond_4
    iget-object v0, p0, Lo/cG;->I:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 668
    invoke-virtual {p0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/cG;->I:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    :cond_5
    return-void
.end method

.method protected doInit()V
    .locals 7

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lo/cG;->B:Z

    .line 267
    iput-boolean v0, p0, Lo/cG;->C:Z

    .line 268
    new-instance v1, Lo/hy;

    invoke-virtual {p0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lo/hy;-><init>(Landroid/content/Context;Lo/cz;)V

    iput-object v1, p0, Lo/cG;->E:Lo/hy;

    .line 270
    invoke-direct {p0}, Lo/cG;->aX()V

    .line 272
    invoke-direct {p0}, Lo/cG;->aR()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 274
    invoke-virtual {p0}, Lo/cG;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "nf_configurationagent"

    const-string v2, "Use low mem config: %b "

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 276
    iget-object v0, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/aed;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lo/cG;->z:I

    .line 278
    new-instance v0, Lo/cI;

    iget-object v2, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lo/cG;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v3

    invoke-virtual {p0}, Lo/cG;->getOfflineAgent()Lo/nS;

    move-result-object v5

    invoke-virtual {p0}, Lo/cG;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v6

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lo/cI;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/nS;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lo/cG;->i:Lo/cI;

    .line 280
    invoke-direct {p0}, Lo/cG;->aQ()Z

    move-result v0

    iput-boolean v0, p0, Lo/cG;->D:Z

    .line 282
    iget-object v0, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lo/cG;->p:Z

    .line 284
    new-instance v0, Lo/cE;

    iget-object v1, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lo/cG;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/cE;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/cG;->u:Lo/cE;

    .line 285
    const-class v0, Lo/cE;

    iget-object v1, p0, Lo/cG;->u:Lo/cE;

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/adq;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Lo/GetEuiccProfileInfoListResult;

    iget-object v1, p0, Lo/cG;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lo/cG;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/GetEuiccProfileInfoListResult;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    invoke-virtual {v0}, Lo/GetEuiccProfileInfoListResult;->b()V

    .line 290
    :cond_0
    invoke-direct {p0}, Lo/cG;->aT()V

    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;
    .locals 1

    .line 914
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0, p1}, Lo/cH;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    move-result-object p1

    return-object p1
.end method

.method public e()Lo/ds;
    .locals 1

    .line 881
    iget-object v0, p0, Lo/cG;->g:Lo/ds;

    return-object v0
.end method

.method public f()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;
    .locals 1

    .line 1279
    iget-object v0, p0, Lo/cG;->o:Lo/cv;

    invoke-virtual {v0}, Lo/cv;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1281
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->q()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 580
    invoke-static {}, Lo/aek;->g()Z

    move-result v0

    return v0
.end method

.method public getAgentLoadEventName()Lcom/netflix/mediaclient/service/logging/perf/Sessions;
    .locals 1

    .line 1017
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->e:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 961
    iget-object v0, p0, Lo/cG;->o:Lo/cv;

    invoke-virtual {v0}, Lo/cv;->a()V

    .line 962
    iget-object v0, p0, Lo/cG;->k:Lo/cK;

    invoke-interface {v0}, Lo/cK;->b()V

    .line 963
    invoke-virtual {p0}, Lo/cG;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/cS;->b(Landroid/content/Context;)V

    return-void
.end method

.method public i()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;
    .locals 1

    .line 1288
    iget-object v0, p0, Lo/cG;->o:Lo/cv;

    invoke-virtual {v0}, Lo/cv;->f()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1290
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->p()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1201
    invoke-static {}, Lo/aek;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()I
    .locals 1

    .line 1261
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->l()I

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1228
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->j()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1218
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->i()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1209
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->k()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1210
    invoke-static {}, Lo/qB;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1223
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->g()Z

    move-result v0

    return v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->x()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 909
    iget-boolean v0, p0, Lo/cG;->C:Z

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1302
    iget-object v0, p0, Lo/cG;->o:Lo/cv;

    invoke-virtual {v0}, Lo/cv;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1307
    iget-object v0, p0, Lo/cG;->o:Lo/cv;

    invoke-virtual {v0}, Lo/cv;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1297
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->n()I

    move-result v0

    return v0
.end method

.method public u()Lo/cR;
    .locals 1

    .line 1312
    iget-object v0, p0, Lo/cG;->M:Lo/cR;

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 1027
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->u()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x708

    return v0
.end method

.method public w()Lo/cr;
    .locals 2

    .line 1175
    new-instance v0, Lo/cr;

    iget-object v1, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v1}, Lo/cH;->y()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/cr;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public x()Lo/cO;
    .locals 1

    .line 1317
    iget-object v0, p0, Lo/cG;->N:Lo/cO;

    return-object v0
.end method

.method public y()Lo/cy;
    .locals 2

    .line 1180
    new-instance v0, Lo/cy;

    iget-object v1, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v1}, Lo/cH;->v()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/cy;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public z()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 1

    .line 1447
    iget-object v0, p0, Lo/cG;->f:Lo/cH;

    invoke-virtual {v0}, Lo/cH;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    return-object v0
.end method
