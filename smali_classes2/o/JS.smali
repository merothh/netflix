.class public Lo/JS;
.super Lo/KA;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/JS$StateListAnimator;,
        Lo/JS$ActionBar;,
        Lo/JS$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/KA<",
        "Lo/JS$TaskDescription;",
        "Lo/Ax;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private c:I

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/JS$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;IILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 79
    invoke-direct/range {v0 .. v7}, Lo/KA;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v8, Lo/JS;->d:Ljava/util/Set;

    .line 80
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result v0

    iput v0, v8, Lo/JS;->c:I

    move v0, p6

    .line 81
    iput v0, v8, Lo/JS;->a:I

    return-void
.end method

.method private a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;)Z"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lo/JS;->f()Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 204
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ax;

    .line 205
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Ax;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 207
    invoke-interface {v0}, Lo/Ax;->a()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-interface {p1}, Lo/Ax;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method private static synthetic b(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "BillboardListAdapter"

    const-string v1, "prefetching billboard failed"

    .line 191
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic d(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/JS;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic d(Lo/JS;Ljava/util/List;Z)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lo/KA;->c(Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic e(Ljava/util/List;Lo/NfcEvent$StateListAnimator;)V
    .locals 2

    .line 187
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p2

    invoke-static {p2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.BILLBOARD_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    const/4 p2, 0x1

    .line 189
    invoke-static {p0, p1, p2}, Lo/JS;->d(Lo/JS;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic e(Lo/JS;Ljava/util/List;Lo/NfcEvent$StateListAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/JS;->e(Ljava/util/List;Lo/NfcEvent$StateListAnimator;)V

    return-void
.end method

.method private r()V
    .locals 3

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.BILLBOARD_CLEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    iget v1, p0, Lo/JS;->a:I

    const-string v2, "lolomoFragmentInstance"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BillboardListAdapter"

    const-string v2, "Sending Clear Billboard broadcast syc"

    .line 266
    invoke-static {v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)I
    .locals 0

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 p2, p2, -0x1

    return p2
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Lo/KA;->a(Landroid/content/Context;)V

    .line 131
    invoke-virtual {p0}, Lo/JS;->d()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object p1

    check-cast p1, Lo/JS$TaskDescription;

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Lo/JS$TaskDescription;->m()V

    .line 138
    invoke-virtual {p1}, Lo/JS$TaskDescription;->c()V

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 147
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 149
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object p1

    check-cast p1, Lo/JS$TaskDescription;

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Lo/JS$TaskDescription;->c()V

    :cond_0
    return-void
.end method

.method protected a(Lo/JS$TaskDescription;Lo/Ax;IZ)V
    .locals 6

    .line 220
    invoke-virtual {p0}, Lo/JS;->g()Lo/Ky;

    move-result-object v1

    iget-object v5, p0, Lo/JS;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/JS$TaskDescription;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method public synthetic a(Lo/ParcelFormatException$Activity;IZ)V
    .locals 0

    .line 64
    check-cast p1, Lo/JS$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/JS;->e(Lo/JS$TaskDescription;IZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lo/JS;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/JS$TaskDescription;

    .line 246
    invoke-virtual {v1}, Lo/JS$TaskDescription;->f()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lo/JS;->j:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lo/JS;->j:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lo/JS;->j:Lio/reactivex/disposables/Disposable;

    .line 254
    :cond_1
    invoke-super {p0, p1}, Lo/KA;->b(Landroid/content/Context;)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lo/JS$TaskDescription;
    .locals 2

    .line 90
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_1

    .line 93
    invoke-static {}, Lo/ady;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 94
    new-instance p2, Lo/Lb;

    iget v1, p0, Lo/JS;->a:I

    invoke-direct {p2, v0, v1}, Lo/Lb;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance p2, Lo/Ld;

    iget v1, p0, Lo/JS;->a:I

    invoke-direct {p2, v0, v1}, Lo/Ld;-><init>(Landroid/content/Context;I)V

    .line 98
    :goto_0
    new-instance v0, Lo/JS$ActionBar;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ap:I

    invoke-direct {v0, p1, p2, p0, v1}, Lo/JS$ActionBar;-><init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lo/PatternMatcher;I)V

    goto :goto_1

    .line 100
    :cond_1
    new-instance p2, Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-direct {p2, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lo/JS$StateListAnimator;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ap:I

    invoke-direct {v0, p1, p2, p0, v1}, Lo/JS$StateListAnimator;-><init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lo/PatternMatcher;I)V

    .line 104
    :goto_1
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ap:I

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setId(I)V

    .line 105
    iget-object p1, p0, Lo/JS;->d:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public c(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 159
    invoke-direct {p0, p1}, Lo/JS;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x0

    .line 160
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Ax;

    if-eqz p2, :cond_5

    .line 162
    invoke-interface {p2}, Lo/Ax;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 164
    invoke-interface {p2}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    invoke-interface {p2}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getHorizontalBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    .line 168
    :cond_0
    invoke-interface {p2}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object p2

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 171
    iget-object v1, p0, Lo/JS;->j:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 176
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p0}, Lo/JS;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lo/Li;->b(Landroid/content/Context;Lcom/netflix/model/leafs/originals/BillboardAsset;)Lio/reactivex/Single;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lo/JS;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lo/Li;->a(Landroid/content/Context;Lcom/netflix/model/leafs/originals/BillboardAsset;)Lio/reactivex/Single;

    move-result-object p2

    if-eqz v0, :cond_2

    .line 180
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_3

    .line 183
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_3
    invoke-static {v1}, Lio/reactivex/Single;->merge(Ljava/lang/Iterable;)Lio/reactivex/Flowable;

    move-result-object p2

    new-instance v0, Lo/JQ;

    invoke-direct {v0, p0, p1}, Lo/JQ;-><init>(Lo/JS;Ljava/util/List;)V

    sget-object p1, Lo/JV;->c:Lo/JV;

    invoke-virtual {p2, v0, p1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/JS;->j:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 197
    :cond_4
    invoke-super {p0, p1, p2}, Lo/KA;->c(Ljava/util/List;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lo/KA;->d(Ljava/util/List;)V

    if-eqz p1, :cond_1

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lo/JS;->c:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lo/JS;->c:I

    .line 119
    invoke-direct {p0}, Lo/JS;->r()V

    :goto_1
    return-void
.end method

.method protected e(Lo/JS$TaskDescription;IZ)V
    .locals 1

    .line 225
    invoke-virtual {p0}, Lo/JS;->g()Lo/Ky;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lo/JS$TaskDescription;->a(Lo/Ky;IZ)V

    return-void
.end method

.method public synthetic e(Lo/ParcelFormatException$Activity;Lo/AR;IZ)V
    .locals 0

    .line 64
    check-cast p1, Lo/JS$TaskDescription;

    check-cast p2, Lo/Ax;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/JS;->a(Lo/JS$TaskDescription;Lo/Ax;IZ)V

    return-void
.end method

.method public e(Lo/PooledStringWriter;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lo/JS;->r()V

    .line 260
    invoke-super {p0, p1}, Lo/KA;->e(Lo/PooledStringWriter;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 230
    iget v0, p0, Lo/JS;->c:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 111
    invoke-static {}, Lo/Kl$ActionBar;->a()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lo/JS;->c(Landroid/view/ViewGroup;I)Lo/JS$TaskDescription;

    move-result-object p1

    return-object p1
.end method
