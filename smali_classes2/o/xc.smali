.class public Lo/xc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/xZ;

.field private final b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lo/po;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lo/xZ;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/xc;->b:Landroid/util/LongSparseArray;

    .line 29
    iput-object p2, p0, Lo/xc;->e:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lo/xc;->d:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lo/xc;->a:Lo/xZ;

    return-void
.end method


# virtual methods
.method a(J)Lo/pK;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/xc;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/po;

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lo/po;->c()Lo/pK;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method c(J[Lo/sP;Z)V
    .locals 3

    .line 40
    iget-object v0, p0, Lo/xc;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/po;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lo/po;

    iget-object v1, p0, Lo/xc;->e:Landroid/os/Handler;

    iget-object v2, p0, Lo/xc;->c:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-direct {v0, v1, v2}, Lo/po;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 43
    iget-object v1, p0, Lo/xc;->d:Landroid/content/Context;

    iget-object v2, p0, Lo/xc;->a:Lo/xZ;

    invoke-virtual {v0, v1, v2, p3, p4}, Lo/po;->d(Landroid/content/Context;Lo/xZ;[Lo/sP;Z)V

    .line 44
    iget-object p3, p0, Lo/xc;->b:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method c(J)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lo/xc;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 55
    :goto_0
    iget-object v1, p0, Lo/xc;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lo/xc;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/po;

    invoke-virtual {v1}, Lo/po;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lo/xc;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method e(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/xc;->c:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-void
.end method
