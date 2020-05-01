.class public Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NewIntentItem$ActionBar;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lo/InstantAppRequest$Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$Stage;,
        Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;,
        Lcom/bumptech/glide/load/engine/DecodeJob$Activity;,
        Lcom/bumptech/glide/load/engine/DecodeJob$Application;,
        Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;,
        Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;,
        Lcom/bumptech/glide/load/engine/DecodeJob$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/NewIntentItem$ActionBar;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/engine/DecodeJob<",
        "*>;>;",
        "Lo/InstantAppRequest$Application;"
    }
.end annotation


# instance fields
.field private volatile A:Lo/NewIntentItem;

.field private B:Ljava/lang/Object;

.field private C:Lo/RestoreSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RestoreSession<",
            "*>;"
        }
    .end annotation
.end field

.field private D:Lcom/bumptech/glide/load/DataSource;

.field private volatile I:Z

.field private final a:Lo/IntentFilterVerificationInfo;

.field private final b:Lcom/bumptech/glide/load/engine/DecodeJob$Activity;

.field private final c:Lo/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ObjectPool<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final d:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/AbsoluteFileBackupHelper;

.field private final g:Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;

.field private h:Lo/FileBackupHelperBase;

.field private i:Lcom/bumptech/glide/Priority;

.field private final j:Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator<",
            "*>;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Lo/FullBackupAgent;

.field private n:Lo/StopActivityItem;

.field private o:Lo/PauseActivityItem;

.field private p:Lcom/bumptech/glide/load/engine/DecodeJob$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$Application<",
            "TR;>;"
        }
    .end annotation
.end field

.field private q:J

.field private r:I

.field private s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field private t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field private u:Z

.field private v:Ljava/lang/Thread;

.field private w:Lo/FileBackupHelperBase;

.field private x:Lo/FileBackupHelperBase;

.field private y:Ljava/lang/Object;

.field private volatile z:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$Activity;Lo/CharArrayReader$Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob$Activity;",
            "Lo/CharArrayReader$Activity<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lo/ObjectPool;

    invoke-direct {v0}, Lo/ObjectPool;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Ljava/util/List;

    .line 46
    invoke-static {}, Lo/IntentFilterVerificationInfo;->d()Lo/IntentFilterVerificationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lo/IntentFilterVerificationInfo;

    .line 49
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;

    .line 50
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;

    .line 80
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Activity;

    .line 81
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->d:Lo/CharArrayReader$Activity;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 3

    .line 349
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$4;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 351
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o:Lo/PauseActivityItem;

    invoke-virtual {p1}, Lo/PauseActivityItem;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->d:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->d:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object p1

    :goto_0
    return-object p1

    .line 363
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->g:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    return-object p1

    .line 358
    :cond_3
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->u:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->g:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->e:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    :goto_1
    return-object p1

    .line 354
    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o:Lo/PauseActivityItem;

    invoke-virtual {p1}, Lo/PauseActivityItem;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 355
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->a:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->a:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lo/ComponentInfo;->e(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->n:Lo/StopActivityItem;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    .line 527
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/DataSource;)Lo/FullBackupAgent;
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lo/FullBackupAgent;

    .line 486
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return-object v0

    .line 490
    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/DataSource;->d:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    .line 491
    invoke-virtual {p1}, Lo/ObjectPool;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 492
    :goto_1
    sget-object v1, Lo/BluetoothProfile;->d:Lo/FullBackupDataOutput;

    invoke-virtual {v0, v1}, Lo/FullBackupAgent;->a(Lo/FullBackupDataOutput;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 496
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    return-object v0

    .line 502
    :cond_4
    new-instance v0, Lo/FullBackupAgent;

    invoke-direct {v0}, Lo/FullBackupAgent;-><init>()V

    .line 503
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lo/FullBackupAgent;

    invoke-virtual {v0, v1}, Lo/FullBackupAgent;->d(Lo/FullBackupAgent;)V

    .line 504
    sget-object v1, Lo/BluetoothProfile;->d:Lo/FullBackupDataOutput;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/FullBackupAgent;->e(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/FullBackupAgent;

    return-object v0
.end method

.method private b(Lo/RestoreSession;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lo/Slice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/RestoreSession<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lo/Slice<",
            "TR;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 472
    invoke-interface {p1}, Lo/RestoreSession;->c()V

    return-object p2

    .line 465
    :cond_0
    :try_start_0
    invoke-static {}, Lo/ComponentInfo;->c()J

    move-result-wide v0

    .line 466
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/engine/DecodeJob;->d(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lo/Slice;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v2, 0x2

    .line 467
    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 468
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded result "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_1
    invoke-interface {p1}, Lo/RestoreSession;->c()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lo/RestoreSession;->c()V

    throw p2
.end method

.method private b(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 523
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private c(Lo/Slice;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 335
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->m()V

    .line 336
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->p:Lcom/bumptech/glide/load/engine/DecodeJob$Application;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$Application;->b(Lo/Slice;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method private d(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lo/Slice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lo/Slice<",
            "TR;>;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ObjectPool;->c(Ljava/lang/Class;)Lo/SliceProvider;

    move-result-object v0

    .line 480
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->d(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lo/SliceProvider;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lo/SliceProvider;)Lo/Slice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lo/SliceProvider<",
            "TData;TResourceType;TR;>;)",
            "Lo/Slice<",
            "TR;>;"
        }
    .end annotation

    .line 511
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Lcom/bumptech/glide/load/DataSource;)Lo/FullBackupAgent;

    move-result-object v2

    .line 512
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lo/AbsoluteFileBackupHelper;

    invoke-virtual {v0}, Lo/AbsoluteFileBackupHelper;->c()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/Object;)Lo/WallpaperBackupHelper;

    move-result-object p1

    .line 515
    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->l:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->k:I

    new-instance v5, Lcom/bumptech/glide/load/engine/DecodeJob$TaskDescription;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$TaskDescription;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lo/SliceProvider;->c(Lo/WallpaperBackupHelper;Lo/FullBackupAgent;IILo/ObjectPoolItem$Activity;)Lo/Slice;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-interface {p1}, Lo/WallpaperBackupHelper;->a()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lo/WallpaperBackupHelper;->a()V

    throw p2
.end method

.method private d()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->i()V

    :cond_0
    return-void
.end method

.method private e(Lo/Slice;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 431
    instance-of v0, p1, Lo/TransactionExecutor;

    if-eqz v0, :cond_0

    .line 432
    move-object v0, p1

    check-cast v0, Lo/TransactionExecutor;

    invoke-interface {v0}, Lo/TransactionExecutor;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 437
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-static {p1}, Lo/SliceItem;->c(Lo/Slice;)Lo/SliceItem;

    move-result-object p1

    move-object v0, p1

    .line 442
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->c(Lo/Slice;Lcom/bumptech/glide/load/DataSource;)V

    .line 444
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->c:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 446
    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 447
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Activity;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lo/FullBackupAgent;

    invoke-virtual {p1, p2, v1}, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->c(Lcom/bumptech/glide/load/engine/DecodeJob$Activity;Lo/FullBackupAgent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 451
    invoke-virtual {v0}, Lo/SliceItem;->a()V

    .line 456
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->d()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 451
    invoke-virtual {v0}, Lo/SliceItem;->a()V

    :cond_4
    throw p1
.end method

.method private f()Lo/NewIntentItem;
    .locals 3

    .line 290
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$4;->b:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    new-instance v0, Lo/DistroRulesVersion;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    invoke-direct {v0, v1, p0}, Lo/DistroRulesVersion;-><init>(Lo/ObjectPool;Lo/NewIntentItem$ActionBar;)V

    return-object v0

    .line 294
    :cond_2
    new-instance v0, Lo/MoveToDisplayItem;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    invoke-direct {v0, v1, p0}, Lo/MoveToDisplayItem;-><init>(Lo/ObjectPool;Lo/NewIntentItem$ActionBar;)V

    return-object v0

    .line 292
    :cond_3
    new-instance v0, Lo/SliceManager;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    invoke-direct {v0, v1, p0}, Lo/SliceManager;-><init>(Lo/ObjectPool;Lo/NewIntentItem$ActionBar;)V

    return-object v0
.end method

.method private g()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->i()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 272
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$4;->e:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->n()V

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->o()V

    goto :goto_0

    .line 274
    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 275
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->f()Lo/NewIntentItem;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lo/NewIntentItem;

    .line 276
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->o()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->b()V

    .line 175
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->c()V

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    invoke-virtual {v0}, Lo/ObjectPool;->d()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->z:Z

    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lo/AbsoluteFileBackupHelper;

    .line 179
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lo/FileBackupHelperBase;

    .line 180
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lo/FullBackupAgent;

    .line 181
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Lcom/bumptech/glide/Priority;

    .line 182
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->n:Lo/StopActivityItem;

    .line 183
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->p:Lcom/bumptech/glide/load/engine/DecodeJob$Application;

    .line 184
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 185
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lo/NewIntentItem;

    .line 186
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->v:Ljava/lang/Thread;

    .line 187
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->x:Lo/FileBackupHelperBase;

    .line 188
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->B:Ljava/lang/Object;

    .line 189
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Lcom/bumptech/glide/load/DataSource;

    .line 190
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Lo/RestoreSession;

    const-wide/16 v2, 0x0

    .line 191
    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->q:J

    .line 192
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->I:Z

    .line 193
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->y:Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->d:Lo/CharArrayReader$Activity;

    invoke-interface {v0, p0}, Lo/CharArrayReader$Activity;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method private j()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    return v0
.end method

.method private k()V
    .locals 3

    .line 328
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->m()V

    .line 329
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 330
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->p:Lcom/bumptech/glide/load/engine/DecodeJob$Application;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$Application;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 331
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->g()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lo/IntentFilterVerificationInfo;

    invoke-virtual {v0}, Lo/IntentFilterVerificationInfo;->c()V

    .line 341
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->z:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 343
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 345
    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->z:Z

    return-void
.end method

.method private n()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 410
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->q:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->B:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->x:Lo/FileBackupHelperBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Lo/RestoreSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Lo/RestoreSession;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->B:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Lo/RestoreSession;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lo/Slice;

    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 420
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->w:Lo/FileBackupHelperBase;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;->e(Lo/FileBackupHelperBase;Lcom/bumptech/glide/load/DataSource;)V

    .line 421
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    .line 424
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->e(Lo/Slice;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_1

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->o()V

    :goto_1
    return-void
.end method

.method private o()V
    .locals 3

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->v:Ljava/lang/Thread;

    .line 306
    invoke-static {}, Lo/ComponentInfo;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->q:J

    const/4 v0, 0x0

    .line 308
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->I:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lo/NewIntentItem;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lo/NewIntentItem;

    .line 309
    invoke-interface {v0}, Lo/NewIntentItem;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 311
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->f()Lo/NewIntentItem;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lo/NewIntentItem;

    .line 313
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->e:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v1, v2, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->b()V

    return-void

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->g:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->I:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 320
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->k()V

    :cond_3
    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/DataSource;Lo/Slice;)Lo/Slice;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lo/Slice<",
            "TZ;>;)",
            "Lo/Slice<",
            "TZ;>;"
        }
    .end annotation

    .line 543
    invoke-interface {p2}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 546
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->d:Lcom/bumptech/glide/load/DataSource;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    invoke-virtual {v0, v8}, Lo/ObjectPool;->e(Ljava/lang/Class;)Lo/RestoreObserver;

    move-result-object v0

    .line 548
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lo/AbsoluteFileBackupHelper;

    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->l:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->k:I

    invoke-interface {v0, v2, p2, v3, v4}, Lo/RestoreObserver;->c(Landroid/content/Context;Lo/Slice;II)Lo/Slice;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v7, v1

    .line 551
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    invoke-interface {p2}, Lo/Slice;->j()V

    .line 557
    :cond_1
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    invoke-virtual {p2, v0}, Lo/ObjectPool;->b(Lo/Slice;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 558
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    invoke-virtual {p2, v0}, Lo/ObjectPool;->d(Lo/Slice;)Lo/RestoreDescription;

    move-result-object v1

    .line 559
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lo/FullBackupAgent;

    invoke-interface {v1, p2}, Lo/RestoreDescription;->a(Lo/FullBackupAgent;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object p2

    goto :goto_1

    .line 562
    :cond_2
    sget-object p2, Lcom/bumptech/glide/load/EncodeStrategy;->c:Lcom/bumptech/glide/load/EncodeStrategy;

    :goto_1
    move-object v10, v1

    .line 566
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->x:Lo/FileBackupHelperBase;

    invoke-virtual {v1, v2}, Lo/ObjectPool;->b(Lo/FileBackupHelperBase;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 567
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o:Lo/PauseActivityItem;

    invoke-virtual {v3, v1, p1, p2}, Lo/PauseActivityItem;->b(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v10, :cond_5

    .line 573
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$4;->c:[I

    invoke-virtual {p2}, Lcom/bumptech/glide/load/EncodeStrategy;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 578
    new-instance p1, Lo/DistroFormatVersion;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    .line 580
    invoke-virtual {p2}, Lo/ObjectPool;->g()Lo/RulesManager;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->x:Lo/FileBackupHelperBase;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lo/FileBackupHelperBase;

    iget v5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->l:I

    iget v6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->k:I

    iget-object v9, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lo/FullBackupAgent;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lo/DistroFormatVersion;-><init>(Lo/RulesManager;Lo/FileBackupHelperBase;Lo/FileBackupHelperBase;IILo/RestoreObserver;Ljava/lang/Class;Lo/FullBackupAgent;)V

    goto :goto_2

    .line 590
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 575
    :cond_4
    new-instance p1, Lo/LaunchActivityItem;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->x:Lo/FileBackupHelperBase;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lo/FileBackupHelperBase;

    invoke-direct {p1, p2, v1}, Lo/LaunchActivityItem;-><init>(Lo/FileBackupHelperBase;Lo/FileBackupHelperBase;)V

    .line 593
    :goto_2
    invoke-static {v0}, Lo/SliceItem;->c(Lo/Slice;)Lo/SliceItem;

    move-result-object v0

    .line 594
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;

    invoke-virtual {p2, p1, v10, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$StateListAnimator;->d(Lo/FileBackupHelperBase;Lo/RestoreDescription;Lo/SliceItem;)V

    goto :goto_3

    .line 570
    :cond_5
    new-instance p1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v0}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->I:Z

    .line 213
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lo/NewIntentItem;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lo/NewIntentItem;->e()V

    :cond_0
    return-void
.end method

.method public a_()Lo/IntentFilterVerificationInfo;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lo/IntentFilterVerificationInfo;

    return-object v0
.end method

.method public b(Lo/AbsoluteFileBackupHelper;Ljava/lang/Object;Lo/StopActivityItem;Lo/FileBackupHelperBase;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lo/PauseActivityItem;Ljava/util/Map;ZZZLo/FullBackupAgent;Lcom/bumptech/glide/load/engine/DecodeJob$Application;I)Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AbsoluteFileBackupHelper;",
            "Ljava/lang/Object;",
            "Lo/StopActivityItem;",
            "Lo/FileBackupHelperBase;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lo/PauseActivityItem;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/RestoreObserver<",
            "*>;>;ZZZ",
            "Lo/FullBackupAgent;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$Application<",
            "TR;>;I)",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 102
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lo/ObjectPool;

    iget-object v15, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Activity;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lo/ObjectPool;->e(Lo/AbsoluteFileBackupHelper;Ljava/lang/Object;Lo/FileBackupHelperBase;IILo/PauseActivityItem;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lo/FullBackupAgent;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$Activity;)V

    move-object/from16 v1, p1

    .line 117
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lo/AbsoluteFileBackupHelper;

    move-object/from16 v1, p4

    .line 118
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lo/FileBackupHelperBase;

    move-object/from16 v1, p9

    .line 119
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Lcom/bumptech/glide/Priority;

    move-object/from16 v1, p3

    .line 120
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->n:Lo/StopActivityItem;

    move/from16 v1, p5

    .line 121
    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->l:I

    move/from16 v1, p6

    .line 122
    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->k:I

    move-object/from16 v1, p10

    .line 123
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->o:Lo/PauseActivityItem;

    move/from16 v1, p14

    .line 124
    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->u:Z

    move-object/from16 v1, p15

    .line 125
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lo/FullBackupAgent;

    move-object/from16 v1, p16

    .line 126
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->p:Lcom/bumptech/glide/load/engine/DecodeJob$Application;

    move/from16 v1, p17

    .line 127
    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->r:I

    .line 128
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->c:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    move-object/from16 v1, p2

    .line 129
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->y:Ljava/lang/Object;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 369
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->a:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 370
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->p:Lcom/bumptech/glide/load/engine/DecodeJob$Application;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Application;->b(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    return-void
.end method

.method public b(Lo/FileBackupHelperBase;Ljava/lang/Exception;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Ljava/lang/Exception;",
            "Lo/RestoreSession<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 397
    invoke-interface {p3}, Lo/RestoreSession;->c()V

    .line 398
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    invoke-interface {p3}, Lo/RestoreSession;->a()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/engine/GlideException;->b(Lo/FileBackupHelperBase;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    .line 400
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->v:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 402
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->a:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 403
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->p:Lcom/bumptech/glide/load/engine/DecodeJob$Application;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Application;->b(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->o()V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$ActionBar;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->i()V

    :cond_0
    return-void
.end method

.method public c(Lcom/bumptech/glide/load/engine/DecodeJob;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)I"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->j()I

    move-result v0

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->j()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 202
    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->r:I

    iget p1, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->r:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->c(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result p1

    return p1
.end method

.method public e(Lo/FileBackupHelperBase;Ljava/lang/Object;Lo/RestoreSession;Lcom/bumptech/glide/load/DataSource;Lo/FileBackupHelperBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Ljava/lang/Object;",
            "Lo/RestoreSession<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lo/FileBackupHelperBase;",
            ")V"
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->x:Lo/FileBackupHelperBase;

    .line 377
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->B:Ljava/lang/Object;

    .line 378
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Lo/RestoreSession;

    .line 379
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Lcom/bumptech/glide/load/DataSource;

    .line 380
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->w:Lo/FileBackupHelperBase;

    .line 381
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->v:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 382
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->d:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 383
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->p:Lcom/bumptech/glide/load/engine/DecodeJob$Application;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Application;->b(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    goto :goto_0

    :cond_0
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    .line 385
    invoke-static {p1}, Lo/KeySet;->c(Ljava/lang/String;)V

    .line 387
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-static {}, Lo/KeySet;->e()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/KeySet;->e()V

    throw p1
.end method

.method public e()Z
    .locals 2

    .line 138
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->d:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->a:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v0, v1, :cond_0

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

.method public run()V
    .locals 5

    const-string v0, "DecodeJob"

    .line 226
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->y:Ljava/lang/Object;

    const-string v2, "DecodeJob#run(model=%s)"

    invoke-static {v2, v1}, Lo/KeySet;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Lo/RestoreSession;

    .line 231
    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->I:Z

    if-eqz v2, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->k()V
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/CallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 265
    invoke-interface {v1}, Lo/RestoreSession;->c()V

    .line 267
    :cond_0
    invoke-static {}, Lo/KeySet;->e()V

    return-void

    .line 235
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->h()V
    :try_end_1
    .catch Lcom/bumptech/glide/load/engine/CallbackException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 265
    invoke-interface {v1}, Lo/RestoreSession;->c()V

    .line 267
    :cond_2
    invoke-static {}, Lo/KeySet;->e()V

    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x3

    .line 247
    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->I:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->c:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v3, :cond_4

    .line 254
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->k()V

    .line 257
    :cond_4
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->I:Z

    if-nez v0, :cond_5

    .line 258
    throw v2

    .line 260
    :cond_5
    throw v2

    :catch_0
    move-exception v0

    .line 239
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_6

    .line 265
    invoke-interface {v1}, Lo/RestoreSession;->c()V

    .line 267
    :cond_6
    invoke-static {}, Lo/KeySet;->e()V

    throw v0
.end method
