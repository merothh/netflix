.class public Lo/CursorJoiner;
.super Lo/SQLiteConnection;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SQLiteConnection<",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;",
        "Lo/LegacyRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Lo/LegacyCameraDevice;

.field private final e:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/MacAuthenticatedInputStream;

.field private h:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final i:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private l:Lo/DataSetObserver;

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/PerfMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lo/IBulkCursor;

.field private o:Lo/DatabaseObjectNotClosedException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lo/CursorJoiner;

    sput-object v0, Lo/CursorJoiner;->d:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lo/SQLiteCompatibilityWalFlags;Lo/LegacyCameraDevice;Ljava/util/concurrent/Executor;Lo/TriggerEventListener;Lcom/facebook/common/internal/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lo/SQLiteCompatibilityWalFlags;",
            "Lo/LegacyCameraDevice;",
            "Ljava/util/concurrent/Executor;",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p2, p4, v0, v0}, Lo/SQLiteConnection;-><init>(Lo/SQLiteCompatibilityWalFlags;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    iput-object p1, p0, Lo/CursorJoiner;->b:Landroid/content/res/Resources;

    .line 102
    new-instance p2, Lo/CursorIndexOutOfBoundsException;

    invoke-direct {p2, p1, p3}, Lo/CursorIndexOutOfBoundsException;-><init>(Landroid/content/res/Resources;Lo/LegacyCameraDevice;)V

    iput-object p2, p0, Lo/CursorJoiner;->c:Lo/LegacyCameraDevice;

    .line 103
    iput-object p6, p0, Lo/CursorJoiner;->e:Lcom/facebook/common/internal/ImmutableList;

    .line 104
    iput-object p5, p0, Lo/CursorJoiner;->i:Lo/TriggerEventListener;

    return-void
.end method

.method private a(Lcom/facebook/common/internal/ImmutableList;Lo/LegacyRequestMapper;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;",
            "Lo/LegacyRequestMapper;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/common/internal/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LegacyCameraDevice;

    .line 290
    invoke-interface {v1, p2}, Lo/LegacyCameraDevice;->d(Lo/LegacyRequestMapper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    invoke-interface {v1, p2}, Lo/LegacyCameraDevice;->b(Lo/LegacyRequestMapper;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private c(Lo/LegacyRequestMapper;)V
    .locals 3

    .line 315
    iget-boolean v0, p0, Lo/CursorJoiner;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lo/CursorJoiner;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 320
    new-instance v0, Lo/SQLiteCursor;

    invoke-direct {v0}, Lo/SQLiteCursor;-><init>()V

    .line 321
    new-instance v1, Lo/SQLiteCursorDriver;

    invoke-direct {v1, v0}, Lo/SQLiteCursorDriver;-><init>(Lo/SQLiteConnectionPool;)V

    .line 323
    new-instance v2, Lo/DataSetObserver;

    invoke-direct {v2}, Lo/DataSetObserver;-><init>()V

    iput-object v2, p0, Lo/CursorJoiner;->l:Lo/DataSetObserver;

    .line 324
    invoke-virtual {p0, v1}, Lo/CursorJoiner;->b(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V

    .line 325
    invoke-virtual {p0, v0}, Lo/CursorJoiner;->c(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_1
    iget-object v0, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    if-nez v0, :cond_2

    .line 329
    iget-object v0, p0, Lo/CursorJoiner;->l:Lo/DataSetObserver;

    invoke-virtual {p0, v0}, Lo/CursorJoiner;->c(Lo/IBulkCursor;)V

    .line 332
    :cond_2
    invoke-virtual {p0}, Lo/CursorJoiner;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lo/SQLiteCursor;

    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {p0}, Lo/CursorJoiner;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lo/SQLiteCursor;

    invoke-virtual {p0, p1, v0}, Lo/CursorJoiner;->a(Lo/LegacyRequestMapper;Lo/SQLiteCursor;)V

    :cond_3
    return-void
.end method

.method private c(Lo/UserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;>;)V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lo/CursorJoiner;->h:Lo/UserInfo;

    const/4 p1, 0x0

    .line 208
    invoke-direct {p0, p1}, Lo/CursorJoiner;->c(Lo/LegacyRequestMapper;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1}, Lo/CursorJoiner;->d(Lo/CompatibilityInfo;)Lo/LegacyRequest;

    move-result-object p1

    return-object p1
.end method

.method protected a()Lo/XmlResourceParser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    .line 237
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#getDataSource"

    .line 238
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 240
    invoke-static {v0}, Lo/DexMetadataHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    sget-object v0, Lo/CursorJoiner;->d:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "controller %x: getDataSource"

    invoke-static {v0, v2, v1}, Lo/DexMetadataHelper;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lo/CursorJoiner;->h:Lo/UserInfo;

    invoke-interface {v0}, Lo/UserInfo;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/XmlResourceParser;

    .line 244
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-object v0
.end method

.method protected synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p2, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1, p2}, Lo/CursorJoiner;->c(Ljava/lang/String;Lo/CompatibilityInfo;)V

    return-void
.end method

.method protected a(Lo/CompatibilityInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    .line 375
    invoke-static {p1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void
.end method

.method protected a(Lo/LegacyRequestMapper;Lo/SQLiteCursor;)V
    .locals 2

    .line 343
    invoke-virtual {p0}, Lo/CursorJoiner;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/SQLiteCursor;->e(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lo/CursorJoiner;->o()Lo/DdmHandleHeap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0}, Lo/DdmHandleHeap;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lo/SQLiteReadOnlyDatabaseException;->c(Landroid/graphics/drawable/Drawable;)Lo/SQLiteProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lo/SQLiteProgram;->b()Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v0

    move-object v1, v0

    .line 352
    :cond_0
    invoke-virtual {p2, v1}, Lo/SQLiteCursor;->d(Lo/SQLiteReadOnlyDatabaseException$Activity;)V

    .line 353
    iget-object v0, p0, Lo/CursorJoiner;->l:Lo/DataSetObserver;

    invoke-virtual {v0}, Lo/DataSetObserver;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/SQLiteCursor;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p1}, Lo/LegacyRequestMapper;->h()I

    move-result v0

    invoke-virtual {p1}, Lo/LegacyRequestMapper;->g()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lo/SQLiteCursor;->d(II)V

    .line 356
    invoke-virtual {p1}, Lo/LegacyRequestMapper;->c()I

    move-result p1

    invoke-virtual {p2, p1}, Lo/SQLiteCursor;->b(I)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p2}, Lo/SQLiteCursor;->a()V

    :goto_0
    return-void
.end method

.method protected declared-synchronized a(Lo/MatrixCursor;)V
    .locals 2

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lo/CursorJoiner;->o:Lo/DatabaseObjectNotClosedException;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lo/CursorJoiner;->o:Lo/DatabaseObjectNotClosedException;

    invoke-virtual {v0}, Lo/DatabaseObjectNotClosedException;->a()V

    :cond_0
    if-eqz p1, :cond_2

    .line 144
    iget-object v0, p0, Lo/CursorJoiner;->o:Lo/DatabaseObjectNotClosedException;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Lo/DatabaseObjectNotClosedException;

    invoke-static {}, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->get()Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lo/DatabaseObjectNotClosedException;-><init>(Lo/ObbScanner;Lo/CursorJoiner;)V

    iput-object v0, p0, Lo/CursorJoiner;->o:Lo/DatabaseObjectNotClosedException;

    .line 147
    :cond_1
    iget-object v0, p0, Lo/CursorJoiner;->o:Lo/DatabaseObjectNotClosedException;

    invoke-virtual {v0, p1}, Lo/DatabaseObjectNotClosedException;->b(Lo/MatrixCursor;)V

    .line 148
    iget-object p1, p0, Lo/CursorJoiner;->o:Lo/DatabaseObjectNotClosedException;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/DatabaseObjectNotClosedException;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected b(Lo/CompatibilityInfo;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {p1}, Lo/CompatibilityInfo;->c()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lo/CursorJoiner;->e()Lo/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Lo/IBulkCursor;)V
    .locals 4

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    instance-of v0, v0, Lo/CursorWrapper;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    check-cast v0, Lo/CursorWrapper;

    .line 190
    invoke-virtual {v0, p1}, Lo/CursorWrapper;->e(Lo/IBulkCursor;)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Lo/CursorWrapper;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/IBulkCursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lo/CursorWrapper;-><init>([Lo/IBulkCursor;)V

    iput-object v0, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    goto :goto_0

    .line 195
    :cond_1
    iput-object p1, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lo/PerfMeasurement;)V
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lo/CursorJoiner;->m:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/CursorJoiner;->m:Ljava/util/Set;

    .line 165
    :cond_0
    iget-object v0, p0, Lo/CursorJoiner;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lo/UserInfo;Ljava/lang/String;Lo/MacAuthenticatedInputStream;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lo/IBulkCursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lo/MacAuthenticatedInputStream;",
            "Ljava/lang/Object;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;",
            "Lo/IBulkCursor;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#initialize"

    .line 124
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-super {p0, p2, p4}, Lo/SQLiteConnection;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0, p1}, Lo/CursorJoiner;->c(Lo/UserInfo;)V

    .line 128
    iput-object p3, p0, Lo/CursorJoiner;->g:Lo/MacAuthenticatedInputStream;

    .line 129
    invoke-virtual {p0, p5}, Lo/CursorJoiner;->e(Lcom/facebook/common/internal/ImmutableList;)V

    .line 130
    invoke-virtual {p0}, Lo/CursorJoiner;->c()V

    const/4 p1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lo/CursorJoiner;->c(Lo/LegacyRequestMapper;)V

    .line 132
    invoke-virtual {p0, p6}, Lo/CursorJoiner;->c(Lo/IBulkCursor;)V

    .line 133
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void
.end method

.method protected c(Lo/CompatibilityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 253
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#createDrawable"

    .line 254
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 256
    :cond_0
    invoke-static {p1}, Lo/CompatibilityInfo;->e(Lo/CompatibilityInfo;)Z

    move-result v0

    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 257
    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LegacyRequestMapper;

    .line 259
    invoke-direct {p0, p1}, Lo/CursorJoiner;->c(Lo/LegacyRequestMapper;)V

    .line 261
    iget-object v0, p0, Lo/CursorJoiner;->f:Lcom/facebook/common/internal/ImmutableList;

    .line 262
    invoke-direct {p0, v0, p1}, Lo/CursorJoiner;->a(Lcom/facebook/common/internal/ImmutableList;Lo/LegacyRequestMapper;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 278
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-object v0

    .line 267
    :cond_2
    :try_start_1
    iget-object v0, p0, Lo/CursorJoiner;->e:Lcom/facebook/common/internal/ImmutableList;

    invoke-direct {p0, v0, p1}, Lo/CursorJoiner;->a(Lcom/facebook/common/internal/ImmutableList;Lo/LegacyRequestMapper;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 278
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 279
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-object v0

    .line 272
    :cond_4
    :try_start_2
    iget-object v0, p0, Lo/CursorJoiner;->c:Lo/LegacyCameraDevice;

    invoke-interface {v0, p1}, Lo/LegacyCameraDevice;->b(Lo/LegacyRequestMapper;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    .line 278
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 279
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-object v0

    .line 276
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized image class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 278
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 279
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    throw p1
.end method

.method protected c()V
    .locals 1

    .line 200
    monitor-enter p0

    const/4 v0, 0x0

    .line 201
    :try_start_0
    iput-object v0, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1}, Lo/CursorJoiner;->a(Lo/CompatibilityInfo;)V

    return-void
.end method

.method protected c(Ljava/lang/String;Lo/CompatibilityInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    .line 411
    invoke-super {p0, p1, p2}, Lo/SQLiteConnection;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    monitor-enter p0

    .line 413
    :try_start_0
    iget-object p2, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    if-eqz p2, :cond_0

    .line 414
    iget-object p2, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    const/4 v0, 0x5

    const/4 v1, 0x1

    const-string v2, "PipelineDraweeController"

    invoke-interface {p2, p1, v0, v1, v2}, Lo/IBulkCursor;->b(Ljava/lang/String;IZLjava/lang/String;)V

    .line 417
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Lo/IBulkCursor;)V
    .locals 4

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    instance-of v0, v0, Lo/CursorWrapper;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    check-cast v0, Lo/CursorWrapper;

    .line 178
    invoke-virtual {v0, p1}, Lo/CursorWrapper;->a(Lo/IBulkCursor;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Lo/CursorWrapper;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/IBulkCursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lo/CursorWrapper;-><init>([Lo/IBulkCursor;)V

    iput-object v0, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    goto :goto_0

    .line 183
    :cond_1
    iput-object p1, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lo/CursorJoiner;->j:Z

    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 57
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1}, Lo/CursorJoiner;->c(Lo/CompatibilityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lo/CompatibilityInfo;)Lo/LegacyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)",
            "Lo/LegacyRequest;"
        }
    .end annotation

    .line 364
    invoke-static {p1}, Lo/CompatibilityInfo;->e(Lo/CompatibilityInfo;)Z

    move-result v0

    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 365
    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LegacyRequest;

    return-object p1
.end method

.method public declared-synchronized d()Lo/PerfMeasurement;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 222
    :try_start_0
    iget-object v1, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    if-eqz v1, :cond_0

    .line 223
    new-instance v0, Lo/MergeCursor;

    invoke-virtual {p0}, Lo/CursorJoiner;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/CursorJoiner;->n:Lo/IBulkCursor;

    invoke-direct {v0, v1, v2}, Lo/MergeCursor;-><init>(Ljava/lang/String;Lo/IBulkCursor;)V

    .line 225
    :cond_0
    iget-object v1, p0, Lo/CursorJoiner;->m:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 226
    new-instance v1, Lo/ParameterUtils;

    iget-object v2, p0, Lo/CursorJoiner;->m:Ljava/util/Set;

    invoke-direct {v1, v2}, Lo/ParameterUtils;-><init>(Ljava/util/Set;)V

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v1, v0}, Lo/ParameterUtils;->b(Lo/PerfMeasurement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_1
    monitor-exit p0

    return-object v1

    .line 232
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 380
    instance-of v0, p1, Lo/ContentObserver;

    if-eqz v0, :cond_0

    .line 381
    check-cast p1, Lo/ContentObserver;

    invoke-interface {p1}, Lo/ContentObserver;->a()V

    :cond_0
    return-void
.end method

.method public declared-synchronized d(Lo/PerfMeasurement;)V
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lo/CursorJoiner;->m:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 170
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/CursorJoiner;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected synthetic e(Ljava/lang/Object;)I
    .locals 0

    .line 57
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1}, Lo/CursorJoiner;->b(Lo/CompatibilityInfo;)I

    move-result p1

    return p1
.end method

.method protected e()Lo/CompatibilityInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    .line 387
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#getCachedImage"

    .line 388
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 391
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/CursorJoiner;->i:Lo/TriggerEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/CursorJoiner;->g:Lo/MacAuthenticatedInputStream;

    if-nez v0, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lo/CursorJoiner;->i:Lo/TriggerEventListener;

    iget-object v2, p0, Lo/CursorJoiner;->g:Lo/MacAuthenticatedInputStream;

    invoke-interface {v0, v2}, Lo/TriggerEventListener;->a(Ljava/lang/Object;)Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 396
    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LegacyRequestMapper;

    invoke-virtual {v2}, Lo/LegacyRequestMapper;->b()Lo/LegacyResultMapper;

    move-result-object v2

    invoke-interface {v2}, Lo/LegacyResultMapper;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 397
    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-object v1

    .line 402
    :cond_3
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 403
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_4
    return-object v0

    .line 402
    :cond_5
    :goto_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 403
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_6
    return-object v1

    :catchall_0
    move-exception v0

    .line 402
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 403
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    throw v0
.end method

.method public e(Lcom/facebook/common/internal/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lo/CursorJoiner;->f:Lcom/facebook/common/internal/ImmutableList;

    return-void
.end method

.method public e(Lo/DdmHandleHeap;)V
    .locals 0

    .line 302
    invoke-super {p0, p1}, Lo/SQLiteConnection;->e(Lo/DdmHandleHeap;)V

    const/4 p1, 0x0

    .line 303
    invoke-direct {p0, p1}, Lo/CursorJoiner;->c(Lo/LegacyRequestMapper;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 426
    invoke-static {p0}, Lo/Signature;->b(Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    .line 427
    invoke-super {p0}, Lo/SQLiteConnection;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lo/CursorJoiner;->h:Lo/UserInfo;

    const-string v2, "dataSourceSupplier"

    .line 428
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lo/Signature$ActionBar;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
