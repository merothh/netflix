.class public Lcom/bumptech/glide/Registry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Registry$NoImageHeaderParserException;,
        Lcom/bumptech/glide/Registry$MissingComponentException;,
        Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;
    }
.end annotation


# instance fields
.field private final a:Lo/BluetoothGattDescriptor;

.field private final b:Lo/Loader;

.field private final c:Lo/CursorLoader;

.field private final d:Lo/JobService;

.field private final e:Lo/PermissionChecker;

.field private final f:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lo/DefaultDataHandler;

.field private final h:Lo/BluetoothDeviceFilter;

.field private final i:Lo/IContentProvider;

.field private final j:Lo/Entity;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lo/IContentProvider;

    invoke-direct {v0}, Lo/IContentProvider;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->i:Lo/IContentProvider;

    .line 56
    new-instance v0, Lo/Entity;

    invoke-direct {v0}, Lo/Entity;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->j:Lo/Entity;

    .line 57
    invoke-static {}, Lo/InstantAppRequest;->e()Lo/CharArrayReader$Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->f:Lo/CharArrayReader$Activity;

    .line 60
    new-instance v0, Lo/BluetoothGattDescriptor;

    iget-object v1, p0, Lcom/bumptech/glide/Registry;->f:Lo/CharArrayReader$Activity;

    invoke-direct {v0, v1}, Lo/BluetoothGattDescriptor;-><init>(Lo/CharArrayReader$Activity;)V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->a:Lo/BluetoothGattDescriptor;

    .line 61
    new-instance v0, Lo/CursorLoader;

    invoke-direct {v0}, Lo/CursorLoader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->c:Lo/CursorLoader;

    .line 62
    new-instance v0, Lo/Loader;

    invoke-direct {v0}, Lo/Loader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->b:Lo/Loader;

    .line 63
    new-instance v0, Lo/PermissionChecker;

    invoke-direct {v0}, Lo/PermissionChecker;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->e:Lo/PermissionChecker;

    .line 64
    new-instance v0, Lo/JobService;

    invoke-direct {v0}, Lo/JobService;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->d:Lo/JobService;

    .line 65
    new-instance v0, Lo/BluetoothDeviceFilter;

    invoke-direct {v0}, Lo/BluetoothDeviceFilter;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->h:Lo/BluetoothDeviceFilter;

    .line 66
    new-instance v0, Lo/DefaultDataHandler;

    invoke-direct {v0}, Lo/DefaultDataHandler;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->g:Lo/DefaultDataHandler;

    const-string v0, "Gif"

    const-string v1, "Bitmap"

    const-string v2, "BitmapDrawable"

    .line 67
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/Registry;->a(Ljava/util/List;)Lcom/bumptech/glide/Registry;

    return-void
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Lo/ObjectPoolItem<",
            "TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->b:Lo/Loader;

    .line 504
    invoke-virtual {v1, p1, p2}, Lo/Loader;->c(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    .line 506
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 507
    iget-object v2, p0, Lcom/bumptech/glide/Registry;->h:Lo/BluetoothDeviceFilter;

    .line 508
    invoke-virtual {v2, v1, p3}, Lo/BluetoothDeviceFilter;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 510
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    .line 512
    iget-object v2, p0, Lcom/bumptech/glide/Registry;->b:Lo/Loader;

    .line 513
    invoke-virtual {v2, p1, v1}, Lo/Loader;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 514
    iget-object v2, p0, Lcom/bumptech/glide/Registry;->h:Lo/BluetoothDeviceFilter;

    .line 515
    invoke-virtual {v2, v1, v5}, Lo/BluetoothDeviceFilter;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo/ScanSettings;

    move-result-object v7

    .line 517
    new-instance v10, Lo/ObjectPoolItem;

    iget-object v8, p0, Lcom/bumptech/glide/Registry;->f:Lo/CharArrayReader$Activity;

    move-object v2, v10

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lo/ObjectPoolItem;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lo/ScanSettings;Lo/CharArrayReader$Activity;)V

    .line 520
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lo/RestoreDescription;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lo/RestoreDescription<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->e:Lo/PermissionChecker;

    invoke-virtual {v0, p1, p2}, Lo/PermissionChecker;->c(Ljava/lang/Class;Lo/RestoreDescription;)V

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/bumptech/glide/Registry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const-string v1, "legacy_prepend_all"

    .line 271
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, "legacy_append"

    .line 272
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object p1, p0, Lcom/bumptech/glide/Registry;->b:Lo/Loader;

    invoke-virtual {p1, v0}, Lo/Loader;->c(Ljava/util/List;)V

    return-object p0
.end method

.method public a(Lo/Slice;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "*>;)Z"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->e:Lo/PermissionChecker;

    invoke-interface {p1}, Lo/Slice;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/PermissionChecker;->c(Ljava/lang/Class;)Lo/RestoreDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Class;Lo/BlobBackupHelper;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lo/BlobBackupHelper<",
            "TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->c:Lo/CursorLoader;

    invoke-virtual {v0, p1, p2}, Lo/CursorLoader;->c(Ljava/lang/Class;Lo/BlobBackupHelper;)V

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lo/BluetoothAvrcpPlayerSettings<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->a:Lo/BluetoothGattDescriptor;

    invoke-virtual {v0, p1}, Lo/BluetoothGattDescriptor;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 588
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lo/SliceProvider;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lo/SliceProvider<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->j:Lo/Entity;

    .line 478
    invoke-virtual {v0, p1, p2, p3}, Lo/Entity;->d(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lo/SliceProvider;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->j:Lo/Entity;

    invoke-virtual {v1, v0}, Lo/Entity;->a(Lo/SliceProvider;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-nez v0, :cond_2

    .line 483
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 486
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 489
    :cond_1
    new-instance v0, Lo/SliceProvider;

    iget-object v8, p0, Lcom/bumptech/glide/Registry;->f:Lo/CharArrayReader$Activity;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lo/SliceProvider;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lo/CharArrayReader$Activity;)V

    .line 493
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->j:Lo/Entity;

    invoke-virtual {v1, p1, p2, p3, v0}, Lo/Entity;->d(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lo/SliceProvider;)V

    :cond_2
    return-object v0
.end method

.method public c(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->g:Lo/DefaultDataHandler;

    invoke-virtual {v0, p1}, Lo/DefaultDataHandler;->b(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;Lo/ScanSettings;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lo/ScanSettings<",
            "TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->h:Lo/BluetoothDeviceFilter;

    invoke-virtual {v0, p1, p2, p3}, Lo/BluetoothDeviceFilter;->c(Ljava/lang/Class;Ljava/lang/Class;Lo/ScanSettings;)V

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->g:Lo/DefaultDataHandler;

    invoke-virtual {v0}, Lo/DefaultDataHandler;->e()Ljava/util/List;

    move-result-object v0

    .line 596
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 597
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    invoke-direct {v0}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw v0
.end method

.method public d(Ljava/lang/Class;Ljava/lang/Class;Lo/BluetoothDevice;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lo/BluetoothDevice<",
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->a:Lo/BluetoothGattDescriptor;

    invoke-virtual {v0, p1, p2, p3}, Lo/BluetoothGattDescriptor;->c(Ljava/lang/Class;Ljava/lang/Class;Lo/BluetoothDevice;)V

    return-object p0
.end method

.method public d(Ljava/lang/Class;Ljava/lang/Class;Lo/FullBackup;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lo/FullBackup<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    const-string v0, "legacy_append"

    .line 155
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lo/FullBackup;)Lcom/bumptech/glide/Registry;

    return-object p0
.end method

.method public d(Lo/WallpaperBackupHelper$Application;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WallpaperBackupHelper$Application<",
            "*>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:Lo/JobService;

    invoke-virtual {v0, p1}, Lo/JobService;->c(Lo/WallpaperBackupHelper$Application;)V

    return-object p0
.end method

.method public d(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->i:Lo/IContentProvider;

    .line 532
    invoke-virtual {v0, p1, p2, p3}, Lo/IContentProvider;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->a:Lo/BluetoothGattDescriptor;

    invoke-virtual {v1, p1}, Lo/BluetoothGattDescriptor;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 537
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 538
    iget-object v3, p0, Lcom/bumptech/glide/Registry;->b:Lo/Loader;

    .line 539
    invoke-virtual {v3, v2, p2}, Lo/Loader;->c(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 540
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 541
    iget-object v4, p0, Lcom/bumptech/glide/Registry;->h:Lo/BluetoothDeviceFilter;

    .line 542
    invoke-virtual {v4, v3, p3}, Lo/BluetoothDeviceFilter;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 543
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 544
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->i:Lo/IContentProvider;

    .line 549
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 548
    invoke-virtual {v1, p1, p2, p3, v2}, Lo/IContentProvider;->e(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    :cond_3
    return-object v0
.end method

.method public d(Ljava/lang/Object;)Lo/BlobBackupHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lo/BlobBackupHelper<",
            "TX;>;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->c:Lo/CursorLoader;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CursorLoader;->a(Ljava/lang/Class;)Lo/BlobBackupHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 576
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lo/FullBackup;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lo/FullBackup<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->b:Lo/Loader;

    invoke-virtual {v0, p1, p4, p2, p3}, Lo/Loader;->c(Ljava/lang/String;Lo/FullBackup;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public e(Lo/Slice;)Lo/RestoreDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Slice<",
            "TX;>;)",
            "Lo/RestoreDescription<",
            "TX;>;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->e:Lo/PermissionChecker;

    invoke-interface {p1}, Lo/Slice;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/PermissionChecker;->c(Ljava/lang/Class;)Lo/RestoreDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 566
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {p1}, Lo/Slice;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public e(Ljava/lang/Object;)Lo/WallpaperBackupHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lo/WallpaperBackupHelper<",
            "TX;>;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:Lo/JobService;

    invoke-virtual {v0, p1}, Lo/JobService;->e(Ljava/lang/Object;)Lo/WallpaperBackupHelper;

    move-result-object p1

    return-object p1
.end method
