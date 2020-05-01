.class public Lo/Kz;
.super Lo/KL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Kz$ActionBar;,
        Lo/Kz$StateListAnimator;,
        Lo/Kz$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/KL<",
        "Lo/AM;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/Kz$TaskDescription;


# instance fields
.field private a:I

.field private final d:Lo/Kz$ActionBar;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Kz$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Kz$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Kz;->c:Lo/Kz$TaskDescription;

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

    .line 48
    invoke-direct/range {p0 .. p7}, Lo/KL;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 68
    new-instance p1, Lo/Kz$ActionBar;

    invoke-direct {p1, p0}, Lo/Kz$ActionBar;-><init>(Lo/Kz;)V

    iput-object p1, p0, Lo/Kz;->d:Lo/Kz$ActionBar;

    .line 72
    sget-object p1, Lcom/netflix/android/imageloader/api/BlurProcessor;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;

    invoke-virtual {p0}, Lo/Kz;->b()Landroid/content/Context;

    move-result-object p2

    const-string p3, "adapterContext"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;->c(Landroid/content/Context;)Lcom/netflix/android/imageloader/api/BlurProcessor;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/android/imageloader/api/BlurProcessor;->a()V

    .line 73
    sget-object p1, Lo/YE;->a:Lo/YE;

    invoke-virtual {p0}, Lo/Kz;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/YE;->c(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;Lo/YH;Lo/YG;Lo/PatternMatcher;)Lo/KL$StateListAnimator;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewsListItemUIView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewsListItemUIPresenter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rowConfigProvider"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lo/Kz$StateListAnimator;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/Kz$StateListAnimator;-><init>(Landroid/view/ViewGroup;Lo/YH;Lo/YG;Lo/PatternMatcher;)V

    check-cast v0, Lo/KL$StateListAnimator;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1}, Lo/KL;->a(Landroid/content/Context;)V

    .line 107
    iget-boolean v0, p0, Lo/Kz;->i:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    iget-object v0, p0, Lo/Kz;->d:Lo/Kz$ActionBar;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lo/Kz;->i:Z

    .line 110
    invoke-virtual {p0}, Lo/Kz;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    if-nez p2, :cond_0

    .line 159
    new-instance p2, Lo/YH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p2, v1, v3, v2, v3}, Lo/YH;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILo/amc;)V

    .line 160
    new-instance v1, Lo/YG;

    invoke-direct {v1, p2, v3, v2, v3}, Lo/YG;-><init>(Lo/YH;Lio/reactivex/subjects/Subject;ILo/amc;)V

    .line 162
    invoke-virtual {p2}, Lo/YH;->y()Landroid/view/View;

    move-result-object v2

    .line 163
    invoke-virtual {p2}, Lo/YH;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 164
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    move-object v0, p0

    check-cast v0, Lo/PatternMatcher;

    invoke-virtual {p0, p1, p2, v1, v0}, Lo/Kz;->a(Landroid/view/ViewGroup;Lo/YH;Lo/YG;Lo/PatternMatcher;)Lo/KL$StateListAnimator;

    move-result-object p1

    goto :goto_0

    .line 168
    :cond_0
    move-object p2, p0

    check-cast p2, Lo/PatternMatcher;

    invoke-virtual {p0, p1, p2, v0}, Lo/Kz;->a(Landroid/view/ViewGroup;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;

    move-result-object p1

    const-string p2, "createLoadingViewHolder(parent, this, lp)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/KL$StateListAnimator;

    :goto_0
    return-object p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1}, Lo/KL;->b(Landroid/content/Context;)V

    .line 99
    iget-boolean v0, p0, Lo/Kz;->i:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    iget-object v0, p0, Lo/Kz;->d:Lo/Kz$ActionBar;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lo/Kz;->i:Z

    :cond_0
    return-void
.end method

.method public b(Lo/KL$StateListAnimator;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p1, Lo/KL$StateListAnimator;->d:Landroid/view/View;

    const-string v1, "holder.cover"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lo/Kz;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    .line 185
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 186
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 187
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 188
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 191
    :cond_0
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-super {p0, p1, p2}, Lo/KL;->b(Lo/ParcelFormatException$Activity;I)V

    return-void
.end method

.method public bridge synthetic b(Lo/ParcelFormatException$Activity;I)V
    .locals 0

    .line 39
    check-cast p1, Lo/KL$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Kz;->b(Lo/KL$StateListAnimator;I)V

    return-void
.end method

.method public c(Lo/KL$StateListAnimator;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    move-object v0, p1

    check-cast v0, Lo/ParcelFormatException$Activity;

    invoke-super {p0, v0}, Lo/KL;->c(Lo/ParcelFormatException$Activity;)V

    .line 147
    iget v0, p0, Lo/Kz;->a:I

    if-nez v0, :cond_0

    instance-of v0, p1, Lo/Kz$StateListAnimator;

    if-eqz v0, :cond_0

    .line 148
    move-object v0, p1

    check-cast v0, Lo/Kz$StateListAnimator;

    invoke-virtual {v0}, Lo/Kz$StateListAnimator;->h()Lo/Yn;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lo/Kz$StateListAnimator;->f()Lo/akj;

    .line 150
    sget-object v0, Lo/Ym;->a:Lo/Ym;

    iget-object p1, p1, Lo/KL$StateListAnimator;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "holder.itemView.context"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lo/Ym;->e(Lo/Yn;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Lo/ParcelFormatException$Activity;)V
    .locals 0

    .line 39
    check-cast p1, Lo/KL$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Kz;->c(Lo/KL$StateListAnimator;)V

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Lo/KL;->d(Landroid/content/Context;)V

    .line 93
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    iget-object v0, p0, Lo/Kz;->d:Lo/Kz$ActionBar;

    check-cast v0, Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SMOOTH_SCROLL_TO_PREVIEW_ON_EXIT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lo/Kz;->i:Z

    return-void
.end method

.method public d(Landroid/content/Context;Lo/Am;IILo/zU;)V
    .locals 6

    const-string p1, "serviceManager"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "updateVideosManagerCallback"

    invoke-static {p5, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object p1, Lo/YE;->a:Lo/YE;

    invoke-virtual {p1, p3}, Lo/YE;->b(I)V

    .line 116
    sget-object p1, Lo/YE;->a:Lo/YE;

    invoke-virtual {p1, p4}, Lo/YE;->c(I)V

    .line 118
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    invoke-virtual {p0}, Lo/Kz;->j()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    const-string p2, "lomo"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move v1, p3

    move v2, p4

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lo/zG;->d(IILjava/lang/String;Lo/zU;Z)Z

    return-void
.end method

.method protected e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 7

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1, p2}, Lo/KL;->e(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 123
    iput p2, p0, Lo/Kz;->a:I

    if-eqz p2, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    const/4 p2, 0x0

    .line 127
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_2

    .line 128
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v2

    .line 130
    instance-of v3, v2, Lo/Kz$StateListAnimator;

    if-eqz v3, :cond_1

    .line 131
    check-cast v2, Lo/Kz$StateListAnimator;

    invoke-virtual {v2}, Lo/Kz$StateListAnimator;->h()Lo/Yn;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 132
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v2}, Lo/Kz$StateListAnimator;->f()Lo/akj;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 138
    :cond_2
    sget-object p2, Lo/Ym;->a:Lo/Ym;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "recyclerView.context"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lo/Ym;->c(Landroid/content/Context;)V

    .line 139
    sget-object v0, Lo/Ym;->a:Lo/Ym;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lo/Ym;->b(Lo/Ym;Ljava/util/List;Landroid/content/Context;IIILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lo/Kz;->b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method

.method public synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 39
    check-cast p1, Lo/KL$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Kz;->c(Lo/KL$StateListAnimator;)V

    return-void
.end method
