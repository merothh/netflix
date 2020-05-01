.class public final Lo/XF;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/Xv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XF$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/XF$TaskDescription;


# instance fields
.field private final b:Lo/ImageSwitcher;

.field private final c:Landroid/view/ViewGroup;

.field private final e:Landroidx/recyclerview/widget/RecyclerView;

.field private final f:Lo/XC;

.field private g:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final i:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/XF$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/XF$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/XF;->d:Lo/XF$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/XF;->i:Landroid/view/ViewGroup;

    .line 27
    iget-object p1, p0, Lo/XF;->i:Landroid/view/ViewGroup;

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ed:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/LinearLayout;

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/XF;->c:Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {p0}, Lo/XF;->j()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nb:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id\u2026navigation_recycler_view)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/XF;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    invoke-virtual {p0}, Lo/XF;->j()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iy:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id\u2026ractive_navigation_title)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/XF;->b:Lo/ImageSwitcher;

    .line 39
    new-instance p1, Lo/XC;

    move-object v0, p0

    check-cast v0, Lo/Xv;

    invoke-direct {p1, v0}, Lo/XC;-><init>(Lo/Xv;)V

    iput-object p1, p0, Lo/XF;->f:Lo/XC;

    .line 42
    invoke-virtual {p0}, Lo/XF;->j()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lo/XF$5;

    invoke-direct {v0, p0}, Lo/XF$5;-><init>(Lo/XF;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lo/XF;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lo/XF;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 46
    iget-object p1, p0, Lo/XF;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lo/XF;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 47
    iget-object p1, p0, Lo/XF;->e:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    .line 48
    iget-object p1, p0, Lo/XF;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 49
    iget-object p1, p0, Lo/XF;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lo/XI;

    invoke-direct {v0}, Lo/XI;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 50
    iget-object p1, p0, Lo/XF;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lo/XF;->f:Lo/XC;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 51
    invoke-virtual {p0}, Lo/XF;->j()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 27
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/condition/State;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/State;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->clear()V

    .line 125
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p3, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    iput-object p2, p1, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public static final synthetic b(Lo/XF;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/XF;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic e(Lo/XF;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/XF;->i()V

    return-void
.end method

.method private final i()V
    .locals 3

    .line 134
    iget-object v0, p0, Lo/XF;->f:Lo/XC;

    invoke-virtual {v0}, Lo/XC;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lo/XF;->f:Lo/XC;

    invoke-virtual {v0}, Lo/XC;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lo/XF;->j()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lo/XF$Application;

    invoke-direct {v2, p0, v0}, Lo/XF$Application;-><init>(Lo/XF;I)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V
    .locals 1

    .line 176
    new-instance v0, Lo/UW$PendingIntent;

    invoke-direct {v0, p1}, Lo/UW$PendingIntent;-><init>(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V

    invoke-virtual {p0, v0}, Lo/XF;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "navigationTitleText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lo/XF;->b:Lo/ImageSwitcher;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lo/XF;->b:Lo/ImageSwitcher;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/XF;->f:Lo/XC;

    invoke-virtual {v0, p1}, Lo/XC;->e(Z)V

    return-void
.end method

.method public b()V
    .locals 9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v0, p0

    .line 65
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lo/XF;->j()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lo/XF$StateListAnimator;

    invoke-direct {v1, p0}, Lo/XF$StateListAnimator;-><init>(Lo/XF;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Z)V
    .locals 3

    const-string v0, "interactiveMoments"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->choicePointsMetadata()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 104
    sget-object v0, Lo/XJ;->c:Lo/XJ;

    invoke-virtual {p0}, Lo/XF;->j()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "uiView.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lo/XJ;->b(Lcom/netflix/model/leafs/originals/interactive/AssetManifest;Landroid/content/Context;)V

    .line 107
    :cond_0
    iget-object p2, p0, Lo/XF;->f:Lo/XC;

    invoke-virtual {p2, p1}, Lo/XC;->c(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 108
    invoke-direct {p0}, Lo/XF;->i()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 75
    invoke-super {p0}, Lo/Xl;->c()V

    .line 76
    iget-object v0, p0, Lo/XF;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEnabled(Z)V

    return-void
.end method

.method public c(IZ)V
    .locals 5

    .line 151
    iget-object v0, p0, Lo/XF;->f:Lo/XC;

    invoke-virtual {v0}, Lo/XC;->e()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 155
    check-cast v3, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    const-string v4, "moments.snapshots()"

    if-eqz p2, :cond_1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 158
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    .line 159
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object p1

    invoke-static {p1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    invoke-static {p1, v1}, Lo/akz;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->config()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;->maxSnapshotsToDisplay()I

    move-result v2

    :cond_2
    sub-int/2addr v1, v2

    .line 164
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object p1

    invoke-static {p1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v1}, Lo/akz;->a(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 166
    :goto_1
    invoke-direct {p0, v0, p1, v3}, Lo/XF;->a(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V

    .line 167
    iget-object p1, p0, Lo/XF;->f:Lo/XC;

    invoke-virtual {p1, v0}, Lo/XC;->c(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 168
    iget-object p1, p0, Lo/XF;->f:Lo/XC;

    invoke-virtual {p1}, Lo/XC;->d()Z

    move-result p1

    if-nez p1, :cond_3

    .line 169
    invoke-virtual {p0}, Lo/XF;->h()V

    :cond_3
    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/XF;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 10

    .line 59
    iget-object v0, p0, Lo/XF;->f:Lo/XC;

    invoke-virtual {v0}, Lo/XC;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/XF;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v1, p0

    .line 60
    invoke-static/range {v1 .. v9}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lo/XF;->f:Lo/XC;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/XC;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 70
    invoke-super {p0}, Lo/Xl;->g()V

    .line 71
    iget-object v0, p0, Lo/XF;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEnabled(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lo/XF;->j()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public j()Landroid/view/ViewGroup;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/XF;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lo/XF;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
