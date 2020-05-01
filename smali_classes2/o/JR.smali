.class public Lo/JR;
.super Lo/KA;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/JR$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/KA<",
        "Lo/JR$Application;",
        "Lo/Aw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/Ab;

.field private final c:I

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/JR$Application;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p7}, Lo/KA;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 55
    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x2

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lo/JR;->d:Ljava/util/ArrayList;

    .line 61
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result p2

    iput p2, p0, Lo/JR;->c:I

    .line 62
    invoke-direct {p0, p1}, Lo/JR;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lo/JR;->a:Lo/Ab;

    if-nez v0, :cond_0

    .line 146
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Lo/JR$5;

    invoke-direct {v0, p0}, Lo/JR$5;-><init>(Lo/JR;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_0
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v0

    check-cast v0, Lo/JR$Application;

    .line 98
    invoke-static {v0}, Lo/JR$Application;->c(Lo/JR$Application;)Lo/KX;

    move-result-object v0

    invoke-virtual {p0}, Lo/JR;->r()Lo/Ab;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/KX;->c(Landroidx/recyclerview/widget/RecyclerView;Lo/Ab;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/JR;Lo/Ab;)Lo/Ab;
    .locals 0

    .line 47
    iput-object p1, p0, Lo/JR;->a:Lo/Ab;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Lo/KA;->a(Landroid/content/Context;)V

    .line 178
    invoke-direct {p0, p1}, Lo/JR;->c(Landroid/content/Context;)V

    .line 179
    invoke-virtual {p0}, Lo/JR;->d()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    invoke-direct {p0, p1}, Lo/JR;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object p1

    check-cast p1, Lo/JR$Application;

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Lo/JR$Application;->m()V

    .line 191
    invoke-virtual {p1}, Lo/JR$Application;->c()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    .line 163
    invoke-super {p0, p1, p2}, Lo/KA;->a(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    .line 165
    iget-object p1, p0, Lo/JR;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/JR$Application;

    .line 166
    invoke-static {p2}, Lo/JR$Application;->c(Lo/JR$Application;)Lo/KX;

    move-result-object v0

    invoke-virtual {v0}, Lo/KX;->i()V

    .line 167
    invoke-static {p2}, Lo/JR$Application;->c(Lo/JR$Application;)Lo/KX;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lo/KX;->b(I)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lo/JR;->d()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/JR;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 85
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 86
    invoke-direct {p0, p2}, Lo/JR;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 89
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object p1

    check-cast p1, Lo/JR$Application;

    .line 90
    invoke-virtual {p1}, Lo/JR$Application;->c()V

    :cond_0
    return-void
.end method

.method public synthetic a(Lo/ParcelFormatException$Activity;IZ)V
    .locals 0

    .line 47
    check-cast p1, Lo/JR$Application;

    invoke-virtual {p0, p1, p2, p3}, Lo/JR;->d(Lo/JR$Application;IZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/ViewGroup;I)Lo/JR$Application;
    .locals 2

    .line 230
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 231
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cC:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/KX;

    .line 232
    new-instance v0, Lo/JR$Application;

    invoke-virtual {p2}, Lo/KX;->getId()I

    move-result v1

    invoke-direct {v0, p1, p2, p0, v1}, Lo/JR$Application;-><init>(Landroid/view/ViewGroup;Lo/KX;Lo/PatternMatcher;I)V

    .line 233
    iget-object p1, p0, Lo/JR;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    .line 199
    invoke-super {p0, p1}, Lo/KA;->d(Landroid/content/Context;)V

    .line 201
    iget-object p1, p0, Lo/JR;->a:Lo/Ab;

    if-eqz p1, :cond_1

    .line 202
    iget-object p1, p0, Lo/JR;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/JR$Application;

    .line 203
    invoke-static {v0}, Lo/JR$Application;->c(Lo/JR$Application;)Lo/KX;

    move-result-object v1

    invoke-virtual {v1}, Lo/KX;->i()V

    .line 204
    invoke-static {v0}, Lo/JR$Application;->c(Lo/JR$Application;)Lo/KX;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/KX;->b(I)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lo/JR;->b()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->j()Lo/Ah;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->j()Lo/Ah;

    move-result-object p1

    iget-object v0, p0, Lo/JR;->a:Lo/Ab;

    invoke-interface {p1, v0}, Lo/Ah;->e(Lo/Ab;)V

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lo/JR;->a:Lo/Ab;

    :cond_1
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Aw;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-super {p0, p1}, Lo/KA;->d(Ljava/util/List;)V

    if-eqz p1, :cond_1

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lo/JR;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 112
    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Aw;

    .line 115
    invoke-interface {v2}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getVideo()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    invoke-interface {v2}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getVideo()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionId()Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-static {v4}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v8, Lo/JR$1;

    const-string v2, "BigRowListAdapter"

    invoke-direct {v8, p0, v2, v0, v1}, Lo/JR$1;-><init>(Lo/JR;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)V

    invoke-interface/range {v3 .. v8}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected d(Lo/JR$Application;IZ)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lo/JR;->g()Lo/Ky;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lo/JR$Application;->c(Lo/Ky;IZ)V

    return-void
.end method

.method protected e(Lo/JR$Application;Lo/Aw;IZ)V
    .locals 7

    .line 73
    invoke-virtual {p0}, Lo/JR;->g()Lo/Ky;

    move-result-object v1

    iget-object v3, p0, Lo/JR;->g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v6, p0, Lo/JR;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lo/JR$Application;->c(Lo/Ky;Lo/Aw;Lcom/netflix/mediaclient/android/activity/NetflixActivity;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method public bridge synthetic e(Lo/ParcelFormatException$Activity;Lo/AR;IZ)V
    .locals 0

    .line 47
    check-cast p1, Lo/JR$Application;

    check-cast p2, Lo/Aw;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/JR;->e(Lo/JR$Application;Lo/Aw;IZ)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 223
    iget v0, p0, Lo/JR;->c:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Lo/KA;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 245
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p1, p0, Lo/JR;->g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lo/JR;->b(Landroid/view/ViewGroup;I)Lo/JR$Application;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 250
    invoke-super {p0, p1}, Lo/KA;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 251
    iput-object p1, p0, Lo/JR;->g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method public r()Lo/Ab;
    .locals 1

    .line 239
    iget-object v0, p0, Lo/JR;->a:Lo/Ab;

    return-object v0
.end method
