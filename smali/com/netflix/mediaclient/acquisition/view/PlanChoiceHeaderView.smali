.class public final Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;
.super Lo/MenuInflater;
.source ""


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private onPlanChanged:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "-",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final plan1SButton$delegate:Lo/ams;

.field private final plan2SButton$delegate:Lo/ams;

.field private final plan4SButton$delegate:Lo/ams;

.field private final planMobileButton$delegate:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planMobileButton"

    const-string v5, "getPlanMobileButton()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "plan1SButton"

    const-string v5, "getPlan1SButton()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "plan2SButton"

    const-string v5, "getPlan2SButton()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "plan4SButton"

    const-string v4, "getPlan4SButton()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->$$delegatedProperties:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->mx:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->planMobileButton$delegate:Lo/ams;

    .line 18
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->mk:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->plan1SButton$delegate:Lo/ams;

    .line 19
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->mp:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->plan2SButton$delegate:Lo/ams;

    .line 20
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ms:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->plan4SButton$delegate:Lo/ams;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->ds:I

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget-object p1, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$onPlanChanged$1;->INSTANCE:Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$onPlanChanged$1;

    check-cast p1, Lo/alA;

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->onPlanChanged:Lo/alA;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 14
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final setPlanHeaderValues(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlanMobileButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlanMobileButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan1SButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan2SButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan4SButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan1SButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan2SButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan4SButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addPlanChoiceHeaderLayout(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "planNamesList"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planOfferIdList"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->setPlanHeaderValues(Ljava/util/List;)V

    .line 64
    move-object p2, p3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x3

    if-lt p2, v1, :cond_2

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p4, p1}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->selectPlanButton(ZI)V

    .line 70
    :cond_0
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 p2, 0x0

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    if-eqz p4, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlanMobileButton()Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$1;

    invoke-direct {v1, p0, p4, p3}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$1;-><init>(Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;ZLjava/util/List;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan1SButton()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$2;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$2;-><init>(Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;ZLkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan2SButton()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$3;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$3;-><init>(Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;ZLkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan4SButton()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$4;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView$addPlanChoiceHeaderLayout$4;-><init>(Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;ZLkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final getOnPlanChanged()Lo/alA;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alA<",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->onPlanChanged:Lo/alA;

    return-object v0
.end method

.method public final getPlan1SButton()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->plan1SButton$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPlan2SButton()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->plan2SButton$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPlan4SButton()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->plan4SButton$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPlanMobileButton()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->planMobileButton$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final selectPlanButton(ZI)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlanMobileButton()Landroid/widget/TextView;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan1SButton()Landroid/widget/TextView;

    move-result-object p1

    if-ne p2, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan2SButton()Landroid/widget/TextView;

    move-result-object p1

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan4SButton()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_5

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan1SButton()Landroid/widget/TextView;

    move-result-object p1

    if-nez p2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan2SButton()Landroid/widget/TextView;

    move-result-object p1

    if-ne p2, v2, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->getPlan4SButton()Landroid/widget/TextView;

    move-result-object p1

    if-ne p2, v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_5
    return-void
.end method

.method public final setOnPlanChanged(Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->onPlanChanged:Lo/alA;

    return-void
.end method
