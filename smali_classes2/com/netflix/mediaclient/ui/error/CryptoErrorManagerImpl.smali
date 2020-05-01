.class public final enum Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;",
        ">;",
        "Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;"
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;

.field public static final enum c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

.field private static final synthetic n:[Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;


# instance fields
.field private a:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private d:Lo/zz;

.field private e:Lo/zF;

.field private f:J

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Lo/nS;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    .line 57
    sget-object v2, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->n:[Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    const-string v0, "nf_crypto_error"

    .line 64
    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 2

    .line 208
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->j:Lo/nS;

    new-instance v1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl$2;-><init>(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;)V

    invoke-interface {v0, v1}, Lo/nS;->e(Lo/nV;)V

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->j:Lo/nS;

    invoke-interface {v0}, Lo/nS;->n()V

    .line 241
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-interface {v0}, Lo/bO;->b()V

    :cond_0
    return-void
.end method

.method private a([Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 195
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 197
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 198
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    const-string v1, "disable_widevine_l1_evidence"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()Z
    .locals 1

    .line 264
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    invoke-interface {v0}, Lo/Rq;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static c(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 2

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MediaDrm failure: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". ResourceBusyException: SPY-12568"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MaxMslSessionOpened ["

    .line 303
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "CurrentOpenedMslDrmSessionCount ["

    .line 304
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lo/cY;->j:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {}, Lo/adk;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 308
    :try_start_0
    sget-object p2, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->e:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lo/adU;->d(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object p2

    const-string v0, "maxNumberOfSessions"

    .line 310
    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "maxNumberOfSessions ["

    .line 312
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "numberOfOpenSessions"

    .line 315
    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "numberOfOpenSessions ["

    .line 317
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-interface {p2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    sget-object p2, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ignore exception when createResourceBusyExceptionErrorMessage."

    invoke-static {p2, p0, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 324
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "MediaDrm failure: "

    .line 290
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Exception: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string p0, " init failure: security level changed"

    .line 293
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;)Lo/nS;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->j:Lo/nS;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "prefs_crypto_fatal_errors"

    invoke-static {v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->h:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-static {v0, p0, p1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized g()Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;
    .locals 3

    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 463
    monitor-exit p0

    return-object v0

    .line 465
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 9

    .line 328
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "prefs_crypto_fatal_errors"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 335
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 337
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 338
    new-instance v3, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;-><init>(Lorg/json/JSONObject;)V

    .line 340
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->e()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 341
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    :cond_1
    sget-object v4, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const-string v6, "Ignore, occured to long ago: %s: "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v4, v6, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v8

    :goto_1
    add-int/2addr v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 348
    sget-object v2, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Fail to restore crypto error state."

    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 351
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->j()V

    return-void
.end method

.method private i()V
    .locals 4

    .line 370
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;

    .line 372
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 375
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "prefs_crypto_fatal_errors"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 378
    sget-object v1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Fail to save crypto error state!"

    invoke-static {v1, v0, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method private j()V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;
    .locals 1

    .line 57
    const-class v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;
    .locals 1

    .line 57
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->n:[Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)I
    .locals 9

    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    sget-object p1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const-string p2, "Crypto fallback in progress. We should not see this. Do not add error. Return crypto failback message. Next app start will see different crypto..."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->go:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 399
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->g()Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;

    move-result-object v0

    .line 400
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gn:I

    if-eqz v0, :cond_7

    .line 402
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->e()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 412
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const-string v1, "Did not had previous valid fatal error, just tell user to start app again"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gn:I

    goto/16 :goto_1

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 417
    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->c(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    sget-object p1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const-string p2, "Found previous valid fatal error, but it from this same app instance, do not add it again. It should NOT happen. Return message to start app again."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    monitor-exit p0

    return p1

    .line 425
    :cond_3
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const-string v1, "Found previous valid fatal error, app was restarted and we failed again, Tell user to restart device."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gt:I

    goto :goto_1

    .line 429
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8

    .line 431
    iget-wide p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->f:J

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;->c(J)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 433
    sget-object p1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const-string p2, "Found previous valid fatal error, but it from this same app instance, do not add it again. It should NOT happen. Return message to start app again."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gt:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    monitor-exit p0

    return p1

    .line 439
    :cond_5
    :try_start_3
    sget-object p1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const-string p2, "Found previous valid fatal error, app was restarted and than rebooted and each time we failed again, Fallback..."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    sget-object p1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;->b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    const/4 p3, 0x0

    new-array p3, p3, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e(Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;)Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    move-result-object p1

    .line 441
    sget-object p2, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    if-ne p1, p2, :cond_6

    .line 442
    sget-object p1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const-string p2, "Fallback to Widevine L3."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gp:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    .line 445
    :cond_6
    :try_start_4
    sget-object p1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const-string p2, "Widevine L3 failed, nowhere to fall back..."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gl:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p1

    .line 404
    :cond_7
    :goto_0
    :try_start_5
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    const-string v1, "Did not had previous valid fatal error, just tell user to start app again"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gn:I

    .line 453
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->k:Ljava/util/List;

    new-instance v8, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;

    iget-wide v5, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->f:J

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;-><init>(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;JLjava/lang/Throwable;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->i()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->h:Ljava/lang/Runnable;

    .line 258
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 258
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()Lo/zz;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->d:Lo/zz;

    return-object v0
.end method

.method public declared-synchronized d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->d:Lo/zz;

    invoke-static {p2, p3}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/zz;->c(Ljava/lang/String;)V

    .line 125
    invoke-static {p1, p2}, Lo/Gd;->a(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;)Lo/hU;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 131
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    :try_start_1
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lo/hU;->a(Landroid/content/Context;Ljava/lang/Throwable;)Lo/hR;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 140
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e:Lo/zF;

    if-eqz p2, :cond_2

    .line 144
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e:Lo/zF;

    invoke-interface {p2, p1}, Lo/zF;->d(Lo/hR;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;)Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;
    .locals 3

    .line 160
    invoke-static {}, Lo/dd;->e()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_0

    .line 163
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIDEVINE_FORCED_FALLBACK_TO_L3_AFTER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": MediaDrm failed for Widevine L1, fail back to Widevine L3 crypto scheme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    sget-object v2, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {p1}, Lo/adU;->e(Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;)V

    .line 167
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->a([Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;)V

    .line 168
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->d()V

    .line 169
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->a()V

    goto :goto_0

    .line 171
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, p1, :cond_1

    const-string v1, "MediaDrm failed for Widevine L3, there is nothing to fail back to anymore"

    .line 174
    sget-object p1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->d()V

    .line 176
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    goto :goto_0

    .line 180
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Crypto provider was not supported for this error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    sget-object p1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->a:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    .line 184
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->d:Lo/zz;

    invoke-interface {p1, v1}, Lo/zz;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized e(JLcom/netflix/mediaclient/service/user/UserAgent;Lo/nS;Lo/zF;Lo/zz;)V
    .locals 0

    monitor-enter p0

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 104
    :try_start_0
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 105
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e:Lo/zF;

    .line 106
    iput-object p6, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->d:Lo/zz;

    .line 107
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->f:J

    .line 108
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->j:Lo/nS;

    .line 110
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CryptoErrorManagerImpl can not be initialized with null error logger!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CryptoErrorManagerImpl can not be initialized with null error handler!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CryptoErrorManagerImpl can not be initialized with null offline agent!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
