.class public final Lo/SpellCheckSpan;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field static final synthetic d:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final b:Lo/ams;

.field private final c:Lo/ams;

.field private final e:Lo/ams;

.field private f:Ljava/lang/CharSequence;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/SpellCheckSpan;

    const/4 v1, 0x6

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "upgradedPlan"

    const-string v5, "getUpgradedPlan()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "upgradedPlanPrice"

    const-string v5, "getUpgradedPlanPrice()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "zeroPrice"

    const-string v5, "getZeroPrice()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "userSelectedPlan"

    const-string v5, "getUserSelectedPlan()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "userSelectedPlanPrice"

    const-string v5, "getUserSelectedPlanPrice()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "changePlanView"

    const-string v4, "getChangePlanView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lo/SpellCheckSpan;->d:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/SpellCheckSpan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/SpellCheckSpan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->uh:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/SpellCheckSpan;->c:Lo/ams;

    .line 25
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ul:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/SpellCheckSpan;->a:Lo/ams;

    .line 27
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->vL:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/SpellCheckSpan;->b:Lo/ams;

    .line 29
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->rh:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/SpellCheckSpan;->e:Lo/ams;

    .line 31
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->re:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/SpellCheckSpan;->h:Lo/ams;

    .line 33
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->cb:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/SpellCheckSpan;->g:Lo/ams;

    .line 36
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->ag:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Lo/SpellCheckSpan;->e()Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 18
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/SpellCheckSpan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final d(Lo/GhostView;Lo/GhostView;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Lo/GhostView;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lo/SpellCheckSpan;->setUserSelectedPlanText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p1}, Lo/GhostView;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/SpellCheckSpan;->setUserSelectedPlanPriceText(Ljava/lang/CharSequence;)V

    if-nez p4, :cond_2

    .line 107
    iget-object p1, p0, Lo/SpellCheckSpan;->m:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object p1, p3

    check-cast p1, Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p0, p1}, Lo/SpellCheckSpan;->setZeroPriceText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    .line 108
    invoke-virtual {p2}, Lo/GhostView;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v0

    :goto_3
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/SpellCheckSpan;->setUpgradedPlanText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_4

    .line 109
    invoke-virtual {p2}, Lo/GhostView;->b()Ljava/lang/String;

    move-result-object v0

    :cond_4
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lo/SpellCheckSpan;->setUpgradedPlanPriceText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lo/SpellCheckSpan;->f()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/SpellCheckSpan;->h:Lo/ams;

    sget-object v1, Lo/SpellCheckSpan;->d:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final a(Lo/RelativeSizeSpan;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "upgradeOnUsPlanViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1, p2}, Lo/RelativeSizeSpan;->e(Ljava/lang/String;)Lo/GhostView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p2}, Lo/GhostView;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lo/RelativeSizeSpan;->a(Ljava/lang/String;)Lo/GhostView;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lo/RelativeSizeSpan;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Lo/RelativeSizeSpan;->e()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lo/RelativeSizeSpan;->c()Z

    move-result p1

    .line 86
    invoke-direct {p0, p2, v0, v1, p1}, Lo/SpellCheckSpan;->d(Lo/GhostView;Lo/GhostView;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/SpellCheckSpan;->b:Lo/ams;

    sget-object v1, Lo/SpellCheckSpan;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/SpellCheckSpan;->c:Lo/ams;

    sget-object v1, Lo/SpellCheckSpan;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/SpellCheckSpan;->e:Lo/ams;

    sget-object v1, Lo/SpellCheckSpan;->d:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/SpellCheckSpan;->a:Lo/ams;

    sget-object v1, Lo/SpellCheckSpan;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final f()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/SpellCheckSpan;->g:Lo/ams;

    sget-object v1, Lo/SpellCheckSpan;->d:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final setUpgradedPlanPriceText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lo/SpellCheckSpan;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 50
    iput-object p1, p0, Lo/SpellCheckSpan;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setUpgradedPlanText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lo/SpellCheckSpan;->c()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rt:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    const-string v2, "planName"

    .line 43
    invoke-virtual {v1, v2, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 42
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 44
    iput-object p1, p0, Lo/SpellCheckSpan;->i:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setUserSelectedPlanPriceText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lo/SpellCheckSpan;->a()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oX:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    const-string v2, "price"

    .line 70
    invoke-virtual {v1, v2, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 69
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 71
    iput-object p1, p0, Lo/SpellCheckSpan;->m:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setUserSelectedPlanText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Lo/SpellCheckSpan;->d()Landroid/widget/TextView;

    move-result-object v0

    .line 62
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rt:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    const-string v2, "planName"

    invoke-virtual {v1, v2, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 61
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 64
    iput-object p1, p0, Lo/SpellCheckSpan;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setZeroPriceText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lo/SpellCheckSpan;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 56
    iput-object p1, p0, Lo/SpellCheckSpan;->j:Ljava/lang/CharSequence;

    return-void
.end method
