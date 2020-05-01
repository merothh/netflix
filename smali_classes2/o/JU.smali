.class public Lo/JU;
.super Lo/KL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/JU$Activity;,
        Lo/JU$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/KL<",
        "Lo/Az;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/JU$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/JU$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/JU$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/JU;->a:Lo/JU$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lomo"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentAdapter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchStrategy"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct/range {p0 .. p7}, Lo/KL;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method


# virtual methods
.method protected a(Lo/Az;)J
    .locals 9

    const-string v0, "video"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    move-object v0, p1

    check-cast v0, Lo/AR;

    invoke-super {p0, v0}, Lo/KL;->d(Lo/AR;)J

    move-result-wide v0

    const v2, 0xf4243

    int-to-long v2, v2

    mul-long v0, v0, v2

    .line 79
    invoke-interface {p1}, Lo/Az;->P()I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v0, v4

    mul-long v0, v0, v2

    .line 81
    invoke-interface {p1}, Lo/Az;->l()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v7, v4

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    xor-long/2addr v0, v7

    mul-long v0, v0, v2

    .line 83
    invoke-interface {p1}, Lo/Az;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v5, p1

    :cond_1
    xor-long/2addr v0, v5

    return-wide v0
.end method

.method public synthetic a(Lo/ParcelFormatException$Activity;IZ)V
    .locals 0

    .line 42
    check-cast p1, Lo/KL$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/JU;->b(Lo/KL$StateListAnimator;IZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;
    .locals 6

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lo/ady;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    new-instance p2, Lo/Lh;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "parent.context"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lo/Lh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    check-cast p2, Lo/Lk;

    goto :goto_0

    .line 110
    :cond_0
    new-instance p2, Lo/Lk;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lo/Lk;-><init>(Landroid/content/Context;)V

    .line 112
    :goto_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cS:I

    invoke-virtual {p2, v0}, Lo/Lk;->setId(I)V

    .line 113
    new-instance v0, Lo/JU$Activity;

    move-object v1, p0

    check-cast v1, Lo/PatternMatcher;

    invoke-direct {v0, p1, p2, v1}, Lo/JU$Activity;-><init>(Landroid/view/ViewGroup;Lo/Lk;Lo/PatternMatcher;)V

    check-cast v0, Lo/KL$StateListAnimator;

    return-object v0
.end method

.method protected b(Lo/KL$StateListAnimator;IZ)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    check-cast p1, Lo/JU$Activity;

    invoke-virtual {p0}, Lo/JU;->g()Lo/Ky;

    move-result-object v0

    const-string v1, "lomoContext"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2, p3}, Lo/JU$Activity;->e(Lo/Ky;IZ)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Az;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videos"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1}, Lo/KL;->c(Ljava/util/List;)V

    .line 118
    invoke-virtual {p0}, Lo/JU;->b()Landroid/content/Context;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 120
    invoke-static {}, Lo/ady;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p0, p1, v0}, Lo/JU;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method

.method protected c(Lo/KL$StateListAnimator;Lo/AR;IZ)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lo/JU;->g()Lo/Ky;

    move-result-object v2

    const-string v0, "lomoContext"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, Lo/Av;

    iget-object v6, p0, Lo/JU;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const-string p2, "mTrackingInfoHolder"

    invoke-static {v6, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/KL$StateListAnimator;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method public synthetic d(Lo/AR;)J
    .locals 2

    .line 42
    check-cast p1, Lo/Az;

    invoke-virtual {p0, p1}, Lo/JU;->a(Lo/Az;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Landroid/content/Context;Lo/Am;IILo/zU;)V
    .locals 1

    const-string p1, "serviceManager"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "updateVideosManagerCallback"

    invoke-static {p5, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lo/JU;->g()Lo/Ky;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/JU;->g()Lo/Ky;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    const-string v0, "lomoContext.lomo()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 70
    :goto_0
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    invoke-interface {p2, p3, p4, p1, p5}, Lo/zG;->c(IILjava/lang/String;Lo/zU;)Z

    return-void
.end method

.method public d(Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Az;",
            ">;",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")V"
        }
    .end annotation

    const-string v0, "videos"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netflixActivity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 128
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 130
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lo/AK;

    .line 131
    sget-object v8, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->a:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 132
    new-instance v9, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 133
    invoke-virtual {p0}, Lo/JU;->g()Lo/Ky;

    move-result-object v1

    invoke-virtual {v1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/Bv;

    .line 135
    invoke-virtual {p0}, Lo/JU;->g()Lo/Ky;

    move-result-object v1

    invoke-virtual {v1}, Lo/Ky;->a()Ljava/lang/String;

    move-result-object v4

    .line 136
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v6, 0x0

    move-object v1, v9

    move v3, v0

    .line 132
    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lo/Bv;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;)V

    check-cast v9, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 129
    invoke-virtual {p2, v7, v8, v9}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->playerPrepare(Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic e(Lo/ParcelFormatException$Activity;Lo/AR;IZ)V
    .locals 0

    .line 42
    check-cast p1, Lo/KL$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/JU;->c(Lo/KL$StateListAnimator;Lo/AR;IZ)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lo/JU;->b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method

.method public r()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic s()I
    .locals 1

    .line 42
    invoke-virtual {p0}, Lo/JU;->r()I

    move-result v0

    return v0
.end method
