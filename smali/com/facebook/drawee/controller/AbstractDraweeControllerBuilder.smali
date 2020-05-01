.class public abstract Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DdmHandleHello;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/DdmHandleHello;"
    }
.end annotation


# static fields
.field private static final c:Lo/SQLiteBindOrColumnIndexOutOfRangeException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/NullPointerException;

.field private static final p:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private e:Ljava/lang/Object;

.field private f:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TIMAGE;>;>;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TREQUEST;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Lo/SQLiteCustomFunction;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lo/SQLiteBindOrColumnIndexOutOfRangeException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "-TINFO;>;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private s:Lo/DdmHandleExit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$1;

    invoke-direct {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$1;-><init>()V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No image request was specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d:Ljava/lang/NullPointerException;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->p:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a:Ljava/util/Set;

    .line 80
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 86
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Ljava/lang/Object;

    .line 87
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h:Ljava/lang/Object;

    .line 88
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->j:Z

    .line 90
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->o:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    .line 91
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->k:Lo/SQLiteCustomFunction;

    const/4 v1, 0x0

    .line 92
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->n:Z

    .line 93
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->l:Z

    .line 94
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->s:Lo/DdmHandleExit;

    .line 95
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->q:Ljava/lang/String;

    return-void
.end method

.method protected static o()Ljava/lang/String;
    .locals 2

    .line 328
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    return-object v0
.end method

.method protected a(Lo/DdmHandleExit;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lo/UserInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DdmHandleExit;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a()Ljava/lang/Object;

    move-result-object v5

    .line 399
    new-instance v7, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$4;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lo/DdmHandleExit;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)V

    return-object v7
.end method

.method public b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->n()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/DdmHandleExit;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DdmHandleExit;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->s:Lo/DdmHandleExit;

    .line 275
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->n()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Ljava/lang/Object;

    return-object v0
.end method

.method protected b(Lo/SQLiteConnection;)V
    .locals 1

    .line 439
    invoke-virtual {p1}, Lo/SQLiteConnection;->h()Lo/DdmHandleProfiling;

    move-result-object v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b:Landroid/content/Context;

    invoke-static {v0}, Lo/DdmHandleProfiling;->d(Landroid/content/Context;)Lo/DdmHandleProfiling;

    move-result-object v0

    .line 442
    invoke-virtual {p1, v0}, Lo/SQLiteConnection;->b(Lo/DdmHandleProfiling;)V

    :cond_0
    return-void
.end method

.method protected c(Lo/DdmHandleExit;Ljava/lang/String;)Lo/UserInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DdmHandleExit;",
            "Ljava/lang/String;",
            ")",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Lo/UserInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 341
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e(Lo/DdmHandleExit;Ljava/lang/String;Ljava/lang/Object;)Lo/UserInfo;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 344
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->j:Z

    .line 345
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c(Lo/DdmHandleExit;Ljava/lang/String;[Ljava/lang/Object;Z)Lo/UserInfo;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 350
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 351
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e(Lo/DdmHandleExit;Ljava/lang/String;Ljava/lang/Object;)Lo/UserInfo;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 354
    invoke-static {v1, p1}, Lo/CrossProcessCursor;->a(Ljava/util/List;Z)Lo/CrossProcessCursor;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 359
    sget-object p1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d:Ljava/lang/NullPointerException;

    invoke-static {p1}, Lo/BulkCursorDescriptor;->e(Ljava/lang/Throwable;)Lo/UserInfo;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method protected c(Lo/DdmHandleExit;Ljava/lang/String;[Ljava/lang/Object;Z)Lo/UserInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DdmHandleExit;",
            "Ljava/lang/String;",
            "[TREQUEST;Z)",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    .line 373
    :goto_0
    array-length v2, p3

    if-ge p4, v2, :cond_0

    .line 374
    aget-object v2, p3, p4

    sget-object v3, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->c:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 375
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a(Lo/DdmHandleExit;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lo/UserInfo;

    move-result-object v2

    .line 374
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 379
    :cond_0
    :goto_1
    array-length p4, p3

    if-ge v1, p4, :cond_1

    .line 380
    aget-object p4, p3, v1

    invoke-virtual {p0, p1, p2, p4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e(Lo/DdmHandleExit;Ljava/lang/String;Ljava/lang/Object;)Lo/UserInfo;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 382
    :cond_1
    invoke-static {v0}, Lo/AbstractCursor;->b(Ljava/util/List;)Lo/AbstractCursor;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lo/SQLiteConnection;)V
    .locals 2

    .line 430
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->n:Z

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-virtual {p1}, Lo/SQLiteConnection;->i()Lo/SQLiteCantOpenDatabaseException;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->n:Z

    invoke-virtual {v0, v1}, Lo/SQLiteCantOpenDatabaseException;->c(Z)V

    .line 434
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b(Lo/SQLiteConnection;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->m:Z

    return v0
.end method

.method public d(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->n()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "-TINFO;>;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->o:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    .line 237
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->n()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected abstract d()Lo/SQLiteConnection;
.end method

.method protected abstract d(Lo/DdmHandleExit;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lo/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DdmHandleExit;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lo/XmlResourceParser<",
            "TIMAGE;>;"
        }
    .end annotation
.end method

.method public synthetic e(Lo/DdmHandleExit;)Lo/DdmHandleHello;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b(Lo/DdmHandleExit;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lo/DdmHandleExit;Ljava/lang/String;Ljava/lang/Object;)Lo/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DdmHandleExit;",
            "Ljava/lang/String;",
            "TREQUEST;)",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->d:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a(Lo/DdmHandleExit;Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lo/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lo/SQLiteConnection;)V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    .line 417
    invoke-virtual {p1, v1}, Lo/SQLiteConnection;->b(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->o:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {p1, v0}, Lo/SQLiteConnection;->b(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V

    .line 423
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->l:Z

    if-eqz v0, :cond_2

    .line 424
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    invoke-virtual {p1, v0}, Lo/SQLiteConnection;->b(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V

    :cond_2
    return-void
.end method

.method public f()Lo/SQLiteCustomFunction;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->k:Lo/SQLiteCustomFunction;

    return-object v0
.end method

.method public g()Lo/DdmHandleExit;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->s:Lo/DdmHandleExit;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->q:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lo/SQLiteConnection;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->j()V

    .line 290
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 291
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h:Ljava/lang/Object;

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->m()Lo/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method protected j()V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Cannot specify both ImageRequest and FirstAvailableImageRequests!"

    invoke-static {v0, v3}, Lo/StringParceledListSlice;->a(ZLjava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Lo/UserInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:[Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h:Ljava/lang/Object;

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const-string v0, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other."

    invoke-static {v1, v0}, Lo/StringParceledListSlice;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method public synthetic l()Lo/DdmHandleExit;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i()Lo/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method protected m()Lo/SQLiteConnection;
    .locals 2

    .line 311
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeControllerBuilder#buildController"

    .line 312
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lo/SQLiteConnection;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/SQLiteConnection;->e(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/SQLiteConnection;->c(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f()Lo/SQLiteCustomFunction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/SQLiteConnection;->a(Lo/SQLiteCustomFunction;)V

    .line 318
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c(Lo/SQLiteConnection;)V

    .line 319
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e(Lo/SQLiteConnection;)V

    .line 320
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-object v0
.end method

.method protected final n()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation

    return-object p0
.end method
