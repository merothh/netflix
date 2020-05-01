.class public Lo/UsageStatsManagerInternal;
.super Lo/FeatureGroupInfo;
.source ""

# interfaces
.implements Lo/TimeSparseArray;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FeatureGroupInfo<",
        "Lo/FileBackupHelperBase;",
        "Lo/Slice<",
        "*>;>;",
        "Lo/TimeSparseArray;"
    }
.end annotation


# instance fields
.field private a:Lo/TimeSparseArray$TaskDescription;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lo/FeatureGroupInfo;-><init>(J)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lo/FileBackupHelperBase;)Lo/Slice;
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lo/FeatureGroupInfo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Slice;

    return-object p1
.end method

.method protected c(Lo/Slice;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 40
    invoke-super {p0, p1}, Lo/FeatureGroupInfo;->d(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-interface {p1}, Lo/Slice;->e()I

    move-result p1

    return p1
.end method

.method public c(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lo/UsageStatsManagerInternal;->b()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 58
    :cond_1
    invoke-virtual {p0}, Lo/UsageStatsManagerInternal;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lo/UsageStatsManagerInternal;->e(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lo/FileBackupHelperBase;

    check-cast p2, Lo/Slice;

    invoke-virtual {p0, p1, p2}, Lo/UsageStatsManagerInternal;->c(Lo/FileBackupHelperBase;Lo/Slice;)V

    return-void
.end method

.method protected c(Lo/FileBackupHelperBase;Lo/Slice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Lo/Slice<",
            "*>;)V"
        }
    .end annotation

    .line 32
    iget-object p1, p0, Lo/UsageStatsManagerInternal;->a:Lo/TimeSparseArray$TaskDescription;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 33
    invoke-interface {p1, p2}, Lo/TimeSparseArray$TaskDescription;->a(Lo/Slice;)V

    :cond_0
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lo/Slice;

    invoke-virtual {p0, p1}, Lo/UsageStatsManagerInternal;->c(Lo/Slice;)I

    move-result p1

    return p1
.end method

.method public d(Lo/TimeSparseArray$TaskDescription;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/UsageStatsManagerInternal;->a:Lo/TimeSparseArray$TaskDescription;

    return-void
.end method

.method public bridge synthetic e(Lo/FileBackupHelperBase;Lo/Slice;)Lo/Slice;
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lo/FeatureGroupInfo;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Slice;

    return-object p1
.end method
