.class Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PackageInstaller$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:J

.field private final b:Ljava/lang/String;

.field private final d:Lo/InstrumentationInfo;

.field private e:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->b:Ljava/lang/String;

    .line 516
    invoke-static {p2}, Lo/InstrumentationInfo;->b(Ljava/io/File;)Lo/InstrumentationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->d:Lo/InstrumentationInfo;

    const-wide/16 p1, -0x1

    .line 517
    iput-wide p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->e:J

    .line 518
    iput-wide p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->a:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/cache/disk/DefaultDiskStorage$3;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1, p2}, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .line 528
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 529
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->d:Lo/InstrumentationInfo;

    invoke-virtual {v0}, Lo/InstrumentationInfo;->e()Ljava/io/File;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->a:J

    .line 532
    :cond_0
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 5

    .line 542
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 543
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->d:Lo/InstrumentationInfo;

    invoke-virtual {v0}, Lo/InstrumentationInfo;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->e:J

    .line 545
    :cond_0
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->e:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lo/InstrumentationInfo;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;->d:Lo/InstrumentationInfo;

    return-object v0
.end method
