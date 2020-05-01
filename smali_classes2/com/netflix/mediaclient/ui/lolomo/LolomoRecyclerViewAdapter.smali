.class public Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;
.source ""

# interfaces
.implements Lo/JsDialogHelper;
.implements Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;,
        Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application;,
        Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Payload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter<",
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;",
        ">;",
        "Lo/JsDialogHelper;",
        "Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;"
    }
.end annotation


# instance fields
.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field protected final c:Lo/KI$TaskDescription;

.field protected e:I

.field private f:Z

.field private g:J

.field private h:Z

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final n:Lo/KN;

.field private o:J

.field private p:Z

.field private q:Lo/JsDialogHelper$Activity;

.field private final r:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;

.field private s:Lo/AH;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    .line 146
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->h(Landroid/content/Context;)[Lo/PooledStringWriter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;-><init>(Landroid/content/Context;[Lo/PooledStringWriter;)V

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j:I

    .line 96
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->h:Z

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->i:Ljava/util/List;

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->p:Z

    .line 129
    new-instance p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$3;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c:Lo/KI$TaskDescription;

    .line 147
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    .line 148
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 149
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->r:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;

    .line 150
    iput p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->e:I

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j:I

    return p0
.end method

.method private a(Landroid/view/ViewGroup;)Lo/KD;
    .locals 0

    .line 441
    invoke-static {p1}, Lo/KD;->e(Landroid/view/ViewGroup;)Lo/KD;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KE;
    .locals 4

    .line 421
    new-instance v0, Lo/KE;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->cB:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c:Lo/KI$TaskDescription;

    invoke-direct {v0, p1, p2, v1}, Lo/KE;-><init>(Landroid/view/View;Lo/PooledStringWriter;Lo/KI$TaskDescription;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lo/AH;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 603
    invoke-interface {p2}, Lo/AH;->getLolomoId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->l:Ljava/lang/String;

    .line 605
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->s:Lo/AH;

    .line 606
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->r:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;->a(Lo/AH;)V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->r:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;[Lo/PooledStringWriter;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;->c([Lo/PooledStringWriter;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->o:J

    return-wide v0
.end method

.method private b(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KK;
    .locals 4

    .line 416
    new-instance v0, Lo/KK;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->cA:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c:Lo/KI$TaskDescription;

    invoke-direct {v0, p1, p2, v1}, Lo/KK;-><init>(Landroid/view/View;Lo/PooledStringWriter;Lo/KI$TaskDescription;)V

    return-object v0
.end method

.method static b(Landroid/content/Context;I)Lo/PooledStringWriter;
    .locals 2

    .line 194
    const-class v0, Lo/v;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/v;

    invoke-interface {v0, p0}, Lo/v;->a(Landroid/content/Context;)I

    move-result v0

    .line 195
    invoke-static {p1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;-><init>()V

    .line 196
    invoke-virtual {p1, v1}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->j(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 198
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->f(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const v0, 0x3fb70a3d    # 1.43f

    .line 200
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 201
    invoke-static {}, Lo/Lq;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 203
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/PooledStringWriter$TaskDescription;->b(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->p:Z

    return p1
.end method

.method private c(Landroid/view/ViewGroup;)Lo/JK;
    .locals 0

    .line 436
    invoke-static {p1}, Lo/JK;->e(Landroid/view/ViewGroup;)Lo/JK;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KE;
    .locals 4

    .line 426
    new-instance v0, Lo/KE;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->cB:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c:Lo/KI$TaskDescription;

    invoke-direct {v0, p1, p2, v1}, Lo/KE;-><init>(Landroid/view/View;Lo/PooledStringWriter;Lo/KI$TaskDescription;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;ILo/PooledStringWriter;)Lo/PooledStringWriter;
    .locals 3

    .line 208
    invoke-static {p0}, Lo/Lq;->b(Landroid/content/Context;)I

    move-result v0

    .line 209
    invoke-static {}, Lo/Lq;->b()I

    move-result v1

    .line 211
    invoke-static {p1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const v2, 0x3f933333    # 1.15f

    .line 212
    invoke-virtual {p1, v2}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;-><init>()V

    .line 213
    invoke-virtual {p1, v2}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 214
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 215
    invoke-virtual {p1, v1}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const/4 v1, 0x1

    .line 216
    invoke-virtual {p1, v1}, Lo/PooledStringWriter$TaskDescription;->c(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    if-le v0, v1, :cond_0

    const/high16 p1, 0x3e800000    # 0.25f

    .line 220
    invoke-virtual {p0, p1}, Lo/PooledStringWriter$TaskDescription;->a(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 221
    invoke-virtual {p2}, Lo/PooledStringWriter;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 222
    invoke-virtual {p2}, Lo/PooledStringWriter;->l()Z

    move-result p2

    invoke-virtual {p1, p2}, Lo/PooledStringWriter$TaskDescription;->e(Z)Lo/PooledStringWriter$TaskDescription;

    .line 225
    :cond_0
    invoke-virtual {p0}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j()V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Landroid/content/Context;Lo/AH;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->a(Landroid/content/Context;Lo/AH;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g:J

    return-wide v0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;)Lo/JsDialogHelper$Activity;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->q:Lo/JsDialogHelper$Activity;

    return-object p0
.end method

.method private e(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KF;
    .locals 4

    .line 411
    new-instance v0, Lo/KF;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->cA:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c:Lo/KI$TaskDescription;

    invoke-direct {v0, p1, p2, v1}, Lo/KF;-><init>(Landroid/view/View;Lo/PooledStringWriter;Lo/KI$TaskDescription;)V

    return-object v0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->h:Z

    return p1
.end method

.method private g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object p1
.end method

.method private g(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KH;
    .locals 0

    .line 431
    invoke-static {p1}, Lo/KH;->a(Landroid/view/ViewGroup;)Lo/KH;

    move-result-object p1

    return-object p1
.end method

.method private h(I)Z
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c()I

    move-result v1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static h(Landroid/content/Context;)[Lo/PooledStringWriter;
    .locals 10

    const/16 v0, 0xd

    new-array v0, v0, [Lo/PooledStringWriter;

    const/4 v1, -0x2

    .line 159
    invoke-static {v1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, -0x1

    .line 160
    invoke-static {v1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 161
    invoke-static {v2}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    .line 162
    invoke-static {v1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    new-instance v6, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;-><init>()V

    .line 163
    invoke-virtual {v5, v6}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    .line 164
    invoke-virtual {v5, v3}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    .line 165
    invoke-virtual {v5, v3}, Lo/PooledStringWriter$TaskDescription;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    .line 166
    invoke-virtual {v5, v2}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    .line 167
    invoke-virtual {v5, v2}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x4

    .line 169
    invoke-static {v1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    new-instance v6, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;-><init>()V

    .line 170
    invoke-virtual {v5, v6}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    .line 171
    invoke-static {p0}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v6

    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result v7

    invoke-static {v6, v7}, Lo/Lq;->a(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    .line 172
    invoke-virtual {v5, v3}, Lo/PooledStringWriter$TaskDescription;->e(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    .line 173
    invoke-static {}, Lo/Lq;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    .line 175
    invoke-virtual {v5, v6}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    const/high16 v6, 0x3e800000    # 0.25f

    .line 176
    invoke-virtual {v5, v6}, Lo/PooledStringWriter$TaskDescription;->a(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object v5

    .line 177
    invoke-virtual {v5}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object v5

    aput-object v5, v0, v1

    .line 178
    invoke-static {p0, v3}, Lo/Kl$Activity;->e(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const/16 v1, 0xb

    .line 179
    invoke-static {p0, v1}, Lo/Kl$Activity;->d(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v0, v7

    .line 180
    invoke-static {p0, v4}, Lo/Kl$Activity;->a(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object v4

    const/4 v6, 0x7

    aput-object v4, v0, v6

    const/16 v4, 0x9

    .line 181
    invoke-static {p0, v4}, Lo/Kl$Activity;->c(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v0, v9

    .line 182
    invoke-static {p0, v5}, Lo/Kl$Activity;->b(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object v5

    aput-object v5, v0, v4

    .line 183
    invoke-static {v7}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v4

    .line 184
    invoke-virtual {v4, v3}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v4

    .line 185
    invoke-virtual {v4, v3}, Lo/PooledStringWriter$TaskDescription;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    .line 186
    invoke-virtual {v3, v2}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    .line 187
    invoke-virtual {v3, v2}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    .line 189
    invoke-static {p0, v6}, Lo/Kl$Activity;->e(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object v2

    invoke-static {p0, v6, v2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c(Landroid/content/Context;ILo/PooledStringWriter;)Lo/PooledStringWriter;

    move-result-object v2

    aput-object v2, v0, v1

    .line 190
    invoke-static {p0, v9}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->b(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object p0

    const/16 v1, 0xc

    aput-object p0, v0, v1

    return-object v0
.end method

.method private j()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 597
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->b()V

    .line 598
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->r:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;->R_()V

    return-void
.end method

.method private j(I)Z
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->i:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 12

    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->p:Z

    .line 518
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g:J

    .line 520
    invoke-static {}, Lo/ep;->j()Z

    move-result v1

    const-string v2, "LolomoRecyclerViewAdapter"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    instance-of v4, v1, Lo/KM;

    if-nez v4, :cond_0

    instance-of v1, v1, Lo/KP;

    if-eqz v1, :cond_1

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->s:Lo/AH;

    if-eqz v1, :cond_1

    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j:I

    invoke-interface {v1}, Lo/AH;->getNumLoMos()I

    move-result v1

    sub-int/2addr v1, v0

    if-lt v4, v1, :cond_1

    const-string v0, "no more data to be fetched"

    .line 524
    invoke-static {v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->p:Z

    return-void

    .line 529
    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j:I

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    if-nez v1, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4, v5}, Lo/KN;->c(Z)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v10, v1, -0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 531
    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "fetching more data, starting at index: %d"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 532
    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->l:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v3, "fetching from: %d to: %d, id: %s"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 534
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->r:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;->U_()Lo/Am;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "Service manager is null - can\'t fetch data"

    .line 536
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 540
    :cond_3
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j:I

    sub-int v2, v10, v2

    add-int/lit8 v5, v2, 0x1

    .line 541
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->l:Ljava/lang/String;

    iget v9, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j:I

    new-instance v11, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application;

    iget-wide v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g:J

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Application;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Landroid/content/Context;JI)V

    invoke-interface/range {v6 .. v11}, Lo/KN;->a(Lo/zG;Ljava/lang/String;IILo/zU;)Z

    return-void
.end method

.method protected a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 628
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 629
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 630
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 632
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j:I

    .line 633
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->h:Z

    if-eqz p1, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    .line 637
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d(II)V

    goto :goto_0

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 642
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d(II)V

    .line 644
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->r:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    .line 154
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->h(Landroid/content/Context;)[Lo/PooledStringWriter;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;[Lo/PooledStringWriter;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;I)V
    .locals 0

    .line 484
    sget-object p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Payload;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Payload;

    invoke-virtual {p0, p2, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public d()I
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->i:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 509
    :goto_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->h:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public d(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;
    .locals 2

    .line 381
    invoke-virtual {p2}, Lo/PooledStringWriter;->n()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p1, "LolomoRecyclerViewAdapter"

    const-string v0, "Unknown view type."

    .line 404
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown view type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/PooledStringWriter;->n()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 402
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->e(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KF;

    move-result-object p1

    return-object p1

    .line 391
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KE;

    move-result-object p1

    return-object p1

    .line 400
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->b(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KK;

    move-result-object p1

    return-object p1

    .line 389
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->a(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KE;

    move-result-object p1

    return-object p1

    .line 398
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->e(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KF;

    move-result-object p1

    return-object p1

    .line 385
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c(Landroid/view/ViewGroup;)Lo/JK;

    move-result-object p1

    return-object p1

    .line 383
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->a(Landroid/view/ViewGroup;)Lo/KD;

    move-result-object p1

    return-object p1

    .line 387
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(Landroid/view/ViewGroup;Lo/PooledStringWriter;)Lo/KH;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public d(Landroid/content/Context;Lo/PooledStringWriter;I)Lo/ParcelFormatException;
    .locals 10

    .line 256
    invoke-virtual {p2}, Lo/PooledStringWriter;->n()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing BaseRowAdapter for view type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/PooledStringWriter;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 293
    new-instance v8, Lo/KO;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/KO;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object v8

    .line 284
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 285
    new-instance v8, Lo/JT;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/JT;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object v8

    .line 304
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 305
    invoke-static {}, Lo/ep;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v8, Lo/KG;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/KG;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    goto :goto_0

    :cond_0
    new-instance v8, Lo/Kz;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/Kz;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    :goto_0
    return-object v8

    .line 300
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 301
    new-instance v8, Lo/JR;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/JR;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object v8

    .line 288
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 289
    new-instance v8, Lo/KC;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/KC;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object v8

    .line 263
    :pswitch_6
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 264
    new-instance v8, Lo/Ke;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/Ke;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object v8

    .line 296
    :pswitch_7
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 297
    new-instance v9, Lo/JS;

    iget v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->e:I

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v9

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v8}, Lo/JS;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;IILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object v9

    .line 276
    :pswitch_8
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 277
    invoke-static {}, Lo/ep;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    new-instance v8, Lo/JX;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/JX;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object v8

    .line 280
    :cond_1
    new-instance v8, Lo/JU;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/JU;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object v8

    .line 268
    :pswitch_9
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 269
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_2

    .line 270
    new-instance v8, Lo/Kd;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/Kd;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object v8

    .line 272
    :cond_2
    new-instance v8, Lo/KL;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lo/KL;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object v8

    .line 260
    :pswitch_a
    invoke-static {p1, p3}, Lo/ParcelFormatException;->b(Landroid/content/Context;I)Lo/ParcelFormatException$StateListAnimator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(Landroid/content/Context;IILjava/lang/String;)V
    .locals 15

    move-object v7, p0

    .line 546
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->r:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;->U_()Lo/Am;

    move-result-object v0

    const-string v1, "LolomoRecyclerViewAdapter"

    if-nez v0, :cond_0

    const-string v0, "Service manager is null - can\'t refresh data"

    .line 548
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "Prefetching lolomo..."

    .line 552
    invoke-static {v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->o:J

    const/4 v1, 0x0

    .line 554
    iput v1, v7, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j:I

    .line 555
    iget-wide v4, v7, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->o:J

    .line 557
    iget-object v8, v7, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->n:Lo/KN;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v9

    new-instance v14, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;

    const-string v2, "LolomoRecyclerViewAdapter"

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Ljava/lang/String;Landroid/content/Context;JI)V

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v14}, Lo/KN;->b(Lo/zG;Landroid/content/Context;IILjava/lang/String;Lo/zU;)V

    const/4 v0, 0x1

    move/from16 v1, p2

    if-ne v1, v0, :cond_1

    .line 591
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j()V

    :cond_1
    return-void
.end method

.method public d(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 466
    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Payload;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Payload;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 468
    invoke-virtual {p1, p2}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;->e(Z)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 469
    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Payload;->a:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Payload;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 471
    invoke-virtual {p1, p2}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;->e(Z)V

    goto :goto_0

    .line 473
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->k:Ljava/lang/String;

    return-void
.end method

.method public e(I)I
    .locals 4

    .line 329
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 335
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lo/ady;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    .line 341
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$5;->a:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    const-string p1, "LolomoRecyclerViewAdapter"

    const-string v1, "Unknown view type."

    .line 374
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p1, 0xb

    return p1

    .line 366
    :pswitch_1
    invoke-static {}, Lo/dK;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x9

    return p1

    :cond_3
    return v2

    :pswitch_2
    const/16 p1, 0x8

    return p1

    :pswitch_3
    const/4 p1, 0x7

    return p1

    :pswitch_4
    const/4 p1, 0x4

    return p1

    :pswitch_5
    return v2

    .line 349
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->isRichUITreatment()Z

    move-result p1

    .line 350
    invoke-static {}, Lo/ia;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    return v2

    :pswitch_7
    const/4 p1, 0x6

    return p1

    :pswitch_8
    const/4 p1, 0x2

    return p1

    :pswitch_9
    const/4 p1, 0x3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;ILo/ParcelFormatException;Landroid/os/Parcelable;)V
    .locals 2

    .line 447
    instance-of v0, p1, Lo/KD;

    if-eqz v0, :cond_0

    .line 448
    move-object p3, p1

    check-cast p3, Lo/KD;

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->f(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p3, p4}, Lo/KD;->d(Landroid/view/View;)V

    goto :goto_0

    .line 449
    :cond_0
    instance-of v0, p1, Lo/KK;

    if-eqz v0, :cond_1

    .line 450
    move-object v0, p1

    check-cast v0, Lo/KK;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lo/KK;->d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/ParcelFormatException;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 451
    :cond_1
    instance-of v0, p1, Lo/KF;

    if-eqz v0, :cond_2

    .line 452
    move-object v0, p1

    check-cast v0, Lo/KF;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lo/KF;->d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/ParcelFormatException;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 453
    :cond_2
    instance-of v0, p1, Lo/KI;

    if-eqz v0, :cond_3

    .line 454
    move-object v0, p1

    check-cast v0, Lo/KI;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lo/KI;->a(Ljava/lang/Object;Lo/ParcelFormatException;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 455
    :cond_3
    instance-of p3, p1, Lo/KH;

    if-eqz p3, :cond_4

    .line 456
    move-object p3, p1

    check-cast p3, Lo/KH;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p4

    invoke-virtual {p3, p4}, Lo/KH;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    .line 459
    :cond_4
    :goto_0
    iget-boolean p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->p:Z

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->h:Z

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d()I

    move-result p3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c()I

    move-result p4

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, -0x2

    if-lt p2, p3, :cond_5

    .line 460
    iget-object p1, p1, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->a(Landroid/content/Context;)V

    :cond_5
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;)V
    .locals 1

    .line 610
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->f:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 613
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d(Landroid/content/Context;IILjava/lang/String;)V

    const/4 p1, 0x1

    .line 615
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->f:Z

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;I)V
    .locals 0

    .line 479
    sget-object p1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Payload;->d:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$Payload;

    invoke-virtual {p0, p2, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->m:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->k:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lo/Am;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->r:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;->U_()Lo/Am;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->l:Ljava/lang/String;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    .line 619
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->p:Z

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 243
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 244
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;ILjava/util/List;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;ILjava/util/List;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 250
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->q:Lo/JsDialogHelper$Activity;

    return-void
.end method
