.class public final Lo/Fe;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fe$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;

.field public static final b:Lo/Fe$ActionBar;

.field private static final l:Landroid/view/animation/Interpolator;

.field private static final n:Landroid/view/animation/Interpolator;


# instance fields
.field private final c:Landroid/view/ViewGroup;

.field private final d:Lo/ams;

.field private final e:I

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final o:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Fe;

    const/16 v1, 0x8

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "dpTabsScrollMenuLayout"

    const-string v5, "getDpTabsScrollMenuLayout()Landroid/widget/HorizontalScrollView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "tabsScrollableDivider"

    const-string v5, "getTabsScrollableDivider()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "firstTabContainer"

    const-string v5, "getFirstTabContainer()Landroid/widget/Button;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "firstTabSelector"

    const-string v5, "getFirstTabSelector()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "secondTabContainer"

    const-string v5, "getSecondTabContainer()Landroid/widget/Button;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "secondTabSelector"

    const-string v5, "getSecondTabSelector()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "thirdTabContainer"

    const-string v5, "getThirdTabContainer()Landroid/widget/Button;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "thirdTabSelector"

    const-string v4, "getThirdTabSelector()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lo/Fe;->a:[Lo/amT;

    new-instance v0, Lo/Fe$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fe$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fe;->b:Lo/Fe$ActionBar;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3ea3d70a    # 0.32f

    .line 27
    invoke-static {v1, v0, v2, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    sput-object v1, Lo/Fe;->l:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    .line 33
    invoke-static {v1, v2, v1, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/Fe;->n:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 42
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aX:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Fe;->c:Landroid/view/ViewGroup;

    .line 44
    invoke-virtual {p0}, Lo/Fe;->j()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, p0, Lo/Fe;->e:I

    .line 46
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->fr:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fe;->d:Lo/ams;

    .line 48
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ef:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fe;->i:Lo/ams;

    .line 50
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uE:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fe;->j:Lo/ams;

    .line 51
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uH:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fe;->h:Lo/ams;

    .line 53
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uK:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fe;->f:Lo/ams;

    .line 54
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uP:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fe;->g:Lo/ams;

    .line 56
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uL:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fe;->o:Lo/ams;

    .line 57
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uQ:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fe;->k:Lo/ams;

    .line 60
    invoke-virtual {p0}, Lo/Fe;->j()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 42
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p2, 0x0

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 134
    sget-object v0, Lo/Fe;->n:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lo/Fe$TaskDescription;

    invoke-direct {v0, p1}, Lo/Fe$TaskDescription;-><init>(Landroid/view/View;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lo/Fe;->l:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 142
    new-instance v0, Lo/Fe$StateListAnimator;

    invoke-direct {v0, p1}, Lo/Fe$StateListAnimator;-><init>(Landroid/view/View;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method private final a(Landroid/widget/Button;Landroid/view/View;Z)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lo/Fe;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    const-class v1, Landroid/app/Activity;

    .line 114
    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz p3, :cond_0

    .line 119
    sget v1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->i:I

    goto :goto_0

    .line 121
    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->f:I

    .line 113
    :goto_0
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v0

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 125
    invoke-direct {p0, p2, p3}, Lo/Fe;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static final synthetic b(Lo/Fe;Landroid/view/ViewGroup;Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lo/Fe;->e(Landroid/view/ViewGroup;Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Point;)V

    return-void
.end method

.method public static final synthetic c(Lo/Fe;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/Fe;->k()Landroid/widget/HorizontalScrollView;

    move-result-object p0

    return-object p0
.end method

.method private final e(Landroid/view/ViewGroup;Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 177
    check-cast p2, Landroid/view/ViewGroup;

    .line 178
    iget v0, p4, Landroid/graphics/Point;->x:I

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Point;->x:I

    .line 179
    iget v0, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    add-int/2addr v0, p3

    iput v0, p4, Landroid/graphics/Point;->y:I

    if-ne p2, p1, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    const-string v0, "parentGroup.parent"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p3, p2, p4}, Lo/Fe;->e(Landroid/view/ViewGroup;Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Point;)V

    return-void

    .line 177
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final e(Landroid/widget/Button;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Lo/Fe;->k()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lo/Fe$Application;

    invoke-direct {v1, p0, p1}, Lo/Fe$Application;-><init>(Lo/Fe;Landroid/widget/Button;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final k()Landroid/widget/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/Fe;->d:Lo/ams;

    sget-object v1, Lo/Fe;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private final l()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Fe;->i:Lo/ams;

    sget-object v1, Lo/Fe;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final m()Landroid/widget/Button;
    .locals 3

    iget-object v0, p0, Lo/Fe;->j:Lo/ams;

    sget-object v1, Lo/Fe;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private final n()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Fe;->h:Lo/ams;

    sget-object v1, Lo/Fe;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final o()Landroid/widget/Button;
    .locals 3

    iget-object v0, p0, Lo/Fe;->f:Lo/ams;

    sget-object v1, Lo/Fe;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private final q()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Fe;->k:Lo/ams;

    sget-object v1, Lo/Fe;->a:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final r()Landroid/widget/Button;
    .locals 3

    iget-object v0, p0, Lo/Fe;->o:Lo/ams;

    sget-object v1, Lo/Fe;->a:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private final s()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Fe;->g:Lo/ams;

    sget-object v1, Lo/Fe;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 44
    iget v0, p0, Lo/Fe;->e:I

    return v0
.end method

.method public final c(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/DQ;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "tabs"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/Button;

    .line 64
    invoke-direct {p0}, Lo/Fe;->m()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lo/Fe;->o()Landroid/widget/Button;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {p0}, Lo/Fe;->r()Landroid/widget/Button;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v0, v0, [Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lo/Fe;->n()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-direct {p0}, Lo/Fe;->s()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-direct {p0}, Lo/Fe;->q()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v5

    .line 68
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v5, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/DQ;

    .line 69
    aget-object v7, v1, v2

    .line 70
    aget-object v8, v0, v2

    .line 71
    sget-object v9, Lo/DJ;->e:Lo/DJ;

    invoke-virtual {p0}, Lo/Fe;->j()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "uiView.context"

    invoke-static {v10, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, p2, v6, v10}, Lo/DJ;->c(Ljava/lang/String;Lo/DQ;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 72
    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    move-object v9, v7

    check-cast v9, Landroid/view/View;

    invoke-static {v9, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 75
    invoke-virtual {v7}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_0

    check-cast v9, Landroid/view/View;

    invoke-static {v9, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 77
    new-instance v9, Lo/Fe$Activity;

    invoke-direct {v9, p0, v6, v2}, Lo/Fe$Activity;-><init>(Lo/Fe;Lo/DQ;I)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-direct {p0}, Lo/Fe;->l()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-direct {p0, v7, v8, v5}, Lo/Fe;->a(Landroid/widget/Button;Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/Fe;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 199
    invoke-virtual {p0}, Lo/Fe;->j()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final e(I)V
    .locals 5

    .line 98
    invoke-direct {p0}, Lo/Fe;->m()Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0}, Lo/Fe;->n()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v4}, Lo/Fe;->a(Landroid/widget/Button;Landroid/view/View;Z)V

    .line 99
    invoke-direct {p0}, Lo/Fe;->o()Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0}, Lo/Fe;->s()Landroid/view/View;

    move-result-object v1

    if-ne p1, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v0, v1, v4}, Lo/Fe;->a(Landroid/widget/Button;Landroid/view/View;Z)V

    .line 100
    invoke-direct {p0}, Lo/Fe;->r()Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0}, Lo/Fe;->q()Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lo/Fe;->a(Landroid/widget/Button;Landroid/view/View;Z)V

    if-nez p1, :cond_3

    .line 104
    invoke-direct {p0}, Lo/Fe;->m()Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Fe;->e(Landroid/widget/Button;)V

    :cond_3
    if-ne p1, v4, :cond_4

    .line 107
    invoke-direct {p0}, Lo/Fe;->r()Landroid/widget/Button;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Fe;->e(Landroid/widget/Button;)V

    :cond_4
    return-void
.end method

.method public final f()V
    .locals 2

    .line 187
    invoke-direct {p0}, Lo/Fe;->k()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 191
    invoke-direct {p0}, Lo/Fe;->k()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 195
    invoke-direct {p0}, Lo/Fe;->l()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public j()Landroid/view/ViewGroup;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/Fe;->c:Landroid/view/ViewGroup;

    return-object v0
.end method
