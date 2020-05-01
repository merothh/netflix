.class public final Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private onPlanBillingCycleChanged:Lo/alA;
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

.field private final planBillingCycleGroup$delegate:Lo/ams;

.field private final planMonthlyButton$delegate:Lo/ams;

.field private final planWeeklyButton$delegate:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planBillingCycleGroup"

    const-string v5, "getPlanBillingCycleGroup()Landroid/widget/RadioGroup;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planWeeklyButton"

    const-string v5, "getPlanWeeklyButton()Landroid/widget/RadioButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "planMonthlyButton"

    const-string v4, "getPlanMonthlyButton()Landroid/widget/RadioButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->$$delegatedProperties:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->at:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->planBillingCycleGroup$delegate:Lo/ams;

    .line 20
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->av:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->planWeeklyButton$delegate:Lo/ams;

    .line 21
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->as:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->planMonthlyButton$delegate:Lo/ams;

    .line 23
    sget-object p2, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$onPlanBillingCycleChanged$1;->INSTANCE:Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$onPlanBillingCycleChanged$1;

    check-cast p2, Lo/alA;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->onPlanBillingCycleChanged:Lo/alA;

    .line 26
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->dt:I

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 16
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getPlanBillingCycleGroup()Landroid/widget/RadioGroup;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->planBillingCycleGroup$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private final getPlanMonthlyButton()Landroid/widget/RadioButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->planMonthlyButton$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method private final getPlanWeeklyButton()Landroid/widget/RadioButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->planWeeklyButton$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getOnPlanBillingCycleChanged()Lo/alA;
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

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->onPlanBillingCycleChanged:Lo/alA;

    return-object v0
.end method

.method public final selectDefaultBillingCycle(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x65cb935f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x5311d813

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Monthly"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->getPlanWeeklyButton()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const-string v0, "Weekly"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->getPlanWeeklyButton()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 33
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->getPlanBillingCycleGroup()Landroid/widget/RadioGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 36
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->getPlanWeeklyButton()Landroid/widget/RadioButton;

    move-result-object p1

    new-instance v0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$selectDefaultBillingCycle$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$selectDefaultBillingCycle$1;-><init>(Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->getPlanMonthlyButton()Landroid/widget/RadioButton;

    move-result-object p1

    new-instance v0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$selectDefaultBillingCycle$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView$selectDefaultBillingCycle$2;-><init>(Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnPlanBillingCycleChanged(Lo/alA;)V
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

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->onPlanBillingCycleChanged:Lo/alA;

    return-void
.end method
