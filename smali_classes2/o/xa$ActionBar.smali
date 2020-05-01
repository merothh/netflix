.class final Lo/xa$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/xa$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/xa$ActionBar;->d:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lo/xa$1;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lo/xa$ActionBar;-><init>()V

    return-void
.end method

.method static synthetic a(Lo/xa$ActionBar;ILorg/chromium/net/RequestFinishedInfo$Metrics;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2}, Lo/xa$ActionBar;->b(ILorg/chromium/net/RequestFinishedInfo$Metrics;)V

    return-void
.end method

.method private b(ILorg/chromium/net/RequestFinishedInfo$Metrics;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lo/xa$ActionBar;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xa$TaskDescription;

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Lo/xa$TaskDescription;

    invoke-direct {v0}, Lo/xa$TaskDescription;-><init>()V

    .line 358
    iget-object v1, p0, Lo/xa$ActionBar;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    :cond_1
    invoke-virtual {v0, p2}, Lo/xa$TaskDescription;->d(Lorg/chromium/net/RequestFinishedInfo$Metrics;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public b()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Application;
    .locals 10

    .line 364
    iget-object v0, p0, Lo/xa$ActionBar;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Application;

    const/4 v1, 0x0

    .line 366
    :goto_0
    iget-object v2, p0, Lo/xa$ActionBar;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 367
    iget-object v2, p0, Lo/xa$ActionBar;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 368
    iget-object v2, p0, Lo/xa$ActionBar;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/xa$TaskDescription;

    .line 369
    new-instance v9, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Application;

    invoke-virtual {v2}, Lo/xa$TaskDescription;->e()J

    move-result-wide v5

    .line 370
    invoke-virtual {v2}, Lo/xa$TaskDescription;->d()J

    move-result-wide v7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Application;-><init>(IJJ)V

    aput-object v9, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
