.class public final Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;
.super Lo/StateSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;,
        Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$ActionBar;
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;

.field public static final e:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$ActionBar;


# instance fields
.field private A:Ljava/util/HashMap;

.field private B:Z

.field private final b:Ljava/lang/String;

.field public c:Lo/StatsLog;

.field private final f:Lo/ams;

.field private final g:Lcom/netflix/cl/model/AppView;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field public onRampNavigationListener:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final p:Lo/ams;

.field private final q:Lo/ams;

.field private final r:Lo/ams;

.field private final s:Lo/ams;

.field private final t:Lo/ams;

.field private u:Lo/TextClassificationSessionFactory;

.field private final v:Lo/ams;

.field public viewModelInitializer:Lo/TypedValue;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final w:Lo/ams;

.field private final x:Lo/ams;

.field private final y:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    const/16 v1, 0x12

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "recyclerView"

    const-string v5, "getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "headerView"

    const-string v5, "getHeaderView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "onRampToolbar"

    const-string v5, "getOnRampToolbar()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "scrollView"

    const-string v5, "getScrollView()Landroidx/core/widget/NestedScrollView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "stickyHeader"

    const-string v5, "getStickyHeader()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "subheaderTextView"

    const-string v5, "getSubheaderTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "stickyHeaderText"

    const-string v5, "getStickyHeaderText()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "chooseTextView"

    const-string v5, "getChooseTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "headerViewTitleSelectionCount"

    const-string v5, "getHeaderViewTitleSelectionCount()Lcom/netflix/mediaclient/acquisition2/screens/onRamp/TitleSelectionCountView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "stickerHeaderTitleSelectionCount"

    const-string v5, "getStickerHeaderTitleSelectionCount()Lcom/netflix/mediaclient/acquisition2/screens/onRamp/TitleSelectionCountView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "headerButton"

    const-string v5, "getHeaderButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "stickyCtaButton"

    const-string v5, "getStickyCtaButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "signOutButton"

    const-string v5, "getSignOutButton()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "personalizationSignOutButton"

    const-string v5, "getPersonalizationSignOutButton()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "personlizationScreen"

    const-string v5, "getPersonlizationScreen()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "personalizationTopTitles"

    const-string v5, "getPersonalizationTopTitles()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "personalizationBottomTitles"

    const-string v5, "getPersonalizationBottomTitles()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "personalizationHeader"

    const-string v4, "getPersonalizationHeader()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->e:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lo/StateSet;-><init>()V

    const-string v0, "onramp"

    .line 42
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->b:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/netflix/cl/model/AppView;->onramp:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->g:Lcom/netflix/cl/model/AppView;

    .line 47
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qp:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->h:Lo/ams;

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hr:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->f:Lo/ams;

    .line 53
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lA:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->j:Lo/ams;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->i:Lo/ams;

    .line 59
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sl:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->k:Lo/ams;

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sF:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m:Lo/ams;

    .line 65
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sn:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->l:Lo/ams;

    .line 68
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cv:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->o:Lo/ams;

    .line 71
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ty:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->n:Lo/ams;

    .line 74
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->so:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->r:Lo/ams;

    .line 77
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ho:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->p:Lo/ams;

    .line 80
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sh:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->q:Lo/ams;

    .line 83
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rv:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->t:Lo/ams;

    .line 86
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rt:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->s:Lo/ams;

    .line 89
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mb:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->w:Lo/ams;

    .line 92
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sj:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->v:Lo/ams;

    .line 95
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sc:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->x:Lo/ams;

    .line 98
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lX:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->y:Lo/ams;

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$VoiceInteractor;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$VoiceInteractor;-><init>()V

    check-cast v0, Lo/TextClassificationSessionFactory;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->u:Lo/TextClassificationSessionFactory;

    return-void
.end method

.method private final I()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->u()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v1

    invoke-virtual {v1}, Lo/StatsLog;->i()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->t()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v1

    invoke-virtual {v1}, Lo/StatsLog;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->y()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v1

    invoke-virtual {v1}, Lo/StatsLog;->i()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final J()V
    .locals 9

    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v0

    invoke-virtual {v0}, Lo/StatsLog;->n()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 149
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lo/anv;->c(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v3

    invoke-virtual {v3}, Lo/StatsLog;->o()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lo/SuperNotCalledException;

    invoke-virtual {v5}, Lo/SuperNotCalledException;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    check-cast v4, Lo/SuperNotCalledException;

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lo/SuperNotCalledException;->c(Z)V

    goto :goto_1

    .line 156
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->o()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v3

    invoke-virtual {v3}, Lo/StatsLog;->j()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 157
    new-instance v0, Lo/StringBuilderPrinter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v1

    invoke-virtual {v1}, Lo/StatsLog;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v2

    invoke-virtual {v2}, Lo/StatsLog;->f()Lo/Cloneable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/StringBuilderPrinter;-><init>(Ljava/util/List;Lo/Cloneable;)V

    .line 158
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->o()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 159
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->o()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lo/SparseLongArray;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v2

    invoke-virtual {v2}, Lo/StatsLog;->j()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ab:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lo/SparseLongArray;-><init>(II)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    return-void
.end method

.method private final K()V
    .locals 3

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->r()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v1, "animator"

    .line 200
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 313
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$Application;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    .line 319
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final L()V
    .locals 3

    .line 163
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v0

    invoke-virtual {v0}, Lo/StatsLog;->f()Lo/Cloneable;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$AssistContent;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$AssistContent;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    check-cast v2, Lo/ClassFormatError;

    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method private final M()V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->s()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PictureInPictureParams;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PictureInPictureParams;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    check-cast v1, Landroidx/core/widget/NestedScrollView$StateListAnimator;

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$StateListAnimator;)V

    return-void
.end method

.method private final N()V
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->r()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v1, "animator"

    .line 211
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 326
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$Activity;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    .line 332
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final P()V
    .locals 3

    .line 238
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->p()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v1, "animator"

    .line 242
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 367
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$LoaderManager;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$LoaderManager;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    .line 373
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 380
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$TaskDescription;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    .line 386
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final Q()V
    .locals 4

    .line 276
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 277
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$TaskStackBuilder;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$TaskStackBuilder;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->E()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v1

    invoke-virtual {v1}, Lo/StatsLog;->h()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->H()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->A()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 287
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->B()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final R()V
    .locals 4

    .line 218
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->p()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 219
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->p()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    int-to-float v0, v0

    neg-float v0, v0

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    const-string v0, "translationY"

    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v1, "animator"

    .line 223
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 340
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$BroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$BroadcastReceiver;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    .line 346
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$SharedElementCallback;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$SharedElementCallback;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    .line 359
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private final S()V
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->C()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$Dialog;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$Dialog;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PendingIntent;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PendingIntent;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->D()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$Fragment;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$Fragment;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->z()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$FragmentManager;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$FragmentManager;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final a(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 2

    .line 291
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 292
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(I)V

    .line 293
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 294
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lo/StatsLog;->k()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/StatsLog;->m()Ljava/util/List;

    move-result-object v0

    .line 295
    :goto_0
    new-instance v1, Lo/TimingsTraceLog;

    invoke-direct {v1, v0, p2}, Lo/TimingsTraceLog;-><init>(Ljava/util/List;Z)V

    .line 296
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    const/4 p2, 0x1

    .line 297
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->K()V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->c(I)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->R()V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->B:Z

    return-void
.end method

.method private final c(I)V
    .locals 1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setActivated(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->C()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setActivated(Z)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setActivated(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->C()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setActivated(Z)V

    :goto_0
    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->P()V

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->N()V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->B:Z

    return p0
.end method

.method public static final synthetic f(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->Q()V

    return-void
.end method


# virtual methods
.method public final A()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->v:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final B()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->w:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final C()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->q:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final D()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->t:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final E()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->y:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final F()Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->onRampNavigationListener:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;

    if-nez v0, :cond_0

    const-string v1, "onRampNavigationListener"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final G()Lo/TextClassificationSessionFactory;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->u:Lo/TextClassificationSessionFactory;

    return-object v0
.end method

.method public final H()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->x:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->A:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->A:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->A:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->A:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->A:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(Lo/StatsLog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->c:Lo/StatsLog;

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->g:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public m()Lo/StatsLog;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->c:Lo/StatsLog;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final o()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1}, Lo/StateSet;->onAttach(Landroid/content/Context;)V

    .line 124
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->viewModelInitializer:Lo/TypedValue;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/TypedValue;->a(Landroidx/fragment/app/Fragment;)Lo/StatsLog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->b(Lo/StatsLog;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object p3, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->onRampNavigationListener:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;

    if-nez p3, :cond_0

    const-string v0, "onRampNavigationListener"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;->onrampNavigated()V

    .line 129
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bJ:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/StateSet;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-super {p0, p1, p2}, Lo/StateSet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 134
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->J()V

    .line 135
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->S()V

    .line 136
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->M()V

    .line 137
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->L()V

    .line 138
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->I()V

    return-void
.end method

.method public final p()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final q()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final r()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final s()Landroidx/core/widget/NestedScrollView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method

.method public final t()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final u()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->p:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final w()Lo/TrustedTime;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TrustedTime;

    return-object v0
.end method

.method public final x()Lo/TrustedTime;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->r:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TrustedTime;

    return-object v0
.end method

.method public final y()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final z()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->s:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a:[Lo/amT;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
