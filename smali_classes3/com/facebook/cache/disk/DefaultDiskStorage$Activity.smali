.class Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SELinuxUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field private b:Z

.field final synthetic d:Lcom/facebook/cache/disk/DefaultDiskStorage;


# direct methods
.method private constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->d:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$3;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->d:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 316
    :cond_0
    iget-object v2, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;->a:Ljava/lang/String;

    const-string v3, ".tmp"

    if-ne v2, v3, :cond_1

    .line 317
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->d(Ljava/io/File;)Z

    move-result p1

    return p1

    .line 319
    :cond_1
    iget-object p1, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;->a:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v2, ".cnt"

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lo/StringParceledListSlice;->c(Z)V

    return v0
.end method

.method private d(Ljava/io/File;)Z
    .locals 6

    .line 327
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->d:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->b(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lo/GradientColor;

    move-result-object p1

    invoke-interface {p1}, Lo/GradientColor;->e()J

    move-result-wide v2

    sget-wide v4, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:J

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public b(Ljava/io/File;)V
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->d:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->b:Z

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 305
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->d:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->e(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 307
    iput-boolean p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->b:Z

    :cond_1
    return-void
.end method

.method public e(Ljava/io/File;)V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->d:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->e(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$Activity;->b:Z

    :cond_0
    return-void
.end method
