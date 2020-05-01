.class public Lo/BackupAgentHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClipboardManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BackupAgentHelper$StateListAnimator;,
        Lo/BackupAgentHelper$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ClipboardManager;"
    }
.end annotation


# static fields
.field private static final b:Lo/SearchRecentSuggestionsProvider;

.field private static final c:Lo/SearchRecentSuggestionsProvider;

.field private static final j:Lo/SearchRecentSuggestionsProvider;


# instance fields
.field protected final a:Landroid/content/Context;

.field final d:Lo/ClipDescription;

.field protected final e:Lcom/bumptech/glide/Glide;

.field private final f:Ljava/lang/Runnable;

.field private final g:Lo/ContentProviderClient;

.field private final h:Lo/ContentProvider;

.field private final i:Lo/ContentProviderNative;

.field private final k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/ReceiverCallNotAllowedException<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;

.field private m:Lo/SearchRecentSuggestionsProvider;

.field private final n:Lo/DeviceFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/SearchRecentSuggestionsProvider;->c(Ljava/lang/Class;)Lo/SearchRecentSuggestionsProvider;

    move-result-object v0

    invoke-virtual {v0}, Lo/SearchRecentSuggestionsProvider;->h()Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    sput-object v0, Lo/BackupAgentHelper;->c:Lo/SearchRecentSuggestionsProvider;

    .line 60
    const-class v0, Lo/AdvertisingSetParameters;

    invoke-static {v0}, Lo/SearchRecentSuggestionsProvider;->c(Ljava/lang/Class;)Lo/SearchRecentSuggestionsProvider;

    move-result-object v0

    invoke-virtual {v0}, Lo/SearchRecentSuggestionsProvider;->h()Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    sput-object v0, Lo/BackupAgentHelper;->b:Lo/SearchRecentSuggestionsProvider;

    .line 61
    sget-object v0, Lo/PauseActivityItem;->b:Lo/PauseActivityItem;

    .line 62
    invoke-static {v0}, Lo/SearchRecentSuggestionsProvider;->e(Lo/PauseActivityItem;)Lo/SearchRecentSuggestionsProvider;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lo/SearchRecentSuggestionsProvider;->b(Lcom/bumptech/glide/Priority;)Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Lo/SearchRecentSuggestionsProvider;->d(Z)Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    sput-object v0, Lo/BackupAgentHelper;->j:Lo/SearchRecentSuggestionsProvider;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lo/ClipDescription;Lo/ContentProviderNative;Landroid/content/Context;)V
    .locals 7

    .line 94
    new-instance v4, Lo/ContentProviderClient;

    invoke-direct {v4}, Lo/ContentProviderClient;-><init>()V

    .line 99
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->d()Lo/BluetoothLeDeviceFilter;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 94
    invoke-direct/range {v0 .. v6}, Lo/BackupAgentHelper;-><init>(Lcom/bumptech/glide/Glide;Lo/ClipDescription;Lo/ContentProviderNative;Lo/ContentProviderClient;Lo/BluetoothLeDeviceFilter;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/Glide;Lo/ClipDescription;Lo/ContentProviderNative;Lo/ContentProviderClient;Lo/BluetoothLeDeviceFilter;Landroid/content/Context;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lo/ContentProvider;

    invoke-direct {v0}, Lo/ContentProvider;-><init>()V

    iput-object v0, p0, Lo/BackupAgentHelper;->h:Lo/ContentProvider;

    .line 75
    new-instance v0, Lo/BackupAgentHelper$5;

    invoke-direct {v0, p0}, Lo/BackupAgentHelper$5;-><init>(Lo/BackupAgentHelper;)V

    iput-object v0, p0, Lo/BackupAgentHelper;->f:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/BackupAgentHelper;->l:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lo/BackupAgentHelper;->e:Lcom/bumptech/glide/Glide;

    .line 113
    iput-object p2, p0, Lo/BackupAgentHelper;->d:Lo/ClipDescription;

    .line 114
    iput-object p3, p0, Lo/BackupAgentHelper;->i:Lo/ContentProviderNative;

    .line 115
    iput-object p4, p0, Lo/BackupAgentHelper;->g:Lo/ContentProviderClient;

    .line 116
    iput-object p6, p0, Lo/BackupAgentHelper;->a:Landroid/content/Context;

    .line 120
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lo/BackupAgentHelper$Application;

    invoke-direct {p6, p0, p4}, Lo/BackupAgentHelper$Application;-><init>(Lo/BackupAgentHelper;Lo/ContentProviderClient;)V

    .line 119
    invoke-interface {p5, p3, p6}, Lo/BluetoothLeDeviceFilter;->b(Landroid/content/Context;Lo/DeviceFilter$ActionBar;)Lo/DeviceFilter;

    move-result-object p3

    iput-object p3, p0, Lo/BackupAgentHelper;->n:Lo/DeviceFilter;

    .line 127
    invoke-static {}, Lo/FallbackCategoryProvider;->d()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 128
    iget-object p3, p0, Lo/BackupAgentHelper;->l:Landroid/os/Handler;

    iget-object p4, p0, Lo/BackupAgentHelper;->f:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {p2, p0}, Lo/ClipDescription;->d(Lo/ClipboardManager;)V

    .line 132
    :goto_0
    iget-object p3, p0, Lo/BackupAgentHelper;->n:Lo/DeviceFilter;

    invoke-interface {p2, p3}, Lo/ClipDescription;->d(Lo/ClipboardManager;)V

    .line 134
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->e()Lo/AbsoluteFileBackupHelper;

    move-result-object p3

    invoke-virtual {p3}, Lo/AbsoluteFileBackupHelper;->d()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lo/BackupAgentHelper;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->e()Lo/AbsoluteFileBackupHelper;

    move-result-object p2

    invoke-virtual {p2}, Lo/AbsoluteFileBackupHelper;->a()Lo/SearchRecentSuggestionsProvider;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/BackupAgentHelper;->b(Lo/SearchRecentSuggestionsProvider;)V

    .line 138
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/Glide;->d(Lo/BackupAgentHelper;)V

    return-void
.end method

.method private b(Lo/UndoOwner;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UndoOwner<",
            "*>;)V"
        }
    .end annotation

    .line 598
    invoke-virtual {p0, p1}, Lo/BackupAgentHelper;->e(Lo/UndoOwner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lo/BackupAgentHelper;->e:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->c(Lo/UndoOwner;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lo/UndoOwner;->c()Lo/QuickViewConstants;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    invoke-interface {p1}, Lo/UndoOwner;->c()Lo/QuickViewConstants;

    move-result-object v0

    const/4 v1, 0x0

    .line 618
    invoke-interface {p1, v1}, Lo/UndoOwner;->c(Lo/QuickViewConstants;)V

    .line 619
    invoke-interface {v0}, Lo/QuickViewConstants;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lo/BackupAgent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lo/BackupAgent<",
            "TResourceType;>;"
        }
    .end annotation

    .line 564
    new-instance v0, Lo/BackupAgent;

    iget-object v1, p0, Lo/BackupAgentHelper;->e:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lo/BackupAgentHelper;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lo/BackupAgent;-><init>(Lcom/bumptech/glide/Glide;Lo/BackupAgentHelper;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lo/BackupAgentHelper;->g:Lo/ContentProviderClient;

    invoke-virtual {v0}, Lo/ContentProviderClient;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lo/BackupAgentHelper;->h:Lo/ContentProvider;

    invoke-virtual {v0}, Lo/ContentProvider;->b()V

    .line 338
    iget-object v0, p0, Lo/BackupAgentHelper;->h:Lo/ContentProvider;

    invoke-virtual {v0}, Lo/ContentProvider;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/UndoOwner;

    .line 339
    invoke-virtual {p0, v1}, Lo/BackupAgentHelper;->c(Lo/UndoOwner;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lo/BackupAgentHelper;->h:Lo/ContentProvider;

    invoke-virtual {v0}, Lo/ContentProvider;->c()V

    .line 342
    iget-object v0, p0, Lo/BackupAgentHelper;->g:Lo/ContentProviderClient;

    invoke-virtual {v0}, Lo/ContentProviderClient;->e()V

    .line 343
    iget-object v0, p0, Lo/BackupAgentHelper;->d:Lo/ClipDescription;

    invoke-interface {v0, p0}, Lo/ClipDescription;->b(Lo/ClipboardManager;)V

    .line 344
    iget-object v0, p0, Lo/BackupAgentHelper;->d:Lo/ClipDescription;

    iget-object v1, p0, Lo/BackupAgentHelper;->n:Lo/DeviceFilter;

    invoke-interface {v0, v1}, Lo/ClipDescription;->b(Lo/ClipboardManager;)V

    .line 345
    iget-object v0, p0, Lo/BackupAgentHelper;->l:Landroid/os/Handler;

    iget-object v1, p0, Lo/BackupAgentHelper;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    iget-object v0, p0, Lo/BackupAgentHelper;->e:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/Glide;->e(Lo/BackupAgentHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 580
    new-instance v0, Lo/BackupAgentHelper$StateListAnimator;

    invoke-direct {v0, p1}, Lo/BackupAgentHelper$StateListAnimator;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lo/BackupAgentHelper;->c(Lo/UndoOwner;)V

    return-void
.end method

.method protected declared-synchronized b(Lo/SearchRecentSuggestionsProvider;)V
    .locals 0

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-virtual {p1}, Lo/SearchRecentSuggestionsProvider;->a()Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/SearchRecentSuggestionsProvider;

    invoke-virtual {p1}, Lo/SearchRecentSuggestionsProvider;->k()Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/SearchRecentSuggestionsProvider;

    iput-object p1, p0, Lo/BackupAgentHelper;->m:Lo/SearchRecentSuggestionsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lo/BackupAgentHelper;->g:Lo/ContentProviderClient;

    invoke-virtual {v0}, Lo/ContentProviderClient;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lo/UndoOwner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UndoOwner<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 591
    monitor-exit p0

    return-void

    .line 594
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lo/BackupAgentHelper;->b(Lo/UndoOwner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized c(Lo/UndoOwner;Lo/QuickViewConstants;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UndoOwner<",
            "*>;",
            "Lo/QuickViewConstants;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 640
    :try_start_0
    iget-object v0, p0, Lo/BackupAgentHelper;->h:Lo/ContentProvider;

    invoke-virtual {v0, p1}, Lo/ContentProvider;->d(Lo/UndoOwner;)V

    .line 641
    iget-object p1, p0, Lo/BackupAgentHelper;->g:Lo/ContentProviderClient;

    invoke-virtual {p1, p2}, Lo/ContentProviderClient;->c(Lo/QuickViewConstants;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d(Ljava/lang/Class;)Lo/BackupDataInput;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/BackupDataInput<",
            "*TT;>;"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lo/BackupAgentHelper;->e:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->e()Lo/AbsoluteFileBackupHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AbsoluteFileBackupHelper;->e(Ljava/lang/Class;)Lo/BackupDataInput;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lo/BackupAgentHelper;->c()V

    .line 318
    iget-object v0, p0, Lo/BackupAgentHelper;->h:Lo/ContentProvider;

    invoke-virtual {v0}, Lo/ContentProvider;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Ljava/lang/String;)Lo/BackupAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/BackupAgent<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lo/BackupAgentHelper;->h()Lo/BackupAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/BackupAgent;->c(Ljava/lang/String;)Lo/BackupAgent;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 327
    :try_start_0
    invoke-virtual {p0}, Lo/BackupAgentHelper;->a()V

    .line 328
    iget-object v0, p0, Lo/BackupAgentHelper;->h:Lo/ContentProvider;

    invoke-virtual {v0}, Lo/ContentProvider;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Lo/UndoOwner;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UndoOwner<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 624
    :try_start_0
    invoke-interface {p1}, Lo/UndoOwner;->c()Lo/QuickViewConstants;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 627
    monitor-exit p0

    return v1

    .line 630
    :cond_0
    :try_start_1
    iget-object v2, p0, Lo/BackupAgentHelper;->g:Lo/ContentProviderClient;

    invoke-virtual {v2, v0}, Lo/ContentProviderClient;->e(Lo/QuickViewConstants;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lo/BackupAgentHelper;->h:Lo/ContentProvider;

    invoke-virtual {v0, p1}, Lo/ContentProvider;->c(Lo/UndoOwner;)V

    const/4 v0, 0x0

    .line 632
    invoke-interface {p1, v0}, Lo/UndoOwner;->c(Lo/QuickViewConstants;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 635
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()Lo/BackupAgent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BackupAgent<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 358
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lo/BackupAgentHelper;->a(Ljava/lang/Class;)Lo/BackupAgent;

    move-result-object v0

    sget-object v1, Lo/BackupAgentHelper;->c:Lo/SearchRecentSuggestionsProvider;

    invoke-virtual {v0, v1}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object v0

    return-object v0
.end method

.method public g()Lo/BackupAgent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BackupAgent<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 522
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lo/BackupAgentHelper;->a(Ljava/lang/Class;)Lo/BackupAgent;

    move-result-object v0

    sget-object v1, Lo/BackupAgentHelper;->j:Lo/SearchRecentSuggestionsProvider;

    invoke-virtual {v0, v1}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object v0

    return-object v0
.end method

.method public h()Lo/BackupAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BackupAgent<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 393
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/BackupAgentHelper;->a(Ljava/lang/Class;)Lo/BackupAgent;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized i()Lo/SearchRecentSuggestionsProvider;
    .locals 1

    monitor-enter p0

    .line 649
    :try_start_0
    iget-object v0, p0, Lo/BackupAgentHelper;->m:Lo/SearchRecentSuggestionsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ReceiverCallNotAllowedException<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lo/BackupAgentHelper;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 659
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BackupAgentHelper;->g:Lo/ContentProviderClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BackupAgentHelper;->i:Lo/ContentProviderNative;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
