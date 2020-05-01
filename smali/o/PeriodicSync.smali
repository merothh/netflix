.class public abstract Lo/PeriodicSync;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/PeriodicSync<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private B:Z

.field private a:F

.field private b:Lcom/bumptech/glide/Priority;

.field private c:Lo/PauseActivityItem;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Lo/FileBackupHelperBase;

.field private p:I

.field private q:Lo/FullBackupAgent;

.field private r:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/RestoreObserver<",
            "*>;>;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Z

.field private v:Landroid/content/res/Resources$Theme;

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    iput v0, p0, Lo/PeriodicSync;->a:F

    .line 74
    sget-object v0, Lo/PauseActivityItem;->d:Lo/PauseActivityItem;

    iput-object v0, p0, Lo/PeriodicSync;->c:Lo/PauseActivityItem;

    .line 76
    sget-object v0, Lcom/bumptech/glide/Priority;->a:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lo/PeriodicSync;->b:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lo/PeriodicSync;->i:Z

    const/4 v1, -0x1

    .line 85
    iput v1, p0, Lo/PeriodicSync;->h:I

    .line 86
    iput v1, p0, Lo/PeriodicSync;->m:I

    .line 88
    invoke-static {}, Lo/ActivityInfo;->b()Lo/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lo/PeriodicSync;->o:Lo/FileBackupHelperBase;

    .line 90
    iput-boolean v0, p0, Lo/PeriodicSync;->k:Z

    .line 94
    new-instance v1, Lo/FullBackupAgent;

    invoke-direct {v1}, Lo/FullBackupAgent;-><init>()V

    iput-object v1, p0, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    .line 96
    new-instance v1, Lo/ConfigurationInfo;

    invoke-direct {v1}, Lo/ConfigurationInfo;-><init>()V

    iput-object v1, p0, Lo/PeriodicSync;->s:Ljava/util/Map;

    .line 98
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lo/PeriodicSync;->r:Ljava/lang/Class;

    .line 106
    iput-boolean v0, p0, Lo/PeriodicSync;->y:Z

    return-void
.end method

.method private K()Lo/PeriodicSync;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;Z)Lo/PeriodicSync;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 889
    invoke-virtual {p0, p1, p2}, Lo/PeriodicSync;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/PeriodicSync;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 890
    iput-boolean p2, p1, Lo/PeriodicSync;->y:Z

    return-object p1
.end method

.method private b()Lo/PeriodicSync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1314
    iget-boolean v0, p0, Lo/PeriodicSync;->t:Z

    if-nez v0, :cond_0

    .line 1317
    invoke-direct {p0}, Lo/PeriodicSync;->K()Lo/PeriodicSync;

    move-result-object v0

    return-object v0

    .line 1315
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 872
    invoke-direct {p0, p1, p2, v0}, Lo/PeriodicSync;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;Z)Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 878
    invoke-direct {p0, p1, p2, v0}, Lo/PeriodicSync;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;Z)Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method private e(I)Z
    .locals 1

    .line 1435
    iget v0, p0, Lo/PeriodicSync;->d:I

    invoke-static {v0, p1}, Lo/PeriodicSync;->c(II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/16 v0, 0x8

    .line 1406
    invoke-direct {p0, v0}, Lo/PeriodicSync;->e(I)Z

    move-result v0

    return v0
.end method

.method public final B()Lcom/bumptech/glide/Priority;
    .locals 1

    .line 1411
    iget-object v0, p0, Lo/PeriodicSync;->b:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final C()I
    .locals 1

    .line 1423
    iget v0, p0, Lo/PeriodicSync;->h:I

    return v0
.end method

.method public final D()I
    .locals 1

    .line 1415
    iget v0, p0, Lo/PeriodicSync;->m:I

    return v0
.end method

.method public E()Z
    .locals 1

    .line 1431
    iget-boolean v0, p0, Lo/PeriodicSync;->y:Z

    return v0
.end method

.method public final F()Z
    .locals 1

    .line 1453
    iget-boolean v0, p0, Lo/PeriodicSync;->u:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    .line 1447
    iget-boolean v0, p0, Lo/PeriodicSync;->B:Z

    return v0
.end method

.method public final H()F
    .locals 1

    .line 1427
    iget v0, p0, Lo/PeriodicSync;->a:F

    return v0
.end method

.method public final I()Z
    .locals 1

    .line 1441
    iget-boolean v0, p0, Lo/PeriodicSync;->x:Z

    return v0
.end method

.method public a()Lo/PeriodicSync;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 546
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PeriodicSync;

    .line 547
    new-instance v1, Lo/FullBackupAgent;

    invoke-direct {v1}, Lo/FullBackupAgent;-><init>()V

    iput-object v1, v0, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    .line 548
    iget-object v1, v0, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    iget-object v2, p0, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    invoke-virtual {v1, v2}, Lo/FullBackupAgent;->d(Lo/FullBackupAgent;)V

    .line 549
    new-instance v1, Lo/ConfigurationInfo;

    invoke-direct {v1}, Lo/ConfigurationInfo;-><init>()V

    iput-object v1, v0, Lo/PeriodicSync;->s:Ljava/util/Map;

    .line 550
    iget-object v1, v0, Lo/PeriodicSync;->s:Ljava/util/Map;

    iget-object v2, p0, Lo/PeriodicSync;->s:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 551
    iput-boolean v1, v0, Lo/PeriodicSync;->t:Z

    .line 552
    iput-boolean v1, v0, Lo/PeriodicSync;->w:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 555
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(F)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PeriodicSync;->a(F)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 134
    iput p1, p0, Lo/PeriodicSync;->a:F

    .line 135
    iget p1, p0, Lo/PeriodicSync;->d:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo/PeriodicSync;->d:I

    .line 137
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 132
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 476
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/PeriodicSync;->a(II)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 480
    :cond_0
    iput p1, p0, Lo/PeriodicSync;->m:I

    .line 481
    iput p2, p0, Lo/PeriodicSync;->h:I

    .line 482
    iget p1, p0, Lo/PeriodicSync;->d:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lo/PeriodicSync;->d:I

    .line 484
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")TT;"
        }
    .end annotation

    .line 695
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->g:Lo/FullBackupDataOutput;

    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lo/PeriodicSync;->a(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 846
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/PeriodicSync;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 850
    :cond_0
    invoke-virtual {p0, p1}, Lo/PeriodicSync;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lo/PeriodicSync;

    const/4 p1, 0x0

    .line 851
    invoke-virtual {p0, p2, p1}, Lo/PeriodicSync;->e(Lo/RestoreObserver;Z)Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/Class;Lo/RestoreObserver;Z)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lo/RestoreObserver<",
            "TY;>;Z)TT;"
        }
    .end annotation

    .line 1035
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/PeriodicSync;->a(Ljava/lang/Class;Lo/RestoreObserver;Z)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 1039
    :cond_0
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    invoke-static {p2}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    iget-object v0, p0, Lo/PeriodicSync;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget p1, p0, Lo/PeriodicSync;->d:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lo/PeriodicSync;->d:I

    const/4 p1, 0x1

    .line 1043
    iput-boolean p1, p0, Lo/PeriodicSync;->k:Z

    .line 1044
    iget p2, p0, Lo/PeriodicSync;->d:I

    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    iput p2, p0, Lo/PeriodicSync;->d:I

    const/4 p2, 0x0

    .line 1047
    iput-boolean p2, p0, Lo/PeriodicSync;->y:Z

    if-eqz p3, :cond_1

    .line 1049
    iget p2, p0, Lo/PeriodicSync;->d:I

    const/high16 p3, 0x20000

    or-int/2addr p2, p3

    iput p2, p0, Lo/PeriodicSync;->d:I

    .line 1050
    iput-boolean p1, p0, Lo/PeriodicSync;->l:Z

    .line 1052
    :cond_1
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/FullBackupDataOutput<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 562
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/PeriodicSync;->a(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 566
    :cond_0
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-static {p2}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    invoke-virtual {v0, p1, p2}, Lo/FullBackupAgent;->e(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/FullBackupAgent;

    .line 569
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/PeriodicSync;)Lo/PeriodicSync;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PeriodicSync<",
            "*>;)TT;"
        }
    .end annotation

    .line 1129
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PeriodicSync;->a(Lo/PeriodicSync;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 1134
    :cond_0
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    iget v0, p1, Lo/PeriodicSync;->a:F

    iput v0, p0, Lo/PeriodicSync;->a:F

    .line 1137
    :cond_1
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1138
    iget-boolean v0, p1, Lo/PeriodicSync;->x:Z

    iput-boolean v0, p0, Lo/PeriodicSync;->x:Z

    .line 1140
    :cond_2
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1141
    iget-boolean v0, p1, Lo/PeriodicSync;->B:Z

    iput-boolean v0, p0, Lo/PeriodicSync;->B:Z

    .line 1143
    :cond_3
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1144
    iget-object v0, p1, Lo/PeriodicSync;->c:Lo/PauseActivityItem;

    iput-object v0, p0, Lo/PeriodicSync;->c:Lo/PauseActivityItem;

    .line 1146
    :cond_4
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1147
    iget-object v0, p1, Lo/PeriodicSync;->b:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lo/PeriodicSync;->b:Lcom/bumptech/glide/Priority;

    .line 1149
    :cond_5
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1150
    iget-object v0, p1, Lo/PeriodicSync;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lo/PeriodicSync;->e:Landroid/graphics/drawable/Drawable;

    .line 1151
    iput v1, p0, Lo/PeriodicSync;->g:I

    .line 1152
    iget v0, p0, Lo/PeriodicSync;->d:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lo/PeriodicSync;->d:I

    .line 1154
    :cond_6
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1155
    iget v0, p1, Lo/PeriodicSync;->g:I

    iput v0, p0, Lo/PeriodicSync;->g:I

    .line 1156
    iput-object v2, p0, Lo/PeriodicSync;->e:Landroid/graphics/drawable/Drawable;

    .line 1157
    iget v0, p0, Lo/PeriodicSync;->d:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lo/PeriodicSync;->d:I

    .line 1159
    :cond_7
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1160
    iget-object v0, p1, Lo/PeriodicSync;->j:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lo/PeriodicSync;->j:Landroid/graphics/drawable/Drawable;

    .line 1161
    iput v1, p0, Lo/PeriodicSync;->f:I

    .line 1162
    iget v0, p0, Lo/PeriodicSync;->d:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lo/PeriodicSync;->d:I

    .line 1164
    :cond_8
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1165
    iget v0, p1, Lo/PeriodicSync;->f:I

    iput v0, p0, Lo/PeriodicSync;->f:I

    .line 1166
    iput-object v2, p0, Lo/PeriodicSync;->j:Landroid/graphics/drawable/Drawable;

    .line 1167
    iget v0, p0, Lo/PeriodicSync;->d:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lo/PeriodicSync;->d:I

    .line 1169
    :cond_9
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1170
    iget-boolean v0, p1, Lo/PeriodicSync;->i:Z

    iput-boolean v0, p0, Lo/PeriodicSync;->i:Z

    .line 1172
    :cond_a
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1173
    iget v0, p1, Lo/PeriodicSync;->m:I

    iput v0, p0, Lo/PeriodicSync;->m:I

    .line 1174
    iget v0, p1, Lo/PeriodicSync;->h:I

    iput v0, p0, Lo/PeriodicSync;->h:I

    .line 1176
    :cond_b
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1177
    iget-object v0, p1, Lo/PeriodicSync;->o:Lo/FileBackupHelperBase;

    iput-object v0, p0, Lo/PeriodicSync;->o:Lo/FileBackupHelperBase;

    .line 1179
    :cond_c
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1180
    iget-object v0, p1, Lo/PeriodicSync;->r:Ljava/lang/Class;

    iput-object v0, p0, Lo/PeriodicSync;->r:Ljava/lang/Class;

    .line 1182
    :cond_d
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1183
    iget-object v0, p1, Lo/PeriodicSync;->n:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lo/PeriodicSync;->n:Landroid/graphics/drawable/Drawable;

    .line 1184
    iput v1, p0, Lo/PeriodicSync;->p:I

    .line 1185
    iget v0, p0, Lo/PeriodicSync;->d:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lo/PeriodicSync;->d:I

    .line 1187
    :cond_e
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1188
    iget v0, p1, Lo/PeriodicSync;->p:I

    iput v0, p0, Lo/PeriodicSync;->p:I

    .line 1189
    iput-object v2, p0, Lo/PeriodicSync;->n:Landroid/graphics/drawable/Drawable;

    .line 1190
    iget v0, p0, Lo/PeriodicSync;->d:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lo/PeriodicSync;->d:I

    .line 1192
    :cond_f
    iget v0, p1, Lo/PeriodicSync;->d:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1193
    iget-object v0, p1, Lo/PeriodicSync;->v:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lo/PeriodicSync;->v:Landroid/content/res/Resources$Theme;

    .line 1195
    :cond_10
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1196
    iget-boolean v0, p1, Lo/PeriodicSync;->k:Z

    iput-boolean v0, p0, Lo/PeriodicSync;->k:Z

    .line 1198
    :cond_11
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1199
    iget-boolean v0, p1, Lo/PeriodicSync;->l:Z

    iput-boolean v0, p0, Lo/PeriodicSync;->l:Z

    .line 1201
    :cond_12
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1202
    iget-object v0, p0, Lo/PeriodicSync;->s:Ljava/util/Map;

    iget-object v2, p1, Lo/PeriodicSync;->s:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1203
    iget-boolean v0, p1, Lo/PeriodicSync;->y:Z

    iput-boolean v0, p0, Lo/PeriodicSync;->y:Z

    .line 1205
    :cond_13
    iget v0, p1, Lo/PeriodicSync;->d:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lo/PeriodicSync;->c(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1206
    iget-boolean v0, p1, Lo/PeriodicSync;->u:Z

    iput-boolean v0, p0, Lo/PeriodicSync;->u:Z

    .line 1210
    :cond_14
    iget-boolean v0, p0, Lo/PeriodicSync;->k:Z

    if-nez v0, :cond_15

    .line 1211
    iget-object v0, p0, Lo/PeriodicSync;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1212
    iget v0, p0, Lo/PeriodicSync;->d:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lo/PeriodicSync;->d:I

    .line 1213
    iput-boolean v1, p0, Lo/PeriodicSync;->l:Z

    .line 1214
    iget v0, p0, Lo/PeriodicSync;->d:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lo/PeriodicSync;->d:I

    const/4 v0, 0x1

    .line 1215
    iput-boolean v0, p0, Lo/PeriodicSync;->y:Z

    .line 1218
    :cond_15
    iget v0, p0, Lo/PeriodicSync;->d:I

    iget v1, p1, Lo/PeriodicSync;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lo/PeriodicSync;->d:I

    .line 1219
    iget-object v0, p0, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    iget-object p1, p1, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    invoke-virtual {v0, p1}, Lo/FullBackupAgent;->d(Lo/FullBackupAgent;)V

    .line 1221
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/RestoreObserver;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 912
    invoke-virtual {p0, p1, v0}, Lo/PeriodicSync;->e(Lo/RestoreObserver;Z)Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 181
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PeriodicSync;->a(Z)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    iput-boolean p1, p0, Lo/PeriodicSync;->B:Z

    .line 186
    iget p1, p0, Lo/PeriodicSync;->d:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lo/PeriodicSync;->d:I

    .line 188
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/Priority;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")TT;"
        }
    .end annotation

    .line 243
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PeriodicSync;->b(Lcom/bumptech/glide/Priority;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 247
    :cond_0
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lo/PeriodicSync;->b:Lcom/bumptech/glide/Priority;

    .line 248
    iget p1, p0, Lo/PeriodicSync;->d:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lo/PeriodicSync;->d:I

    .line 250
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/FileBackupHelperBase;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            ")TT;"
        }
    .end annotation

    .line 515
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PeriodicSync;->b(Lo/FileBackupHelperBase;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 519
    :cond_0
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FileBackupHelperBase;

    iput-object p1, p0, Lo/PeriodicSync;->o:Lo/FileBackupHelperBase;

    .line 520
    iget p1, p0, Lo/PeriodicSync;->d:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lo/PeriodicSync;->d:I

    .line 521
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public c()Lo/PeriodicSync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 682
    sget-object v0, Lo/BluetoothProfile;->d:Lo/FullBackupDataOutput;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/PeriodicSync;->a(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/PeriodicSync;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 399
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PeriodicSync;->c(I)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 402
    :cond_0
    iput p1, p0, Lo/PeriodicSync;->g:I

    .line 403
    iget p1, p0, Lo/PeriodicSync;->d:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lo/PeriodicSync;->d:I

    const/4 p1, 0x0

    .line 405
    iput-object p1, p0, Lo/PeriodicSync;->e:Landroid/graphics/drawable/Drawable;

    .line 406
    iget p1, p0, Lo/PeriodicSync;->d:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lo/PeriodicSync;->d:I

    .line 408
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/bumptech/glide/load/DecodeFormat;)Lo/PeriodicSync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")TT;"
        }
    .end annotation

    .line 657
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lo/BluetoothProfile;->e:Lo/FullBackupDataOutput;

    invoke-virtual {p0, v0, p1}, Lo/PeriodicSync;->a(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/PeriodicSync;

    move-result-object v0

    sget-object v1, Lo/ScanCallback;->c:Lo/FullBackupDataOutput;

    .line 659
    invoke-virtual {v0, v1, p1}, Lo/PeriodicSync;->a(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method final c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 861
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/PeriodicSync;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 865
    :cond_0
    invoke-virtual {p0, p1}, Lo/PeriodicSync;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lo/PeriodicSync;

    .line 866
    invoke-virtual {p0, p2}, Lo/PeriodicSync;->a(Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PeriodicSync;->d(I)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 293
    :cond_0
    iput p1, p0, Lo/PeriodicSync;->f:I

    .line 294
    iget p1, p0, Lo/PeriodicSync;->d:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lo/PeriodicSync;->d:I

    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lo/PeriodicSync;->j:Landroid/graphics/drawable/Drawable;

    .line 297
    iget p1, p0, Lo/PeriodicSync;->d:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lo/PeriodicSync;->d:I

    .line 299
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/PauseActivityItem;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PauseActivityItem;",
            ")TT;"
        }
    .end annotation

    .line 225
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PeriodicSync;->d(Lo/PauseActivityItem;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 228
    :cond_0
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PauseActivityItem;

    iput-object p1, p0, Lo/PeriodicSync;->c:Lo/PauseActivityItem;

    .line 229
    iget p1, p0, Lo/PeriodicSync;->d:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo/PeriodicSync;->d:I

    .line 231
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public d(Z)Lo/PeriodicSync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 454
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/PeriodicSync;->d(Z)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 458
    iput-boolean p1, p0, Lo/PeriodicSync;->i:Z

    .line 459
    iget p1, p0, Lo/PeriodicSync;->d:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lo/PeriodicSync;->d:I

    .line 461
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public final d()Z
    .locals 1

    .line 585
    iget-boolean v0, p0, Lo/PeriodicSync;->k:Z

    return v0
.end method

.method public e(Ljava/lang/Class;)Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 575
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PeriodicSync;->e(Ljava/lang/Class;)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 579
    :cond_0
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lo/PeriodicSync;->r:Ljava/lang/Class;

    .line 580
    iget p1, p0, Lo/PeriodicSync;->d:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lo/PeriodicSync;->d:I

    .line 581
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method e(Lo/RestoreObserver;Z)Lo/PeriodicSync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 989
    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lo/PeriodicSync;->a()Lo/PeriodicSync;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/PeriodicSync;->e(Lo/RestoreObserver;Z)Lo/PeriodicSync;

    move-result-object p1

    return-object p1

    .line 993
    :cond_0
    new-instance v0, Lo/BluetoothOutputStream;

    invoke-direct {v0, p1, p2}, Lo/BluetoothOutputStream;-><init>(Lo/RestoreObserver;Z)V

    .line 995
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lo/PeriodicSync;->a(Ljava/lang/Class;Lo/RestoreObserver;Z)Lo/PeriodicSync;

    .line 996
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lo/PeriodicSync;->a(Ljava/lang/Class;Lo/RestoreObserver;Z)Lo/PeriodicSync;

    .line 1001
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lo/BluetoothOutputStream;->a()Lo/RestoreObserver;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lo/PeriodicSync;->a(Ljava/lang/Class;Lo/RestoreObserver;Z)Lo/PeriodicSync;

    .line 1002
    const-class v0, Lo/AdvertisingSetParameters;

    new-instance v1, Lo/PeriodicAdvertisingReport;

    invoke-direct {v1, p1}, Lo/PeriodicAdvertisingReport;-><init>(Lo/RestoreObserver;)V

    invoke-virtual {p0, v0, v1, p2}, Lo/PeriodicSync;->a(Ljava/lang/Class;Lo/RestoreObserver;Z)Lo/PeriodicSync;

    .line 1003
    invoke-direct {p0}, Lo/PeriodicSync;->b()Lo/PeriodicSync;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 1

    const/16 v0, 0x800

    .line 589
    invoke-direct {p0, v0}, Lo/PeriodicSync;->e(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1227
    instance-of v0, p1, Lo/PeriodicSync;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1228
    check-cast p1, Lo/PeriodicSync;

    .line 1229
    iget v0, p1, Lo/PeriodicSync;->a:F

    iget v2, p0, Lo/PeriodicSync;->a:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lo/PeriodicSync;->g:I

    iget v2, p1, Lo/PeriodicSync;->g:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/PeriodicSync;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lo/PeriodicSync;->e:Landroid/graphics/drawable/Drawable;

    .line 1231
    invoke-static {v0, v2}, Lo/FallbackCategoryProvider;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/PeriodicSync;->f:I

    iget v2, p1, Lo/PeriodicSync;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/PeriodicSync;->j:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lo/PeriodicSync;->j:Landroid/graphics/drawable/Drawable;

    .line 1233
    invoke-static {v0, v2}, Lo/FallbackCategoryProvider;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/PeriodicSync;->p:I

    iget v2, p1, Lo/PeriodicSync;->p:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/PeriodicSync;->n:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lo/PeriodicSync;->n:Landroid/graphics/drawable/Drawable;

    .line 1235
    invoke-static {v0, v2}, Lo/FallbackCategoryProvider;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/PeriodicSync;->i:Z

    iget-boolean v2, p1, Lo/PeriodicSync;->i:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/PeriodicSync;->h:I

    iget v2, p1, Lo/PeriodicSync;->h:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/PeriodicSync;->m:I

    iget v2, p1, Lo/PeriodicSync;->m:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lo/PeriodicSync;->l:Z

    iget-boolean v2, p1, Lo/PeriodicSync;->l:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lo/PeriodicSync;->k:Z

    iget-boolean v2, p1, Lo/PeriodicSync;->k:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lo/PeriodicSync;->x:Z

    iget-boolean v2, p1, Lo/PeriodicSync;->x:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lo/PeriodicSync;->u:Z

    iget-boolean v2, p1, Lo/PeriodicSync;->u:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/PeriodicSync;->c:Lo/PauseActivityItem;

    iget-object v2, p1, Lo/PeriodicSync;->c:Lo/PauseActivityItem;

    .line 1243
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PeriodicSync;->b:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lo/PeriodicSync;->b:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    iget-object v2, p1, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    .line 1245
    invoke-virtual {v0, v2}, Lo/FullBackupAgent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PeriodicSync;->s:Ljava/util/Map;

    iget-object v2, p1, Lo/PeriodicSync;->s:Ljava/util/Map;

    .line 1246
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PeriodicSync;->r:Ljava/lang/Class;

    iget-object v2, p1, Lo/PeriodicSync;->r:Ljava/lang/Class;

    .line 1247
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PeriodicSync;->o:Lo/FileBackupHelperBase;

    iget-object v2, p1, Lo/PeriodicSync;->o:Lo/FileBackupHelperBase;

    .line 1248
    invoke-static {v0, v2}, Lo/FallbackCategoryProvider;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PeriodicSync;->v:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lo/PeriodicSync;->v:Landroid/content/res/Resources$Theme;

    .line 1249
    invoke-static {v0, p1}, Lo/FallbackCategoryProvider;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Lo/PeriodicSync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 759
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lo/BluetoothPan;

    invoke-direct {v1}, Lo/BluetoothPan;-><init>()V

    invoke-direct {p0, v0, v1}, Lo/PeriodicSync;->e(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object v0

    return-object v0
.end method

.method public g()Lo/PeriodicSync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 792
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lo/BluetoothMapClient;

    invoke-direct {v1}, Lo/BluetoothMapClient;-><init>()V

    invoke-direct {p0, v0, v1}, Lo/PeriodicSync;->e(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object v0

    return-object v0
.end method

.method public h()Lo/PeriodicSync;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1288
    iput-boolean v0, p0, Lo/PeriodicSync;->t:Z

    .line 1290
    invoke-direct {p0}, Lo/PeriodicSync;->K()Lo/PeriodicSync;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1256
    iget v0, p0, Lo/PeriodicSync;->a:F

    invoke-static {v0}, Lo/FallbackCategoryProvider;->c(F)I

    move-result v0

    .line 1257
    iget v1, p0, Lo/PeriodicSync;->g:I

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->d(II)I

    move-result v0

    .line 1258
    iget-object v1, p0, Lo/PeriodicSync;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->b(Ljava/lang/Object;I)I

    move-result v0

    .line 1259
    iget v1, p0, Lo/PeriodicSync;->f:I

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->d(II)I

    move-result v0

    .line 1260
    iget-object v1, p0, Lo/PeriodicSync;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->b(Ljava/lang/Object;I)I

    move-result v0

    .line 1261
    iget v1, p0, Lo/PeriodicSync;->p:I

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->d(II)I

    move-result v0

    .line 1262
    iget-object v1, p0, Lo/PeriodicSync;->n:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->b(Ljava/lang/Object;I)I

    move-result v0

    .line 1263
    iget-boolean v1, p0, Lo/PeriodicSync;->i:Z

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->e(ZI)I

    move-result v0

    .line 1264
    iget v1, p0, Lo/PeriodicSync;->h:I

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->d(II)I

    move-result v0

    .line 1265
    iget v1, p0, Lo/PeriodicSync;->m:I

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->d(II)I

    move-result v0

    .line 1266
    iget-boolean v1, p0, Lo/PeriodicSync;->l:Z

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->e(ZI)I

    move-result v0

    .line 1267
    iget-boolean v1, p0, Lo/PeriodicSync;->k:Z

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->e(ZI)I

    move-result v0

    .line 1268
    iget-boolean v1, p0, Lo/PeriodicSync;->x:Z

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->e(ZI)I

    move-result v0

    .line 1269
    iget-boolean v1, p0, Lo/PeriodicSync;->u:Z

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->e(ZI)I

    move-result v0

    .line 1270
    iget-object v1, p0, Lo/PeriodicSync;->c:Lo/PauseActivityItem;

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->b(Ljava/lang/Object;I)I

    move-result v0

    .line 1271
    iget-object v1, p0, Lo/PeriodicSync;->b:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->b(Ljava/lang/Object;I)I

    move-result v0

    .line 1272
    iget-object v1, p0, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->b(Ljava/lang/Object;I)I

    move-result v0

    .line 1273
    iget-object v1, p0, Lo/PeriodicSync;->s:Ljava/util/Map;

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->b(Ljava/lang/Object;I)I

    move-result v0

    .line 1274
    iget-object v1, p0, Lo/PeriodicSync;->r:Ljava/lang/Class;

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->b(Ljava/lang/Object;I)I

    move-result v0

    .line 1275
    iget-object v1, p0, Lo/PeriodicSync;->o:Lo/FileBackupHelperBase;

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->b(Ljava/lang/Object;I)I

    move-result v0

    .line 1276
    iget-object v1, p0, Lo/PeriodicSync;->v:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lo/FallbackCategoryProvider;->b(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public i()Lo/PeriodicSync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 727
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->d:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lo/BluetoothMasInstance;

    invoke-direct {v1}, Lo/BluetoothMasInstance;-><init>()V

    invoke-virtual {p0, v0, v1}, Lo/PeriodicSync;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object v0

    return-object v0
.end method

.method public j()Lo/PeriodicSync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 808
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lo/BluetoothMapClient;

    invoke-direct {v1}, Lo/BluetoothMapClient;-><init>()V

    invoke-direct {p0, v0, v1}, Lo/PeriodicSync;->d(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object v0

    return-object v0
.end method

.method public k()Lo/PeriodicSync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1303
    iget-boolean v0, p0, Lo/PeriodicSync;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/PeriodicSync;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1304
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1307
    iput-boolean v0, p0, Lo/PeriodicSync;->w:Z

    .line 1308
    invoke-virtual {p0}, Lo/PeriodicSync;->h()Lo/PeriodicSync;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1349
    iget-object v0, p0, Lo/PeriodicSync;->r:Ljava/lang/Class;

    return-object v0
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/RestoreObserver<",
            "*>;>;"
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Lo/PeriodicSync;->s:Ljava/util/Map;

    return-object v0
.end method

.method public final n()Lo/FullBackupAgent;
    .locals 1

    .line 1344
    iget-object v0, p0, Lo/PeriodicSync;->q:Lo/FullBackupAgent;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1339
    iget-boolean v0, p0, Lo/PeriodicSync;->l:Z

    return v0
.end method

.method public final p()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1376
    iget-object v0, p0, Lo/PeriodicSync;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final q()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1360
    iget-object v0, p0, Lo/PeriodicSync;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final r()Lo/PauseActivityItem;
    .locals 1

    .line 1354
    iget-object v0, p0, Lo/PeriodicSync;->c:Lo/PauseActivityItem;

    return-object v0
.end method

.method public final s()I
    .locals 1

    .line 1370
    iget v0, p0, Lo/PeriodicSync;->f:I

    return v0
.end method

.method public final t()I
    .locals 1

    .line 1365
    iget v0, p0, Lo/PeriodicSync;->g:I

    return v0
.end method

.method public final u()Lo/FileBackupHelperBase;
    .locals 1

    .line 1402
    iget-object v0, p0, Lo/PeriodicSync;->o:Lo/FileBackupHelperBase;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 1397
    iget-boolean v0, p0, Lo/PeriodicSync;->i:Z

    return v0
.end method

.method public final w()I
    .locals 1

    .line 1381
    iget v0, p0, Lo/PeriodicSync;->p:I

    return v0
.end method

.method public final x()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1387
    iget-object v0, p0, Lo/PeriodicSync;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final y()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 1392
    iget-object v0, p0, Lo/PeriodicSync;->v:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final z()Z
    .locals 2

    .line 1419
    iget v0, p0, Lo/PeriodicSync;->m:I

    iget v1, p0, Lo/PeriodicSync;->h:I

    invoke-static {v0, v1}, Lo/FallbackCategoryProvider;->a(II)Z

    move-result v0

    return v0
.end method
