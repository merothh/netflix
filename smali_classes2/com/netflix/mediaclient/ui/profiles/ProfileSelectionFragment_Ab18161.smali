.class public final Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;
.super Lo/YO;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;,
        Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;,
        Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$TaskDescription;,
        Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;
    }
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;

.field public static final f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;


# instance fields
.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private k:I

.field private final l:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;

.field public latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public latencyTracker:Lo/ViewSwitcher;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final m:Lo/ams;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/BC;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lo/aka;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private final v:Landroid/widget/AdapterView$OnItemClickListener;

.field private y:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "content"

    const-string v5, "getContent()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "gridView"

    const-string v5, "getGridView()Lcom/netflix/mediaclient/android/widget/StaticGridView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "topTextHeader"

    const-string v5, "getTopTextHeader()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "profileSelectionParent"

    const-string v4, "getProfileSelectionParent()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b:[Lo/amT;

    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lo/YO;-><init>()V

    .line 85
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->h:Lo/ams;

    .line 86
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pz:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->j:Lo/ams;

    .line 87
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->i:Lo/ams;

    .line 88
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pG:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->m:Lo/ams;

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$loadingAndErrorWrapper$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$loadingAndErrorWrapper$2;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->o:Lo/aka;

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->l:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;

    .line 91
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->n:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private final A()V
    .locals 3

    .line 298
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v0, Lo/MessagePdu;

    .line 299
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->z()Lo/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 300
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->g()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 301
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v()Lo/RatingBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/RatingBar;->setEnabled(Z)V

    .line 303
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->g()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lo/aeV;->d(Landroid/view/View;Z)V

    .line 311
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ad_()Z

    return-void
.end method

.method private final B()V
    .locals 0

    return-void
.end method

.method private final C()V
    .locals 3

    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aq:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->k:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    .line 285
    div-int/lit8 v0, v0, 0x2

    .line 287
    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v1, Lo/MessagePdu;

    .line 290
    invoke-static {}, Lo/afw;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v()Lo/RatingBar;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2, v2}, Lo/RatingBar;->setPadding(IIII)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v()Lo/RatingBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v0, v2}, Lo/RatingBar;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private final D()V
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v0

    .line 266
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->c(Landroid/content/Context;)I

    move-result v1

    .line 264
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->e(II)I

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->l:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x2

    .line 272
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->k:I

    .line 274
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v0, Lo/MessagePdu;

    .line 275
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v()Lo/RatingBar;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->k:I

    invoke-virtual {v0, v1}, Lo/RatingBar;->setNumColumns(I)V

    .line 277
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->C()V

    return-void
.end method

.method private final E()Z
    .locals 3

    .line 573
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->t()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    sget-object v2, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {v2, v0}, Lo/Zg;->a(Landroid/content/Intent;)V

    .line 576
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/NetflixApplication;->c(Landroid/content/Intent;)V

    .line 577
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final F()V
    .locals 2

    .line 738
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startRenderNavigationLevelSession()V

    .line 743
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private final G()V
    .locals 3

    .line 334
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 336
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v0, Lo/MessagePdu;

    .line 337
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 340
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    .line 342
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->s:Z

    .line 339
    invoke-static {v0, v1, v2}, Lo/Jx;->d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 338
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final H()Z
    .locals 3

    .line 613
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->U_()Lo/Am;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "it"

    .line 614
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lo/Am;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final I()V
    .locals 6

    .line 431
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ad_()Z

    .line 434
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireActivity()Lo/Serializable;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/Serializable;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lo/adh;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 437
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->x()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0x190

    int-to-long v1, v1

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 441
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v()Lo/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Lo/RatingBar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 442
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v()Lo/RatingBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/RatingBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 444
    sget-object v3, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v3, Lo/MessagePdu;

    goto :goto_3

    .line 445
    :cond_1
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 446
    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->tG:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "item.findViewById<View>(R.id.top_edit_img)"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    .line 447
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 448
    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->pl:I

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->e(Landroid/view/View;I)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 451
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->N()Lo/SharedElementCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/SharedElementCallback;->invalidateOptionsMenu()V

    return-void
.end method

.method private final N()Lo/SharedElementCallback;
    .locals 2

    .line 755
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/SharedElementCallback;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->G()V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Landroid/content/Intent;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d(Landroid/content/Intent;)V

    return-void
.end method

.method private final a(Lo/Am;)V
    .locals 1

    .line 328
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t:Z

    .line 330
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lo/Am;)V

    return-void
.end method

.method private final a(Lo/BC;)V
    .locals 1

    if-nez p1, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireActivity()Lo/Serializable;

    move-result-object p1

    invoke-virtual {p1}, Lo/Serializable;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 587
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t:Z

    .line 588
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->A()V

    .line 589
    invoke-interface {p1}, Lo/BC;->isKidsProfile()Z

    move-result p1

    if-nez p1, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    const-string v0, "requireNetflixActivity()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportActionBar()Lo/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/Fragment;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 2

    .line 759
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 762
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v0, Lo/MessagePdu;

    .line 763
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 766
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    const-string v0, "onProfilesGateDisplayed"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/NetflixApplication;->d(Ljava/lang/String;)V

    .line 767
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    if-nez p1, :cond_1

    const-string v0, "latencyMarker"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->j:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->C()V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/Am;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->a(Lo/Am;)V

    return-void
.end method

.method private final b(Lo/BC;)V
    .locals 8

    .line 511
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    const-string v1, "requireNetflixActivity()"

    if-eqz v0, :cond_0

    .line 512
    invoke-interface {v0}, Lo/BC;->isKidsProfile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportActionBar()Lo/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/Fragment;->b()V

    :cond_0
    const/4 v2, 0x1

    .line 516
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t:Z

    .line 517
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Z)V

    .line 519
    new-instance v2, Lo/Zf;

    invoke-direct {v2}, Lo/Zf;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, p1}, Lo/Zf;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lio/reactivex/Observable;

    move-result-object p1

    .line 903
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {p0, v1}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v1

    const-string v2, "AndroidLifecycleScopePro\u2026fecycle.Event.ON_DESTROY)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 904
    check-cast v1, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableConverter;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "this.`as`(AutoDispose.autoDisposable(provider))"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 522
    new-instance p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;

    invoke-direct {p1, p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/BC;)V

    move-object v5, p1

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 565
    new-instance p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$2;

    invoke-direct {p1, p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$2;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/BC;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 521
    invoke-static/range {v2 .. v7}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->n:Ljava/util/List;

    return-object p0
.end method

.method private final c(Landroid/content/Intent;)V
    .locals 1

    .line 733
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {v0, p1}, Lo/Zg;->c(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->r:Z

    .line 734
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method private final c(Lo/Am;)V
    .locals 4

    .line 224
    invoke-virtual {p1}, Lo/Am;->X()Ljava/util/List;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    if-nez v1, :cond_0

    const-string v2, "latencyMarker"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->f:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;)V

    const-string v1, "latencyTracker"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 227
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v0, Lo/MessagePdu;

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->latencyTracker:Lo/ViewSwitcher;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, v2}, Lo/ViewSwitcher;->b(Z)Lo/ViewAnimator;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Lo/ViewAnimator;->a()Lo/YearPickerView;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Lo/YearPickerView;->d()V

    .line 233
    invoke-virtual {p1}, Lo/Am;->t()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    const-string v0, "manager.requireClientLogging()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object p1

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No profiles found for user!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 233
    invoke-interface {p1, v0}, Lo/zz;->e(Ljava/lang/Throwable;)V

    return-void

    .line 239
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    .line 240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/BC;

    .line 241
    sget-object v3, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v3, Lo/MessagePdu;

    goto :goto_0

    .line 244
    :cond_3
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->n:Ljava/util/List;

    .line 246
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->latencyTracker:Lo/ViewSwitcher;

    if-nez p1, :cond_4

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lo/ViewSwitcher;->b(Z)Lo/ViewAnimator;

    move-result-object p1

    .line 247
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/ViewAnimator;->a(Ljava/lang/String;)Lo/ViewAnimator;

    move-result-object p1

    .line 248
    invoke-interface {p1}, Lo/ViewAnimator;->a()Lo/YearPickerView;

    move-result-object p1

    .line 249
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requireImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/YearPickerView;->e(Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    .line 251
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v()Lo/RatingBar;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->l:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lo/RatingBar;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->D()V

    .line 254
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->A()V

    .line 256
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t:Z

    if-eqz p1, :cond_5

    .line 257
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    .line 259
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Z)V

    :cond_5
    return-void
.end method

.method private final c(Z)V
    .locals 2

    .line 315
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v0, Lo/MessagePdu;

    .line 316
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->z()Lo/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    .line 317
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 318
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v()Lo/RatingBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/RatingBar;->setEnabled(Z)V

    const v0, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->g()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/16 v0, 0x190

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->g()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private final d(Landroid/content/Intent;)V
    .locals 2

    .line 349
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    const-string v1, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_INT"

    .line 350
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_STRING"

    .line 354
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-static {v0}, Lcom/netflix/mediaclient/StatusCode;->e(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    const-string v1, "StatusCode.getStatusCodeByValue(statusCode)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 358
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 364
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 365
    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 366
    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Z)V

    .line 368
    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 369
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private final d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 716
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    const-string v0, "CLv2Utils.toError(res)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-class v1, Lcom/netflix/cl/model/event/session/action/Navigate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    .line 718
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/Navigate;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/action/Navigate;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->D()V

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/Am;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->e(Lo/Am;)V

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/BC;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->a(Lo/BC;)V

    return-void
.end method

.method private final d(Lo/Am;Lo/BC;)V
    .locals 6

    .line 474
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 475
    invoke-interface {v0}, Lo/BC;->isKidsProfile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const-string v2, "requireNetflixActivity()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportActionBar()Lo/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Fragment;->b()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.appcompat.app.ActionBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 479
    invoke-interface {v0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 480
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    if-nez v3, :cond_3

    const-string v4, "latencyMarker"

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    sget-object v4, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    xor-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v4, v5}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V

    .line 484
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->r:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->u:Ljava/lang/String;

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 485
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    .line 486
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    const-string p2, "NetflixApplication.getInstance()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->t()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 488
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {v0, p1}, Lo/Zg;->a(Landroid/content/Intent;)V

    .line 489
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-static {v0, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/NetflixApplication;->c(Landroid/content/Intent;)V

    .line 490
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->startActivity(Landroid/content/Intent;)V

    .line 492
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->exit()V

    return-void

    .line 496
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 497
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    .line 499
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    sget-object p2, Lo/LegacyErrorStrings;->n:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p1, p2, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    return-void

    .line 504
    :cond_6
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t:Z

    .line 505
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Z)V

    .line 506
    invoke-interface {p2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Am;->b(Ljava/lang/String;)V

    .line 507
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->r:Z

    return-void
.end method

.method private final e(II)I
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p1, v1, :cond_3

    if-eq p2, v1, :cond_1

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3

    :cond_3
    if-eq p2, v1, :cond_4

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_5

    if-eq p2, v0, :cond_5

    :cond_4
    const/4 v2, 0x2

    :cond_5
    return v2
.end method

.method private final e(Landroid/view/View;I)V
    .locals 2

    .line 455
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    if-eqz p2, :cond_0

    const p2, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/16 p2, 0x190

    int-to-long v0, p2

    .line 456
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/Am;Lo/BC;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->e(Lo/Am;Lo/BC;)V

    return-void
.end method

.method private final e(Lo/Am;)V
    .locals 1

    .line 628
    invoke-virtual {p1}, Lo/Am;->X()Ljava/util/List;

    move-result-object p1

    const-string v0, "manager.allProfiles"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->n:Ljava/util/List;

    .line 629
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    .line 630
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->l:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->notifyDataSetChanged()V

    return-void
.end method

.method private final e(Lo/Am;Lo/BC;)V
    .locals 1

    .line 460
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b(Lo/BC;)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d(Lo/Am;Lo/BC;)V

    :goto_0
    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    return p0
.end method

.method public static final synthetic f(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->E()Z

    move-result p0

    return p0
.end method

.method private final g()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic g(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Landroid/view/View;
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->y()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Lo/SharedElementCallback;
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->N()Lo/SharedElementCallback;

    move-result-object p0

    return-object p0
.end method

.method private final v()Lo/RatingBar;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RatingBar;

    return-object v0
.end method

.method private final x()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final y()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final z()Lo/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->o:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/EditText;

    return-object v0
.end method


# virtual methods
.method public ad_()Z
    .locals 4

    .line 406
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "requireNetflixActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 407
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 408
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 410
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pl:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 412
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pl:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resources.getString(R.st\u2026ile_edit_actionbar_title)"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 415
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->v:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resources.getString(R.st\u2026ity_switch_profile_title)"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requireNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 421
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireActivity()Lo/Serializable;

    move-result-object v0

    const-string v3, "requireActivity()"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/Serializable;->setTitle(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->invalidateOptionsMenu()V

    return v2
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->y:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final d()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    if-nez v0, :cond_0

    const-string v1, "latencyMarker"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 603
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 604
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    .line 605
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->I()V

    const/4 v0, 0x1

    return v0

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->H()Z

    move-result v0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .line 620
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public n()Z
    .locals 1

    .line 596
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-super {p0, p1}, Lo/YO;->onAttach(Landroid/app/Activity;)V

    .line 126
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "activity.intent"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/Zg;->h(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->s:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-super {p0, p1, p2, p3}, Lo/YO;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireActivity()Lo/Serializable;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Serializable;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->latencyTracker:Lo/ViewSwitcher;

    if-nez v3, :cond_1

    const-string v4, "latencyTracker"

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t()Lcom/netflix/cl/model/AppView;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lo/UnicodeScript;

    invoke-interface {v3, v4, v5}, Lo/ViewSwitcher;->d(Lcom/netflix/cl/model/AppView;Lo/UnicodeScript;)Lo/WrapperListAdapter;

    move-result-object v3

    .line 140
    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->s:Z

    invoke-interface {v3, v4}, Lo/WrapperListAdapter;->a(Z)Lo/WrapperListAdapter;

    move-result-object v3

    .line 141
    invoke-interface {v3, v2}, Lo/WrapperListAdapter;->c(Z)Lo/WrapperListAdapter;

    move-result-object v2

    .line 142
    sget-object v3, Lo/Zg;->c:Lo/Zg;

    const-string v4, "intent"

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lo/Zg;->g(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lo/WrapperListAdapter;->d(Ljava/lang/String;)Lo/WrapperListAdapter;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Lo/WrapperListAdapter;->b()Lo/WrapperListAdapter;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Lo/WrapperListAdapter;->a()V

    if-nez p3, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->F()V

    .line 150
    :cond_2
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->ft:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 181
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->cleanUpInteractiveTrackers()V

    .line 183
    invoke-super {p0}, Lo/YO;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/YO;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c()V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lo/Am;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-super {p0, p1}, Lo/YO;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    sget-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v0, Lo/MessagePdu;

    .line 193
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t:Z

    const-string v1, "is_loading"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    const-string v1, "is_profile_edit_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1, p2}, Lo/YO;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireActivity()Lo/Serializable;

    move-result-object p1

    const-string v0, "requireActivity()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/Serializable;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 158
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v()Lo/RatingBar;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lo/RatingBar;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->v()Lo/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Lo/RatingBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$LoaderManager;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$LoaderManager;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 160
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    const-string v1, "intent"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/Zg;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->u:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 163
    sget-object p2, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p2, p1}, Lo/Zg;->e(Landroid/content/Intent;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    .line 164
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->p:Z

    .line 165
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->I()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "is_loading"

    .line 167
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t:Z

    const-string v1, "is_profile_edit_mode"

    .line 168
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    .line 169
    sget-object p2, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p2, Lo/MessagePdu;

    .line 170
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->I()V

    .line 173
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->B()V

    .line 174
    new-instance p2, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$TaskDescription;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V

    .line 175
    move-object v0, p2

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$TaskDescription;->e()Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 624
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->q:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/cl/model/AppView;->editProfiles:Lcom/netflix/cl/model/AppView;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/cl/model/AppView;->profilesGate:Lcom/netflix/cl/model/AppView;

    :goto_0
    return-object v0
.end method
