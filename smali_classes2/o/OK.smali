.class public Lo/OK;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OK$Application;,
        Lo/OK$StateListAnimator;
    }
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;

.field public static final i:Lo/OK$StateListAnimator;


# instance fields
.field private f:Lo/PS;

.field private final h:Lo/ams;

.field private final j:Lo/ams;

.field private m:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/OK;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "loadingView"

    const-string v5, "getLoadingView()Landroid/widget/ProgressBar;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "recyclerView"

    const-string v4, "getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/OK;->b:[Lo/amT;

    new-instance v0, Lo/OK$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/OK$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/OK;->i:Lo/OK$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 22
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kV:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/OK;->j:Lo/ams;

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kW:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/OK;->h:Lo/ams;

    return-void
.end method

.method private final A()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lo/OK;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lo/OK;->f:Lo/PS;

    if-eqz v1, :cond_0

    .line 120
    check-cast v1, Lo/nV;

    invoke-interface {v0, v1}, Lo/nS;->d(Lo/nV;)V

    const/4 v0, 0x0

    .line 121
    check-cast v0, Lo/PS;

    iput-object v0, p0, Lo/OK;->f:Lo/PS;

    :cond_0
    return-void
.end method

.method private final B()V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lo/OK;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "requireNetflixActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requireNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const-string v2, ""

    .line 56
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return-void
.end method

.method public static final synthetic c(Lo/OK;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/OL;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    instance-of v0, v0, Lo/ON;

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/ON;

    invoke-virtual {v0, p1}, Lo/ON;->d(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.MultiTitleNotificationsAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/OK;->v()Landroid/widget/ProgressBar;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;I)V

    .line 104
    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;I)V

    return-void
.end method

.method private final v()Landroid/widget/ProgressBar;
    .locals 3

    iget-object v0, p0, Lo/OK;->j:Lo/ams;

    sget-object v1, Lo/OK;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private final x()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lo/OK;->h:Lo/ams;

    sget-object v1, Lo/OK;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/OL;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MultiTitleNotifications"

    const-string v1, "Received list of multi-title notification rows."

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lo/OK;->c()V

    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lo/OK;->d(Ljava/util/List;)V

    .line 95
    :cond_0
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, p1}, Lo/OK;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(II)Lo/ON;
    .locals 1

    .line 50
    new-instance v0, Lo/ON;

    invoke-direct {v0, p1, p2}, Lo/ON;-><init>(II)V

    return-object v0
.end method

.method public c()V
    .locals 5

    .line 61
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 63
    new-instance v1, Lo/OK$Activity;

    invoke-direct {v1, p0}, Lo/OK$Activity;-><init>(Lo/OK;)V

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;)V

    .line 75
    invoke-virtual {p0}, Lo/OK;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aI:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 76
    invoke-virtual {p0}, Lo/OK;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->X:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 78
    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0, v1, v2}, Lo/OK;->b(II)Lo/ON;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 80
    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 81
    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v3, Lo/OK$Application;

    invoke-direct {v3, p0, v1, v2}, Lo/OK$Application;-><init>(Lo/OK;II)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 83
    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lo/OK;->c(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected final c(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lo/OK;->A()V

    .line 110
    invoke-virtual {p0}, Lo/OK;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Lo/PS;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lo/PS;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lo/OK;->f:Lo/PS;

    .line 113
    iget-object p1, p0, Lo/OK;->f:Lo/PS;

    check-cast p1, Lo/nV;

    invoke-interface {v0, p1}, Lo/nS;->e(Lo/nV;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 2

    .line 159
    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    instance-of v0, v0, Lo/ON;

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0}, Lo/OK;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/ON;

    invoke-virtual {v0}, Lo/ON;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.MultiTitleNotificationsAdapter"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "MultiTitleNotifications"

    const-string v0, "Creating new multi-title notifications fragment."

    .line 33
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->db:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026s_frag, container, false)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 126
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    .line 127
    invoke-direct {p0}, Lo/OK;->A()V

    .line 128
    invoke-virtual {p0}, Lo/OK;->y()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lo/OK;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-direct {p0}, Lo/OK;->B()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lo/OK;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
