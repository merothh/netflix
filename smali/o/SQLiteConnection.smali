.class public abstract Lo/SQLiteConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DdmHandleExit;
.implements Lo/SQLiteCompatibilityWalFlags$Application;
.implements Lo/DdmHandleProfiling$ActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SQLiteConnection$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/DdmHandleExit;",
        "Lo/SQLiteCompatibilityWalFlags$Application;",
        "Lo/DdmHandleProfiling$ActionBar;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "TINFO;>;"
        }
    .end annotation
.end field

.field private final c:Lo/SQLiteCompatibilityWalFlags;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/facebook/drawee/components/DraweeEventTracker;

.field private f:Lo/DdmHandleProfiling;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lo/SQLiteCustomFunction;

.field private i:Lo/DdmHandleNativeHeap;

.field private j:Lo/SQLiteCantOpenDatabaseException;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Object;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Lo/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Z

.field private u:Z

.field private x:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lo/SQLiteConnection;

    sput-object v0, Lo/SQLiteConnection;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lo/SQLiteCompatibilityWalFlags;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/facebook/drawee/components/DraweeEventTracker;->d()Lcom/facebook/drawee/components/DraweeEventTracker;

    move-result-object v0

    iput-object v0, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lo/SQLiteConnection;->u:Z

    .line 107
    iput-object p1, p0, Lo/SQLiteConnection;->c:Lo/SQLiteCompatibilityWalFlags;

    .line 108
    iput-object p2, p0, Lo/SQLiteConnection;->d:Ljava/util/concurrent/Executor;

    .line 109
    invoke-direct {p0, p3, p4}, Lo/SQLiteConnection;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lo/SQLiteConnection;Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lo/SQLiteConnection;->e(Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lo/XmlResourceParser;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/XmlResourceParser<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 655
    iget-object v1, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    if-nez v1, :cond_0

    return v0

    .line 662
    :cond_0
    iget-object v1, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    if-ne p2, p1, :cond_1

    iget-boolean p1, p0, Lo/SQLiteConnection;->n:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#init"

    .line 126
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->h:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 130
    iget-boolean v0, p0, Lo/SQLiteConnection;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/SQLiteConnection;->c:Lo/SQLiteCompatibilityWalFlags;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lo/SQLiteConnection;->c:Lo/SQLiteCompatibilityWalFlags;

    invoke-virtual {v0, p0}, Lo/SQLiteCompatibilityWalFlags;->b(Lo/SQLiteCompatibilityWalFlags$Application;)V

    :cond_1
    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lo/SQLiteConnection;->m:Z

    .line 135
    iput-boolean v0, p0, Lo/SQLiteConnection;->o:Z

    .line 136
    invoke-direct {p0}, Lo/SQLiteConnection;->d()V

    .line 137
    iput-boolean v0, p0, Lo/SQLiteConnection;->s:Z

    .line 139
    iget-object v0, p0, Lo/SQLiteConnection;->j:Lo/SQLiteCantOpenDatabaseException;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lo/SQLiteConnection;->j:Lo/SQLiteCantOpenDatabaseException;

    invoke-virtual {v0}, Lo/SQLiteCantOpenDatabaseException;->b()V

    .line 142
    :cond_2
    iget-object v0, p0, Lo/SQLiteConnection;->f:Lo/DdmHandleProfiling;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lo/SQLiteConnection;->f:Lo/DdmHandleProfiling;

    invoke-virtual {v0}, Lo/DdmHandleProfiling;->a()V

    .line 144
    iget-object v0, p0, Lo/SQLiteConnection;->f:Lo/DdmHandleProfiling;

    invoke-virtual {v0, p0}, Lo/DdmHandleProfiling;->e(Lo/DdmHandleProfiling$ActionBar;)V

    .line 146
    :cond_3
    iget-object v0, p0, Lo/SQLiteConnection;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    instance-of v0, v0, Lo/SQLiteConnection$ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lo/SQLiteConnection;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    check-cast v0, Lo/SQLiteConnection$ActionBar;

    invoke-virtual {v0}, Lo/SQLiteConnection$ActionBar;->a()V

    goto :goto_0

    .line 149
    :cond_4
    iput-object v1, p0, Lo/SQLiteConnection;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    .line 151
    :goto_0
    iput-object v1, p0, Lo/SQLiteConnection;->h:Lo/SQLiteCustomFunction;

    .line 153
    iget-object v0, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    if-eqz v0, :cond_5

    .line 154
    iget-object v0, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    invoke-interface {v0}, Lo/DdmHandleNativeHeap;->c()V

    .line 155
    iget-object v0, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    invoke-interface {v0, v1}, Lo/DdmHandleNativeHeap;->c(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iput-object v1, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    .line 158
    :cond_5
    iput-object v1, p0, Lo/SQLiteConnection;->g:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    .line 160
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    sget-object v0, Lo/SQLiteConnection;->b:Ljava/lang/Class;

    const-string v1, "controller %x %s -> %s: initialize"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lo/DexMetadataHelper;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    :cond_6
    iput-object p1, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lo/SQLiteConnection;->l:Ljava/lang/Object;

    .line 165
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 166
    invoke-static {}, Lo/GeofenceHardwareService;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lo/SQLiteConnection;Ljava/lang/String;Lo/XmlResourceParser;FZ)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lo/SQLiteConnection;->d(Ljava/lang/String;Lo/XmlResourceParser;FZ)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 666
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    sget-object v1, Lo/SQLiteConnection;->b:Ljava/lang/Class;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 670
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    const/4 p1, 0x3

    .line 673
    invoke-virtual {p0, p2}, Lo/SQLiteConnection;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x4

    .line 674
    invoke-virtual {p0, p2}, Lo/SQLiteConnection;->e(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "controller %x %s: %s: image: %s %x"

    .line 667
    invoke-static {v1, p1, v2}, Lo/DexMetadataHelper;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lo/SQLiteConnection;Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Object;FZZZ)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p7}, Lo/SQLiteConnection;->d(Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Object;FZZZ)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 186
    iget-boolean v0, p0, Lo/SQLiteConnection;->n:Z

    const/4 v1, 0x0

    .line 187
    iput-boolean v1, p0, Lo/SQLiteConnection;->n:Z

    .line 188
    iput-boolean v1, p0, Lo/SQLiteConnection;->t:Z

    .line 189
    iget-object v1, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 190
    invoke-interface {v1}, Lo/XmlResourceParser;->g()Z

    .line 191
    iput-object v2, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    .line 193
    :cond_0
    iget-object v1, p0, Lo/SQLiteConnection;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Lo/SQLiteConnection;->d(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_1
    iget-object v1, p0, Lo/SQLiteConnection;->q:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 197
    iput-object v2, p0, Lo/SQLiteConnection;->q:Ljava/lang/String;

    .line 199
    :cond_2
    iput-object v2, p0, Lo/SQLiteConnection;->x:Landroid/graphics/drawable/Drawable;

    .line 200
    iget-object v1, p0, Lo/SQLiteConnection;->p:Ljava/lang/Object;

    if-eqz v1, :cond_3

    const-string v3, "release"

    .line 201
    invoke-direct {p0, v3, v1}, Lo/SQLiteConnection;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lo/SQLiteConnection;->p:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lo/SQLiteConnection;->c(Ljava/lang/Object;)V

    .line 203
    iput-object v2, p0, Lo/SQLiteConnection;->p:Ljava/lang/Object;

    :cond_3
    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {p0}, Lo/SQLiteConnection;->f()Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    move-result-object v0

    iget-object v1, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/SQLiteBindOrColumnIndexOutOfRangeException;->d(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v0, 0x2

    .line 679
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    sget-object v1, Lo/SQLiteConnection;->b:Ljava/lang/Class;

    .line 683
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    const-string v2, "controller %x %s: %s: failure: %s"

    move-object v5, p1

    move-object v6, p2

    .line 680
    invoke-static/range {v1 .. v6}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;Lo/XmlResourceParser;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/XmlResourceParser<",
            "TT;>;FZ)V"
        }
    .end annotation

    .line 644
    invoke-direct {p0, p1, p2}, Lo/SQLiteConnection;->a(Ljava/lang/String;Lo/XmlResourceParser;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string p3, "ignore_old_datasource @ onProgress"

    .line 645
    invoke-direct {p0, p3, p1}, Lo/SQLiteConnection;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 646
    invoke-interface {p2}, Lo/XmlResourceParser;->g()Z

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 650
    iget-object p1, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    const/4 p2, 0x0

    invoke-interface {p1, p3, p2}, Lo/DdmHandleNativeHeap;->e(FZ)V

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Object;FZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/XmlResourceParser<",
            "TT;>;TT;FZZZ)V"
        }
    .end annotation

    .line 537
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#onNewResultInternal"

    .line 538
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 541
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/SQLiteConnection;->a(Ljava/lang/String;Lo/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "ignore_old_datasource @ onNewResult"

    .line 542
    invoke-direct {p0, p1, p3}, Lo/SQLiteConnection;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    invoke-virtual {p0, p3}, Lo/SQLiteConnection;->c(Ljava/lang/Object;)V

    .line 544
    invoke-interface {p2}, Lo/XmlResourceParser;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 591
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 592
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    .line 547
    :cond_2
    :try_start_1
    iget-object v0, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p5, :cond_3

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->k:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->n:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 552
    :try_start_2
    invoke-virtual {p0, p3}, Lo/SQLiteConnection;->d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 559
    :try_start_3
    iget-object v0, p0, Lo/SQLiteConnection;->p:Ljava/lang/Object;

    .line 560
    iget-object v1, p0, Lo/SQLiteConnection;->x:Landroid/graphics/drawable/Drawable;

    .line 561
    iput-object p3, p0, Lo/SQLiteConnection;->p:Ljava/lang/Object;

    .line 562
    iput-object p2, p0, Lo/SQLiteConnection;->x:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v2, "release_previous_result @ onNewResult"

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p5, :cond_4

    :try_start_4
    const-string p4, "set_final_result @ onNewResult"

    .line 566
    invoke-direct {p0, p4, p3}, Lo/SQLiteConnection;->c(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p4, 0x0

    .line 567
    iput-object p4, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    .line 568
    iget-object p4, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    invoke-interface {p4, p2, v3, p6}, Lo/DdmHandleNativeHeap;->e(Landroid/graphics/drawable/Drawable;FZ)V

    .line 569
    invoke-virtual {p0}, Lo/SQLiteConnection;->f()Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    move-result-object p4

    invoke-virtual {p0, p3}, Lo/SQLiteConnection;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p0}, Lo/SQLiteConnection;->p()Landroid/graphics/drawable/Animatable;

    move-result-object p6

    invoke-interface {p4, p1, p5, p6}, Lo/SQLiteBindOrColumnIndexOutOfRangeException;->c(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    if-eqz p7, :cond_5

    const-string p4, "set_temporary_result @ onNewResult"

    .line 571
    invoke-direct {p0, p4, p3}, Lo/SQLiteConnection;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    iget-object p4, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    invoke-interface {p4, p2, v3, p6}, Lo/DdmHandleNativeHeap;->e(Landroid/graphics/drawable/Drawable;FZ)V

    .line 573
    invoke-virtual {p0}, Lo/SQLiteConnection;->f()Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    move-result-object p4

    invoke-virtual {p0, p3}, Lo/SQLiteConnection;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p0}, Lo/SQLiteConnection;->p()Landroid/graphics/drawable/Animatable;

    move-result-object p6

    invoke-interface {p4, p1, p5, p6}, Lo/SQLiteBindOrColumnIndexOutOfRangeException;->c(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    goto :goto_1

    :cond_5
    const-string p5, "set_intermediate_result @ onNewResult"

    .line 576
    invoke-direct {p0, p5, p3}, Lo/SQLiteConnection;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 577
    iget-object p5, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    invoke-interface {p5, p2, p4, p6}, Lo/DdmHandleNativeHeap;->e(Landroid/graphics/drawable/Drawable;FZ)V

    .line 578
    invoke-virtual {p0}, Lo/SQLiteConnection;->f()Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    move-result-object p4

    invoke-virtual {p0, p3}, Lo/SQLiteConnection;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p4, p1, p5}, Lo/SQLiteBindOrColumnIndexOutOfRangeException;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, p2, :cond_6

    .line 583
    :try_start_5
    invoke-virtual {p0, v1}, Lo/SQLiteConnection;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    if-eqz v0, :cond_7

    if-eq v0, p3, :cond_7

    .line 586
    invoke-direct {p0, v2, v0}, Lo/SQLiteConnection;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    invoke-virtual {p0, v0}, Lo/SQLiteConnection;->c(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 591
    :cond_7
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 592
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_8
    return-void

    :goto_2
    if-eqz v1, :cond_9

    if-eq v1, p2, :cond_9

    .line 583
    :try_start_6
    invoke-virtual {p0, v1}, Lo/SQLiteConnection;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    if-eqz v0, :cond_a

    if-eq v0, p3, :cond_a

    .line 586
    invoke-direct {p0, v2, v0}, Lo/SQLiteConnection;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    invoke-virtual {p0, v0}, Lo/SQLiteConnection;->c(Ljava/lang/Object;)V

    :cond_a
    throw p1

    :catch_0
    move-exception p4

    const-string p6, "drawable_failed @ onNewResult"

    .line 554
    invoke-direct {p0, p6, p3}, Lo/SQLiteConnection;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    invoke-virtual {p0, p3}, Lo/SQLiteConnection;->c(Ljava/lang/Object;)V

    .line 556
    invoke-direct {p0, p1, p2, p4, p5}, Lo/SQLiteConnection;->e(Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Throwable;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 591
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 592
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_b
    return-void

    :catchall_1
    move-exception p1

    .line 591
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 592
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_c
    throw p1
.end method

.method private e(Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Throwable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/XmlResourceParser<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .line 599
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#onFailureInternal"

    .line 600
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 603
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/SQLiteConnection;->a(Ljava/lang/String;Lo/XmlResourceParser;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ignore_old_datasource @ onFailure"

    .line 604
    invoke-direct {p0, p1, p3}, Lo/SQLiteConnection;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    invoke-interface {p2}, Lo/XmlResourceParser;->g()Z

    .line 606
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 607
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    .line 611
    :cond_2
    iget-object p1, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p4, :cond_3

    sget-object p2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->l:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->m:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    if-eqz p4, :cond_6

    const-string p1, "final_failed @ onFailure"

    .line 615
    invoke-direct {p0, p1, p3}, Lo/SQLiteConnection;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 616
    iput-object p1, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    const/4 p1, 0x1

    .line 617
    iput-boolean p1, p0, Lo/SQLiteConnection;->t:Z

    .line 619
    iget-boolean p2, p0, Lo/SQLiteConnection;->s:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lo/SQLiteConnection;->x:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    .line 620
    iget-object p4, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p4, p2, v0, p1}, Lo/DdmHandleNativeHeap;->e(Landroid/graphics/drawable/Drawable;FZ)V

    goto :goto_1

    .line 621
    :cond_4
    invoke-direct {p0}, Lo/SQLiteConnection;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 622
    iget-object p1, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    invoke-interface {p1, p3}, Lo/DdmHandleNativeHeap;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 624
    :cond_5
    iget-object p1, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    invoke-interface {p1, p3}, Lo/DdmHandleNativeHeap;->d(Ljava/lang/Throwable;)V

    .line 626
    :goto_1
    invoke-virtual {p0}, Lo/SQLiteConnection;->f()Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    move-result-object p1

    iget-object p2, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lo/SQLiteBindOrColumnIndexOutOfRangeException;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    const-string p1, "intermediate_failed @ onFailure"

    .line 629
    invoke-direct {p0, p1, p3}, Lo/SQLiteConnection;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    invoke-virtual {p0}, Lo/SQLiteConnection;->f()Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    move-result-object p1

    iget-object p2, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lo/SQLiteBindOrColumnIndexOutOfRangeException;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 633
    :goto_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 634
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    return-void
.end method

.method private e()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lo/SQLiteConnection;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SQLiteConnection;->j:Lo/SQLiteCantOpenDatabaseException;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/SQLiteCantOpenDatabaseException;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TINFO;"
        }
    .end annotation
.end method

.method protected abstract a()Lo/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Lo/SQLiteCustomFunction;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lo/SQLiteConnection;->h:Lo/SQLiteCustomFunction;

    return-void
.end method

.method protected b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 702
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "<null>"

    :goto_0
    return-object p1
.end method

.method public b(Lo/DdmHandleProfiling;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lo/SQLiteConnection;->f:Lo/DdmHandleProfiling;

    .line 236
    iget-object p1, p0, Lo/SQLiteConnection;->f:Lo/DdmHandleProfiling;

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1, p0}, Lo/DdmHandleProfiling;->e(Lo/DdmHandleProfiling$ActionBar;)V

    :cond_0
    return-void
.end method

.method public b(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "-TINFO;>;)V"
        }
    .end annotation

    .line 260
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lo/SQLiteConnection;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    instance-of v1, v0, Lo/SQLiteConnection$ActionBar;

    if-eqz v1, :cond_0

    .line 262
    check-cast v0, Lo/SQLiteConnection$ActionBar;

    invoke-virtual {v0, p1}, Lo/SQLiteConnection$ActionBar;->e(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 266
    invoke-static {v0, p1}, Lo/SQLiteConnection$ActionBar;->d(Lo/SQLiteBindOrColumnIndexOutOfRangeException;Lo/SQLiteBindOrColumnIndexOutOfRangeException;)Lo/SQLiteConnection$ActionBar;

    move-result-object p1

    iput-object p1, p0, Lo/SQLiteConnection;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    return-void

    .line 273
    :cond_1
    iput-object p1, p0, Lo/SQLiteConnection;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    return-void
.end method

.method protected c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 347
    iput-object p1, p0, Lo/SQLiteConnection;->g:Landroid/graphics/drawable/Drawable;

    .line 348
    iget-object p1, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    if-eqz p1, :cond_0

    .line 349
    iget-object v0, p0, Lo/SQLiteConnection;->g:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lo/DdmHandleNativeHeap;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected abstract c(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lo/SQLiteConnection;->q:Ljava/lang/String;

    return-void
.end method

.method protected abstract d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method protected abstract d(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lo/SQLiteConnection;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lo/SQLiteConnection;->u:Z

    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x2

    .line 414
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lo/SQLiteConnection;->b:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    const-string v3, "controller %x %s: onTouchEvent %s"

    invoke-static {v0, v3, v1, v2, p1}, Lo/DexMetadataHelper;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lo/SQLiteConnection;->f:Lo/DdmHandleProfiling;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 420
    :cond_1
    invoke-virtual {v0}, Lo/DdmHandleProfiling;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lo/SQLiteConnection;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 421
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/SQLiteConnection;->f:Lo/DdmHandleProfiling;

    invoke-virtual {v0, p1}, Lo/DdmHandleProfiling;->e(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected e(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 706
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public e(Lo/DdmHandleHeap;)V
    .locals 4

    const/4 v0, 0x2

    .line 317
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lo/SQLiteConnection;->b:Ljava/lang/Class;

    .line 321
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    const-string v3, "controller %x %s: setHierarchy: %s"

    .line 318
    invoke-static {v0, v3, v1, v2, p1}, Lo/DexMetadataHelper;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->b:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->a:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 328
    iget-boolean v0, p0, Lo/SQLiteConnection;->n:Z

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lo/SQLiteConnection;->c:Lo/SQLiteCompatibilityWalFlags;

    invoke-virtual {v0, p0}, Lo/SQLiteCompatibilityWalFlags;->b(Lo/SQLiteCompatibilityWalFlags$Application;)V

    .line 330
    invoke-virtual {p0}, Lo/SQLiteConnection;->j()V

    .line 333
    :cond_2
    iget-object v0, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 334
    invoke-interface {v0, v1}, Lo/DdmHandleNativeHeap;->c(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iput-object v1, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    :cond_3
    if-eqz p1, :cond_4

    .line 339
    instance-of v0, p1, Lo/DdmHandleNativeHeap;

    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 340
    check-cast p1, Lo/DdmHandleNativeHeap;

    iput-object p1, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    .line 341
    iget-object p1, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    iget-object v0, p0, Lo/SQLiteConnection;->g:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lo/DdmHandleNativeHeap;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public e(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "-TINFO;>;)V"
        }
    .end annotation

    .line 278
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lo/SQLiteConnection;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    instance-of v1, v0, Lo/SQLiteConnection$ActionBar;

    if-eqz v1, :cond_0

    .line 280
    check-cast v0, Lo/SQLiteConnection$ActionBar;

    invoke-virtual {v0, p1}, Lo/SQLiteConnection$ActionBar;->c(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V

    return-void

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 284
    iput-object p1, p0, Lo/SQLiteConnection;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lo/SQLiteConnection;->s:Z

    return-void
.end method

.method protected f()Lo/SQLiteBindOrColumnIndexOutOfRangeException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "TINFO;>;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lo/SQLiteConnection;->a:Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Lo/SQLiteBlobTooBigException;->a()Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lo/DdmHandleProfiling;
    .locals 1

    .line 230
    iget-object v0, p0, Lo/SQLiteConnection;->f:Lo/DdmHandleProfiling;

    return-object v0
.end method

.method public i()Lo/SQLiteCantOpenDatabaseException;
    .locals 1

    .line 222
    iget-object v0, p0, Lo/SQLiteConnection;->j:Lo/SQLiteCantOpenDatabaseException;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lo/SQLiteCantOpenDatabaseException;

    invoke-direct {v0}, Lo/SQLiteCantOpenDatabaseException;-><init>()V

    iput-object v0, p0, Lo/SQLiteConnection;->j:Lo/SQLiteCantOpenDatabaseException;

    .line 225
    :cond_0
    iget-object v0, p0, Lo/SQLiteConnection;->j:Lo/SQLiteCantOpenDatabaseException;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 172
    iget-object v0, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->g:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 173
    iget-object v0, p0, Lo/SQLiteConnection;->j:Lo/SQLiteCantOpenDatabaseException;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lo/SQLiteCantOpenDatabaseException;->a()V

    .line 176
    :cond_0
    iget-object v0, p0, Lo/SQLiteConnection;->f:Lo/DdmHandleProfiling;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Lo/DdmHandleProfiling;->d()V

    .line 179
    :cond_1
    iget-object v0, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    if-eqz v0, :cond_2

    .line 180
    invoke-interface {v0}, Lo/DdmHandleNativeHeap;->c()V

    .line 182
    :cond_2
    invoke-direct {p0}, Lo/SQLiteConnection;->d()V

    return-void
.end method

.method protected k()Z
    .locals 1

    .line 429
    invoke-direct {p0}, Lo/SQLiteConnection;->e()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 5

    .line 360
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#onAttach"

    .line 361
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 363
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    sget-object v0, Lo/SQLiteConnection;->b:Ljava/lang/Class;

    .line 367
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    iget-boolean v3, p0, Lo/SQLiteConnection;->n:Z

    if-eqz v3, :cond_1

    const-string v3, "request already submitted"

    goto :goto_0

    :cond_1
    const-string v3, "request needs submit"

    :goto_0
    const-string v4, "controller %x %s: onAttach: %s"

    .line 364
    invoke-static {v0, v4, v1, v2, v3}, Lo/DexMetadataHelper;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    :cond_2
    iget-object v0, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->j:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 372
    iget-object v0, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    invoke-static {v0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lo/SQLiteConnection;->c:Lo/SQLiteCompatibilityWalFlags;

    invoke-virtual {v0, p0}, Lo/SQLiteCompatibilityWalFlags;->b(Lo/SQLiteCompatibilityWalFlags$Application;)V

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lo/SQLiteConnection;->m:Z

    .line 375
    iget-boolean v0, p0, Lo/SQLiteConnection;->n:Z

    if-nez v0, :cond_3

    .line 376
    invoke-virtual {p0}, Lo/SQLiteConnection;->t()V

    .line 378
    :cond_3
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_4
    return-void
.end method

.method protected m()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 355
    iget-object v0, p0, Lo/SQLiteConnection;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public n()V
    .locals 4

    .line 385
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#onDetach"

    .line 386
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 388
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    sget-object v0, Lo/SQLiteConnection;->b:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    const-string v3, "controller %x %s: onDetach"

    invoke-static {v0, v3, v1, v2}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    :cond_1
    iget-object v0, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->f:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 392
    iput-boolean v0, p0, Lo/SQLiteConnection;->m:Z

    .line 393
    iget-object v0, p0, Lo/SQLiteConnection;->c:Lo/SQLiteCompatibilityWalFlags;

    invoke-virtual {v0, p0}, Lo/SQLiteCompatibilityWalFlags;->e(Lo/SQLiteCompatibilityWalFlags$Application;)V

    .line 394
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-void
.end method

.method public o()Lo/DdmHandleHeap;
    .locals 1

    .line 306
    iget-object v0, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    return-object v0
.end method

.method public p()Landroid/graphics/drawable/Animatable;
    .locals 2

    .line 692
    iget-object v0, p0, Lo/SQLiteConnection;->x:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public s()Z
    .locals 4

    const/4 v0, 0x2

    .line 440
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    sget-object v0, Lo/SQLiteConnection;->b:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    const-string v3, "controller %x %s: onClick"

    invoke-static {v0, v3, v1, v2}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    :cond_0
    invoke-direct {p0}, Lo/SQLiteConnection;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lo/SQLiteConnection;->j:Lo/SQLiteCantOpenDatabaseException;

    invoke-virtual {v0}, Lo/SQLiteCantOpenDatabaseException;->d()V

    .line 445
    iget-object v0, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    invoke-interface {v0}, Lo/DdmHandleNativeHeap;->c()V

    .line 446
    invoke-virtual {p0}, Lo/SQLiteConnection;->t()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected t()V
    .locals 9

    .line 453
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#submitRequest"

    .line 454
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 456
    :cond_0
    invoke-virtual {p0}, Lo/SQLiteConnection;->b()Ljava/lang/Object;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v4, :cond_4

    .line 458
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AbstractDraweeController#submitRequest->cache"

    .line 459
    invoke-static {v2}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    .line 461
    iput-object v2, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    .line 462
    iput-boolean v1, p0, Lo/SQLiteConnection;->n:Z

    .line 463
    iput-boolean v0, p0, Lo/SQLiteConnection;->t:Z

    .line 464
    iget-object v0, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->y:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 465
    invoke-virtual {p0}, Lo/SQLiteConnection;->f()Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    move-result-object v0

    iget-object v1, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    iget-object v2, p0, Lo/SQLiteConnection;->l:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lo/SQLiteBindOrColumnIndexOutOfRangeException;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lo/SQLiteConnection;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    iget-object v2, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    iget-object v3, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lo/SQLiteConnection;->d(Ljava/lang/String;Lo/XmlResourceParser;Ljava/lang/Object;FZZZ)V

    .line 468
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 471
    :cond_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-void

    .line 476
    :cond_4
    iget-object v2, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v3, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->i:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 477
    invoke-virtual {p0}, Lo/SQLiteConnection;->f()Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    move-result-object v2

    iget-object v3, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    iget-object v4, p0, Lo/SQLiteConnection;->l:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lo/SQLiteBindOrColumnIndexOutOfRangeException;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    iget-object v2, p0, Lo/SQLiteConnection;->i:Lo/DdmHandleNativeHeap;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lo/DdmHandleNativeHeap;->e(FZ)V

    .line 479
    iput-boolean v1, p0, Lo/SQLiteConnection;->n:Z

    .line 480
    iput-boolean v0, p0, Lo/SQLiteConnection;->t:Z

    .line 481
    invoke-virtual {p0}, Lo/SQLiteConnection;->a()Lo/XmlResourceParser;

    move-result-object v0

    iput-object v0, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    const/4 v0, 0x2

    .line 482
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 483
    sget-object v0, Lo/SQLiteConnection;->b:Ljava/lang/Class;

    .line 486
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    iget-object v3, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    .line 488
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "controller %x %s: submitRequest: dataSource: %x"

    .line 483
    invoke-static {v0, v4, v1, v2, v3}, Lo/DexMetadataHelper;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 490
    :cond_5
    iget-object v0, p0, Lo/SQLiteConnection;->k:Ljava/lang/String;

    .line 491
    iget-object v1, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    invoke-interface {v1}, Lo/XmlResourceParser;->a()Z

    move-result v1

    .line 492
    new-instance v2, Lo/SQLiteConnection$5;

    invoke-direct {v2, p0, v0, v1}, Lo/SQLiteConnection$5;-><init>(Lo/SQLiteConnection;Ljava/lang/String;Z)V

    .line 522
    iget-object v0, p0, Lo/SQLiteConnection;->r:Lo/XmlResourceParser;

    iget-object v1, p0, Lo/SQLiteConnection;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2, v1}, Lo/XmlResourceParser;->a(Lo/BulkCursorNative;Ljava/util/concurrent/Executor;)V

    .line 523
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 524
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 715
    invoke-static {p0}, Lo/Signature;->b(Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lo/SQLiteConnection;->m:Z

    const-string v2, "isAttached"

    .line 716
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->a(Ljava/lang/String;Z)Lo/Signature$ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lo/SQLiteConnection;->n:Z

    const-string v2, "isRequestSubmitted"

    .line 717
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->a(Ljava/lang/String;Z)Lo/Signature$ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lo/SQLiteConnection;->t:Z

    const-string v2, "hasFetchFailed"

    .line 718
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->a(Ljava/lang/String;Z)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lo/SQLiteConnection;->p:Ljava/lang/Object;

    .line 719
    invoke-virtual {p0, v1}, Lo/SQLiteConnection;->e(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "fetchedImage"

    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->e(Ljava/lang/String;I)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lo/SQLiteConnection;->e:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 720
    invoke-virtual {v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    .line 721
    invoke-virtual {v0}, Lo/Signature$ActionBar;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
