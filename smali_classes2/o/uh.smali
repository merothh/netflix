.class public Lo/uh;
.super Lo/tS;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/tJ;Lo/vY;I)V
    .locals 0

    .line 15
    invoke-static {p1, p2, p5}, Lo/ua;->d(Landroid/content/Context;Landroid/os/Looper;I)Lo/ua;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p4, p2}, Lo/tS;-><init>(Lo/ua;Lo/tJ;Lo/vY;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 19
    iget-object v0, p0, Lo/uh;->b:Lo/ua;

    invoke-virtual {v0}, Lo/ua;->c()V

    return-void
.end method

.method public bridge synthetic b(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lo/tS;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lcom/google/android/exoplayer2/source/TrackGroup;J)Ljava/util/List;
    .locals 0

    .line 13
    invoke-super {p0, p1, p2, p3}, Lo/tS;->d(Lcom/google/android/exoplayer2/source/TrackGroup;J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lo/tP;Ljava/util/List;Ljava/util/List;JJZLo/uj$Activity;)V
    .locals 0

    .line 13
    invoke-super/range {p0 .. p9}, Lo/tS;->d(Lo/tP;Ljava/util/List;Ljava/util/List;JJZLo/uj$Activity;)V

    return-void
.end method

.method public bridge synthetic e()Ljava/util/List;
    .locals 1

    .line 13
    invoke-super {p0}, Lo/tS;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(JJ)Ljava/util/List;
    .locals 0

    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Lo/tS;->e(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
