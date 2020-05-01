.class public final Lo/FO;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/FQ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FO$Activity;,
        Lo/FO$StateListAnimator;,
        Lo/FO$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/FJ;",
        ">;",
        "Lo/FQ;"
    }
.end annotation


# static fields
.field public static final e:Lo/FO$TaskDescription;


# instance fields
.field private a:Lo/Dg;

.field private b:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final c:Landroid/view/View;

.field private final d:Landroidx/recyclerview/widget/RecyclerView;

.field private f:Lo/MultiAutoCompleteTextView$Application;

.field private g:Lo/adL;

.field private h:Landroidx/recyclerview/widget/GridLayoutManager;

.field private i:Lo/Di;

.field private j:Lo/DE;

.field private k:Lo/MultiAutoCompleteTextView$Application;

.field private l:Lo/DN;

.field private final m:Landroid/view/ViewGroup;

.field private final n:I

.field private o:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final p:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final q:Landroid/view/View;

.field private final r:I

.field private final t:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/FO$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/FO$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/FO;->e:Lo/FO$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listHeaderView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/FO;->p:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p3, p0, Lo/FO;->t:Landroid/view/View;

    iput-object p4, p0, Lo/FO;->q:Landroid/view/View;

    iput p5, p0, Lo/FO;->r:I

    .line 59
    iget-object p1, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0}, Lo/FO;->u()I

    move-result p2

    iget-object p3, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "LayoutInflater.from(pare\u2026LayoutId(), parent, true)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/FO;->c:Landroid/view/View;

    .line 60
    iget-object p1, p0, Lo/FO;->c:Landroid/view/View;

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView.findViewById(android.R.id.list)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/FO;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo/FO;->n:I

    .line 78
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    .line 81
    invoke-direct {p0}, Lo/FO;->v()V

    .line 82
    invoke-direct {p0}, Lo/FO;->x()V

    .line 83
    iget p1, p0, Lo/FO;->r:I

    invoke-direct {p0, p1}, Lo/FO;->b(I)V

    .line 86
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/aez;->a(Landroid/view/View;)Lo/MultiAutoCompleteTextView$Application;

    move-result-object p1

    const-string p3, "TrailerUtils.generateVie\u2026reatorForTrailers(uiView)"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/FO;->f:Lo/MultiAutoCompleteTextView$Application;

    .line 87
    new-instance p1, Lo/Di;

    iget-object p3, p0, Lo/FO;->f:Lo/MultiAutoCompleteTextView$Application;

    invoke-direct {p1, p3}, Lo/Di;-><init>(Lo/MultiAutoCompleteTextView$Application;)V

    iput-object p1, p0, Lo/FO;->i:Lo/Di;

    .line 88
    iget-object p1, p0, Lo/FO;->i:Lo/Di;

    iget-object p3, p0, Lo/FO;->t:Landroid/view/View;

    invoke-virtual {p1, p3}, Lo/Di;->a(Landroid/view/View;)V

    .line 89
    iget-object p1, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lo/FO;->i:Lo/Di;

    check-cast p3, Lo/MultiAutoCompleteTextView;

    invoke-static {p1, p3}, Lo/aez;->d(Landroid/content/Context;Lo/MultiAutoCompleteTextView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    const-string p3, "TrailerUtils.generateGri\u2026context, trailersAdapter)"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/FO;->h:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 92
    invoke-static {}, Lo/adq;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adq;->l(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    :cond_0
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-array p3, p4, [Landroid/view/View;

    iget-object p5, p0, Lo/FO;->q:Landroid/view/View;

    aput-object p5, p3, p2

    const/4 p5, 0x0

    invoke-static {p1, p3, p5, p5}, Lo/DE;->d(Landroidx/recyclerview/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lo/DE;

    move-result-object p1

    iput-object p1, p0, Lo/FO;->j:Lo/DE;

    .line 94
    iget-object p1, p0, Lo/FO;->j:Lo/DE;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 99
    :cond_1
    invoke-direct {p0}, Lo/FO;->r()V

    .line 102
    :cond_2
    iget-object p1, p0, Lo/FO;->p:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object p3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, p3, :cond_4

    invoke-static {}, Lo/adq;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 103
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p3, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class p5, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p3, p5}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3, p2, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 107
    :cond_4
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p3, p0, Lo/FO;->a:Lo/Dg;

    if-nez p3, :cond_5

    const-string p5, "simsAdapter"

    invoke-static {p5}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 109
    iget-object p1, p0, Lo/FO;->p:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object p3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, p3, :cond_7

    .line 110
    new-instance p1, Lo/FO$StateListAnimator;

    .line 112
    new-instance p3, Lo/FO$2;

    invoke-direct {p3, p0}, Lo/FO$2;-><init>(Lo/FO;)V

    check-cast p3, Lo/Du$Activity;

    .line 110
    invoke-direct {p1, p4, p3}, Lo/FO$StateListAnimator;-><init>(ZLo/Du$Activity;)V

    check-cast p1, Lo/MultiAutoCompleteTextView$Application;

    iput-object p1, p0, Lo/FO;->k:Lo/MultiAutoCompleteTextView$Application;

    .line 116
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/FO;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 118
    new-instance p1, Lo/DN;

    iget-object p3, p0, Lo/FO;->k:Lo/MultiAutoCompleteTextView$Application;

    new-instance p4, Lo/FO$Activity;

    invoke-direct {p4, p0}, Lo/FO$Activity;-><init>(Lo/FO;)V

    check-cast p4, Lo/DN$Application;

    invoke-direct {p1, p3, p4}, Lo/DN;-><init>(Lo/MultiAutoCompleteTextView$Application;Lo/DN$Application;)V

    .line 119
    iget-object p3, p0, Lo/FO;->t:Landroid/view/View;

    invoke-virtual {p1, p3}, Lo/DN;->a(Landroid/view/View;)V

    .line 122
    invoke-static {}, Lo/ady;->j()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_1

    .line 125
    :cond_6
    invoke-static {}, Lo/adq;->d()Z

    move-result p2

    .line 129
    :goto_1
    invoke-virtual {p1, p2}, Lo/DN;->b(Z)V

    .line 118
    iput-object p1, p0, Lo/FO;->l:Lo/DN;

    :cond_7
    return-void
.end method

.method public static final synthetic b(Lo/FO;)I
    .locals 0

    .line 47
    iget p0, p0, Lo/FO;->n:I

    return p0
.end method

.method private final b(I)V
    .locals 2

    .line 172
    new-instance v0, Lo/Dg;

    .line 173
    new-instance v1, Lo/FO$ActionBar;

    invoke-direct {v1, p0, p1}, Lo/FO$ActionBar;-><init>(Lo/FO;I)V

    check-cast v1, Lo/MultiAutoCompleteTextView$Application;

    .line 172
    invoke-direct {v0, v1}, Lo/Dg;-><init>(Lo/MultiAutoCompleteTextView$Application;)V

    iput-object v0, p0, Lo/FO;->a:Lo/Dg;

    .line 213
    iget-object p1, p0, Lo/FO;->a:Lo/Dg;

    if-nez p1, :cond_0

    const-string v0, "simsAdapter"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lo/FO;->t:Landroid/view/View;

    invoke-virtual {p1, v0}, Lo/Dg;->a(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic d(Lo/FO;)Lo/DE;
    .locals 0

    .line 47
    iget-object p0, p0, Lo/FO;->j:Lo/DE;

    return-object p0
.end method

.method private final r()V
    .locals 2

    .line 135
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lo/FO$PendingIntent;

    invoke-direct {v1, p0}, Lo/FO$PendingIntent;-><init>(Lo/FO;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    :cond_0
    return-void
.end method

.method private final u()I
    .locals 1

    .line 168
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fD:I

    return v0
.end method

.method private final v()V
    .locals 3

    .line 220
    new-instance v0, Lo/adL;

    iget-object v1, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Lo/FO;->r:I

    invoke-direct {v0, v1, v2}, Lo/adL;-><init>(II)V

    iput-object v0, p0, Lo/FO;->g:Lo/adL;

    .line 221
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lo/FO;->g:Lo/adL;

    if-nez v1, :cond_0

    const-string v2, "simsItemDecoration"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    return-void
.end method

.method private final x()V
    .locals 3

    .line 225
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lo/FO;->r:I

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lo/FO;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 226
    iget-object v0, p0, Lo/FO;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    const-string v1, "simsLayoutManager"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lo/FO$LoaderManager;

    invoke-direct {v2, p0}, Lo/FO$LoaderManager;-><init>(Lo/FO;)V

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;)V

    .line 240
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lo/FO;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v2, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 322
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v0

    return v0
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "layoutManagerSavedState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 298
    :cond_0
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lo/FO$Application;

    invoke-direct {v0, p0}, Lo/FO$Application;-><init>(Lo/FO;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/netflix/model/leafs/TrackableListSummary;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lo/FO;->i:Lo/Di;

    check-cast p1, Lo/Bv;

    invoke-virtual {v0, p1}, Lo/Di;->b(Lo/Bv;)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "episodesList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lo/FO;->l:Lo/DN;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1, p2}, Lo/DN;->b(Ljava/util/Collection;I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 329
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public b(II)V
    .locals 0

    add-int/lit8 p2, p2, -0x14

    if-ne p1, p2, :cond_0

    .line 342
    sget-object p1, Lo/FP$TaskDescription;->c:Lo/FP$TaskDescription;

    invoke-virtual {p0, p1}, Lo/FO;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Lo/Bc;)V
    .locals 2

    const-string v0, "details"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Dy;->d(Lo/Bc;Landroid/content/Context;)Lo/Dy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {p1}, Lo/Bc;->aU()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 246
    invoke-virtual {v0}, Lo/Dy;->c()V

    .line 247
    iget-object p1, p0, Lo/FO;->a:Lo/Dg;

    if-nez p1, :cond_0

    const-string v1, "simsAdapter"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Dy;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/Dg;->b(Landroid/view/View;)V

    .line 248
    invoke-virtual {v0}, Lo/Dy;->b()Landroid/view/View;

    move-result-object p1

    const-string v0, "copyrightView.view"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(II)V
    .locals 2

    .line 347
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    .line 348
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 349
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(II)V

    :cond_0
    return-void
.end method

.method public d(ILjava/lang/String;)V
    .locals 6

    .line 354
    iget-object v0, p0, Lo/FO;->l:Lo/DN;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 357
    invoke-virtual {v0}, Lo/DN;->getItemCount()I

    .line 359
    invoke-virtual {v0}, Lo/DN;->getItemCount()I

    move-result v3

    move v4, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v3, :cond_1

    .line 360
    invoke-virtual {v0, p1}, Lo/DN;->d(I)Lo/AR;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 362
    invoke-interface {v5}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v4

    :cond_2
    if-ne p1, v2, :cond_3

    const/4 p1, 0x0

    .line 373
    :cond_3
    invoke-virtual {v0}, Lo/DN;->a()I

    move-result p2

    add-int/2addr p1, p2

    .line 374
    invoke-virtual {v0, p1}, Lo/DN;->h(I)V

    :cond_4
    return-void
.end method

.method public d(Lcom/netflix/model/leafs/TrackableListSummary;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lo/FO;->a:Lo/Dg;

    if-nez v0, :cond_0

    const-string v1, "simsAdapter"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Lo/Bv;

    invoke-virtual {v0, p1}, Lo/Dg;->b(Lo/Bv;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;)V"
        }
    .end annotation

    const-string v0, "similars"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lo/FO;->a:Lo/Dg;

    const-string v1, "simsAdapter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lo/Dg;->d(Ljava/util/Collection;)V

    .line 262
    iget-object p1, p0, Lo/FO;->a:Lo/Dg;

    if-nez p1, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lo/Dg;->notifyDataSetChanged()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 325
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trailers"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lo/FO;->i:Lo/Di;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lo/Di;->d(Ljava/util/Collection;)V

    .line 267
    iget-object p1, p0, Lo/FO;->i:Lo/Di;

    invoke-virtual {p1}, Lo/Di;->notifyDataSetChanged()V

    return-void
.end method

.method public f()V
    .locals 4

    .line 288
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/FO;->l:Lo/DN;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 290
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/FO;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 291
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/FO;->g:Lo/adL;

    if-nez v2, :cond_1

    const-string v3, "simsItemDecoration"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 292
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 4

    .line 280
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/FO;->i:Lo/Di;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 282
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/FO;->h:Landroidx/recyclerview/widget/GridLayoutManager;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 283
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/FO;->g:Lo/adL;

    if-nez v2, :cond_1

    const-string v3, "simsItemDecoration"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 284
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_2
    return-void
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/FO;->d:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public j()V
    .locals 4

    .line 271
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/FO;->a:Lo/Dg;

    if-nez v2, :cond_1

    const-string v3, "simsAdapter"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 273
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/FO;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v2, :cond_2

    const-string v3, "simsLayoutManager"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 274
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/FO;->g:Lo/adL;

    const-string v3, "simsItemDecoration"

    if-nez v2, :cond_3

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 275
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/FO;->g:Lo/adL;

    if-nez v2, :cond_4

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 276
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_5
    return-void
.end method

.method public k()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 318
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 379
    iget-object v0, p0, Lo/FO;->l:Lo/DN;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DN;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public m()Lo/DE;
    .locals 1

    .line 310
    iget-object v0, p0, Lo/FO;->j:Lo/DE;

    return-object v0
.end method

.method public n()V
    .locals 2

    .line 305
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lo/Dg;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 306
    iget-object v0, p0, Lo/FO;->a:Lo/Dg;

    if-nez v0, :cond_0

    const-string v1, "simsAdapter"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Dg;->notifyDataSetChanged()V

    return-void
.end method

.method public o()Landroid/os/Parcelable;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public p()I
    .locals 1

    .line 383
    iget-object v0, p0, Lo/FO;->l:Lo/DN;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DN;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final q()Landroid/view/ViewGroup;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/FO;->m:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public s()V
    .locals 1

    .line 387
    iget-object v0, p0, Lo/FO;->l:Lo/DN;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DN;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final t()I
    .locals 1

    .line 52
    iget v0, p0, Lo/FO;->r:I

    return v0
.end method
