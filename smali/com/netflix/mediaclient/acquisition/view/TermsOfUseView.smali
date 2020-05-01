.class public final Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;
.super Lo/MenuInflater;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final cardChainingDisclosure$delegate:Lo/ams;

.field private final internationalPaymentsText$delegate:Lo/ams;

.field private final rightOfWithDrawalCheckBox$delegate:Lo/ams;

.field private final rightOfWithDrawalText$delegate:Lo/ams;

.field private final rightOfWithDrawalView$delegate:Lo/ams;

.field private final schufaText$delegate:Lo/ams;

.field private final touCheckbox$delegate:Lo/ams;

.field private final touErrorMessage$delegate:Lo/ams;

.field private final touText$delegate:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    const/16 v1, 0x9

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "internationalPaymentsText"

    const-string v5, "getInternationalPaymentsText()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "schufaText"

    const-string v5, "getSchufaText()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "cardChainingDisclosure"

    const-string v5, "getCardChainingDisclosure()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "touCheckbox"

    const-string v5, "getTouCheckbox()Landroid/widget/CheckBox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "touErrorMessage"

    const-string v5, "getTouErrorMessage()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "touText"

    const-string v5, "getTouText()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "rightOfWithDrawalView"

    const-string v5, "getRightOfWithDrawalView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "rightOfWithDrawalCheckBox"

    const-string v5, "getRightOfWithDrawalCheckBox()Landroid/widget/CheckBox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "rightOfWithDrawalText"

    const-string v4, "getRightOfWithDrawalText()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->$$delegatedProperties:[Lo/amT;

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

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->iO:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->internationalPaymentsText$delegate:Lo/ams;

    .line 27
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qN:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->schufaText$delegate:Lo/ams;

    .line 28
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->bo:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->cardChainingDisclosure$delegate:Lo/ams;

    .line 30
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->tJ:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->touCheckbox$delegate:Lo/ams;

    .line 32
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->tL:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->touErrorMessage$delegate:Lo/ams;

    .line 34
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->tN:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->touText$delegate:Lo/ams;

    .line 35
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qB:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->rightOfWithDrawalView$delegate:Lo/ams;

    .line 36
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qz:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->rightOfWithDrawalCheckBox$delegate:Lo/ams;

    .line 37
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qE:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->rightOfWithDrawalText$delegate:Lo/ams;

    .line 43
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->fQ:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouText()Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$1;-><init>(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouText()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 22
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$isCheckboxVisible(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->isCheckboxVisible()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateErrorVisibility(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->updateErrorVisibility()V

    return-void
.end method

.method private final getCardChainingDisclosure()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->cardChainingDisclosure$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getInternationalPaymentsText()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->internationalPaymentsText$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getRightOfWithDrawalCheckBox()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->rightOfWithDrawalCheckBox$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private final getRightOfWithDrawalText()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->rightOfWithDrawalText$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->$$delegatedProperties:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getRightOfWithDrawalView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->rightOfWithDrawalView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getSchufaText()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->schufaText$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final isCheckboxVisible()Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isTouAccepted()Z
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->isCheckboxVisible()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public static synthetic touCheckbox$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic touErrorMessage$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic touText$annotations()V
    .locals 0

    return-void
.end method

.method private final updateErrorVisibility()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setActivated(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouErrorMessage()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->isTouAccepted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->isRightOfWithdrawalAccepted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final checkedChanges()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 142
    invoke-static {v0}, Lo/X509TrustManagerExtensions;->a(Landroid/widget/CompoundButton;)Lo/SntpClient;

    move-result-object v0

    const-string v1, "RxCompoundButton.checkedChanges(this)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    .line 127
    invoke-virtual {v0, v1, v2}, Lo/SntpClient;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$checkedChanges$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$checkedChanges$1;-><init>(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "touCheckbox.checkedChang\u2026isibility()\n            }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTouCheckbox()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->touCheckbox$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final getTouErrorMessage()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->touErrorMessage$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTouText()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->touText$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public hasAcceptedRequiredCheckBoxes()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->hasAcceptedTermsOfUse()Z

    move-result v0

    return v0
.end method

.method public final hasAcceptedTermsOfUse()Z
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->updateErrorVisibility()V

    .line 105
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->isTouAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->isRightOfWithdrawalAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRightOfWithdrawalAccepted()Z
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getRightOfWithDrawalView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getRightOfWithDrawalCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final rightOfWithdrawalCheckedChanges()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getRightOfWithDrawalCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 141
    invoke-static {v0}, Lo/X509TrustManagerExtensions;->a(Landroid/widget/CompoundButton;)Lo/SntpClient;

    move-result-object v0

    const-string v1, "RxCompoundButton.checkedChanges(this)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    .line 119
    invoke-virtual {v0, v1, v2}, Lo/SntpClient;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$rightOfWithdrawalCheckedChanges$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$rightOfWithdrawalCheckedChanges$1;-><init>(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "rightOfWithDrawalCheckBo\u2026isibility()\n            }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setCardChainingDisclosureVisible(Z)V
    .locals 3

    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getCardChainingDisclosure()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setCheckboxChecked(Z)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public final setCheckboxVisible(Z)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method public final setInternationalTransactionMessageVisible(Z)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getInternationalPaymentsText()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setRightofWithdrawalText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "rowText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getRightOfWithDrawalView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getRightOfWithDrawalText()Landroid/widget/TextView;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setSchufaTextVisible(Z)V
    .locals 3

    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getSchufaText()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouText()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/text/Spannable;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setUnderlineStrippedText(Landroid/widget/TextView;Landroid/text/Spannable;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.text.Spannable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
