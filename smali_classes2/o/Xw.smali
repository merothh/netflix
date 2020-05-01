.class public final Lo/Xw;
.super Lo/Xl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Xw$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/Xw$StateListAnimator;


# instance fields
.field private final b:I

.field private final c:Landroid/view/ViewGroup;

.field private final e:Lcom/netflix/model/leafs/PostPlayItem;

.field private final f:Lo/GridView;

.field private final g:Lo/HorizontalScrollView;

.field private final h:Lo/HorizontalScrollView;

.field private final i:Lo/ImageSwitcher;

.field private final j:Lo/GridView;

.field private k:Lio/reactivex/disposables/Disposable;

.field private l:Ljava/lang/Long;

.field private final m:Lo/ImageSwitcher;

.field private final n:Landroid/view/ViewGroup;

.field private o:Lcom/netflix/model/leafs/PostPlayItem;

.field private final s:Lcom/netflix/model/leafs/PostPlayExperience;

.field private final t:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Xw$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Xw$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Xw;->d:Lo/Xw$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayExperience;Lio/reactivex/subjects/Subject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/netflix/model/leafs/PostPlayExperience;",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayExperience"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayUIObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/Xw;->n:Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/Xw;->s:Lcom/netflix/model/leafs/PostPlayExperience;

    iput-object p3, p0, Lo/Xw;->t:Lio/reactivex/subjects/Subject;

    .line 30
    iget-object p1, p0, Lo/Xw;->n:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lo/Xw;->i()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1, p3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Xw;->c:Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, p0, Lo/Xw;->b:I

    .line 32
    iget-object p1, p0, Lo/Xw;->s:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lo/Xw;->s:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "postPlayExperience.itemsInitialIndex"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/PostPlayItem;

    iput-object p1, p0, Lo/Xw;->e:Lcom/netflix/model/leafs/PostPlayItem;

    .line 33
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->lp:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id.next_episode_button)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/HorizontalScrollView;

    iput-object p1, p0, Lo/Xw;->g:Lo/HorizontalScrollView;

    .line 34
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->sN:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id.supplemental_logo)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/GridView;

    iput-object p1, p0, Lo/Xw;->j:Lo/GridView;

    .line 35
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->sO:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id.supplemental_text)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Xw;->i:Lo/ImageSwitcher;

    .line 36
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->sJ:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id.supplemental_duration)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/HorizontalScrollView;

    iput-object p1, p0, Lo/Xw;->h:Lo/HorizontalScrollView;

    .line 37
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->tw:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id.titleLogo)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/GridView;

    iput-object p1, p0, Lo/Xw;->f:Lo/GridView;

    .line 38
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->tu:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id.titleLogoFallbackText)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Xw;->m:Lo/ImageSwitcher;

    .line 51
    iget-object p1, p0, Lo/Xw;->g:Lo/HorizontalScrollView;

    new-instance p2, Lo/Xw$2;

    invoke-direct {p2, p0}, Lo/Xw$2;-><init>(Lo/Xw;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lo/Xw;->e:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p3

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    const/16 p2, 0x8

    const-string v1, "autoPlayItem"

    if-nez p3, :cond_1

    .line 61
    iget-object p3, p0, Lo/Xw;->m:Lo/ImageSwitcher;

    iget-object v2, p0, Lo/Xw;->e:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p3, p0, Lo/Xw;->m:Lo/ImageSwitcher;

    invoke-virtual {p3, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 63
    iget-object p3, p0, Lo/Xw;->f:Lo/GridView;

    invoke-virtual {p3, p2}, Lo/GridView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v2, p0, Lo/Xw;->f:Lo/GridView;

    invoke-interface {p3}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lo/Xw;->f:Lo/GridView;

    iget-object v3, p0, Lo/Xw;->e:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    invoke-interface {p3}, Lcom/netflix/model/leafs/PostPlayAsset;->getWidth()I

    move-result v2

    invoke-interface {p3}, Lcom/netflix/model/leafs/PostPlayAsset;->getHeight()I

    move-result p3

    iget-object v3, p0, Lo/Xw;->f:Lo/GridView;

    invoke-virtual {v3}, Lo/GridView;->getId()I

    move-result v3

    invoke-direct {p0, v2, p3, v3, p1}, Lo/Xw;->a(IIIF)V

    .line 68
    iget-object p3, p0, Lo/Xw;->m:Lo/ImageSwitcher;

    invoke-virtual {p3, p2}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 69
    iget-object p3, p0, Lo/Xw;->f:Lo/GridView;

    invoke-virtual {p3, v0}, Lo/GridView;->setVisibility(I)V

    .line 72
    :goto_0
    iget-object p3, p0, Lo/Xw;->s:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {p3}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ltz p3, :cond_4

    const/4 v2, 0x0

    .line 73
    :goto_1
    iget-object v3, p0, Lo/Xw;->s:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v3}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 74
    :goto_2
    iget-object p3, p0, Lo/Xw;->s:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {p3}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netflix/model/leafs/PostPlayItem;

    iput-object p3, p0, Lo/Xw;->o:Lcom/netflix/model/leafs/PostPlayItem;

    goto :goto_3

    :cond_3
    if-eq v2, p3, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    :cond_4
    :goto_3
    iget-object p3, p0, Lo/Xw;->o:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz p3, :cond_7

    .line 81
    invoke-interface {p3}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 83
    iget-object v3, p0, Lo/Xw;->j:Lo/GridView;

    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lo/Xw;->j:Lo/GridView;

    invoke-interface {p3}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, p0, Lo/Xw;->j:Lo/GridView;

    new-instance v4, Lo/Xw$1;

    invoke-direct {v4, p0, p3}, Lo/Xw$1;-><init>(Lo/Xw;Lcom/netflix/model/leafs/PostPlayItem;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getWidth()I

    move-result v3

    .line 91
    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getHeight()I

    move-result v2

    .line 92
    iget-object v4, p0, Lo/Xw;->j:Lo/GridView;

    invoke-virtual {v4}, Lo/GridView;->getId()I

    move-result v4

    .line 89
    invoke-direct {p0, v3, v2, v4, p1}, Lo/Xw;->a(IIIF)V

    .line 97
    :cond_5
    invoke-interface {p3}, Lcom/netflix/model/leafs/PostPlayItem;->getRuntime()I

    move-result p1

    if-eqz p1, :cond_6

    .line 98
    invoke-interface {p3}, Lcom/netflix/model/leafs/PostPlayItem;->getRuntime()I

    move-result p1

    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lo/Xw;->h:Lo/HorizontalScrollView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lo/Xw;->h:Lo/HorizontalScrollView;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setVisibility(I)V

    goto :goto_4

    .line 102
    :cond_6
    iget-object p1, p0, Lo/Xw;->h:Lo/HorizontalScrollView;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 105
    :goto_4
    invoke-interface {p3}, Lcom/netflix/model/leafs/PostPlayItem;->getSupplementalMessage()Ljava/lang/String;

    move-result-object p1

    .line 106
    iget-object p2, p0, Lo/Xw;->i:Lo/ImageSwitcher;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lo/Xw;->i:Lo/ImageSwitcher;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 111
    :cond_7
    iget-object p1, p0, Lo/Xw;->e:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlaySeconds()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/Xw;->b(I)V

    return-void

    .line 30
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lo/Xw;)Lio/reactivex/subjects/Subject;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/Xw;->t:Lio/reactivex/subjects/Subject;

    return-object p0
.end method

.method private final a(IIIF)V
    .locals 3

    .line 115
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 116
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->og:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/MenuInflater;

    .line 117
    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 118
    invoke-virtual {v0, p3, p4}, Lo/Factory2;->a(IF)V

    .line 119
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lo/Factory2;->d(ILjava/lang/String;)V

    .line 120
    invoke-virtual {v0, v1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method public static final synthetic b(Lo/Xw;Ljava/lang/Long;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/Xw;->l:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic c(Lo/Xw;)Ljava/lang/Long;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/Xw;->l:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic d(Lo/Xw;)Lcom/netflix/model/leafs/PostPlayItem;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/Xw;->e:Lcom/netflix/model/leafs/PostPlayItem;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 31
    iget v0, p0, Lo/Xw;->b:I

    return v0
.end method

.method public b()V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lo/Xw;->j()V

    .line 137
    invoke-virtual {p0}, Lo/Xw;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 150
    iget-object v0, p0, Lo/Xw;->g:Lo/HorizontalScrollView;

    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 151
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->je:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lo/Xw;->g:Lo/HorizontalScrollView;

    iget-object v0, p0, Lo/Xw;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jc:I

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 4

    .line 124
    iget-object v0, p0, Lo/Xw;->s:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 126
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/Countdown;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/netflix/cl/model/event/session/Countdown;-><init>(Ljava/lang/Long;)V

    check-cast v3, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/Xw;->l:Ljava/lang/Long;

    .line 127
    invoke-virtual {p0}, Lo/Xw;->h()V

    .line 128
    invoke-virtual {p0}, Lo/Xw;->p()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lo/Xw;->f()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/Xw;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public h()V
    .locals 8

    .line 162
    invoke-virtual {p0}, Lo/Xw;->j()V

    .line 164
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v5

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    invoke-static/range {v0 .. v5}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lo/Xw;->e:Lcom/netflix/model/leafs/PostPlayItem;

    const-string v2, "autoPlayItem"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlaySeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 166
    new-instance v1, Lo/Xw$Activity;

    invoke-direct {v1, p0}, Lo/Xw$Activity;-><init>(Lo/Xw;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "Observable.interval(0, 1\u2026em.autoPlaySeconds - it }"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$2;-><init>(Lo/Xw;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 171
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$3;-><init>(Lo/Xw;)V

    move-object v4, v0

    check-cast v4, Lo/alB;

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 167
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/Xw;->k:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public i()I
    .locals 1

    .line 145
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eP:I

    return v0
.end method

.method public j()V
    .locals 1

    .line 182
    iget-object v0, p0, Lo/Xw;->k:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
