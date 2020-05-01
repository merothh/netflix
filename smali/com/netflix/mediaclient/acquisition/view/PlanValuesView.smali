.class public final Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private dividerColorId:I

.field private headingTextColorId:I

.field private final planRowLinearLayout$delegate:Lo/aka;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView$planRowLinearLayout$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView$planRowLinearLayout$2;-><init>(Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->planRowLinearLayout$delegate:Lo/aka;

    .line 22
    sget p1, Lcom/netflix/mediaclient/ui/R$Application;->d:I

    iput p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->headingTextColorId:I

    .line 23
    sget p1, Lcom/netflix/mediaclient/ui/R$Application;->W:I

    iput p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->dividerColorId:I

    const/4 p1, 0x1

    .line 26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->setOrientation(I)V

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v2

    check-cast v4, Ljava/util/List;

    .line 30
    new-instance v2, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    const-string v3, "$7.99"

    const-string v5, "$10.99"

    const-string v6, "$13.99"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "Monthly price after free month ends on 9/14/18"

    invoke-direct {v2, v5, v3}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v2, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Boolean;

    aput-object v1, v5, v0

    aput-object p2, v5, p1

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v5}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v7, "HD available"

    invoke-direct {v2, v7, v5}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v2, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    new-array v5, v3, [Ljava/lang/Boolean;

    aput-object v1, v5, v0

    aput-object v1, v5, p1

    aput-object p2, v5, v6

    invoke-static {v5}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "Ultra HD available"

    invoke-direct {v2, v5, v1}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    const-string v2, "1"

    const-string v5, "2"

    const-string v7, "4"

    filled-new-array {v2, v5, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "Screens you can watch on at the same time"

    invoke-direct {v1, v5, v2}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    new-array v2, v3, [Ljava/lang/Boolean;

    aput-object p2, v2, v0

    aput-object p2, v2, p1

    aput-object p2, v2, v6

    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "Watch on your laptop, TV, phone and tablet"

    invoke-direct {v1, v5, v2}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    new-array v2, v3, [Ljava/lang/Boolean;

    aput-object p2, v2, v0

    aput-object p2, v2, p1

    aput-object p2, v2, v6

    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "Unlimited movies and TV shows"

    invoke-direct {v1, v5, v2}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    new-array v2, v3, [Ljava/lang/Boolean;

    aput-object p2, v2, v0

    aput-object p2, v2, p1

    aput-object p2, v2, v6

    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "Cancel anytime"

    invoke-direct {v1, v5, v2}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    new-array v2, v3, [Ljava/lang/Boolean;

    aput-object p2, v2, v0

    aput-object p2, v2, p1

    aput-object p2, v2, v6

    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "First month free"

    invoke-direct {v1, p2, p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v3, p0

    .line 38
    invoke-static/range {v3 .. v9}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->initRows$default(Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;Ljava/util/List;ZLjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 17
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final addPlanValueRowLayout(ZLjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 85
    new-instance v7, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->headingTextColorId:I

    iget v3, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->dividerColorId:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;-><init>(Landroid/content/Context;IILandroid/util/AttributeSet;ILo/amc;)V

    .line 86
    invoke-virtual {v7, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setPlanRowValues(ZLjava/lang/String;Ljava/util/List;)V

    if-eqz p4, :cond_0

    .line 87
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setBackgroundColor(I)V

    :cond_0
    if-nez p5, :cond_1

    .line 89
    invoke-virtual {v7}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getBottomDivider()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest;->Companion:Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;->shouldShowHorizontalDividers()Z

    move-result p1

    if-nez p1, :cond_2

    .line 91
    invoke-static {}, Lo/adq;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 92
    :cond_2
    invoke-virtual {v7}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getBottomDivider()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_3
    invoke-virtual {v7}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getBottomDivider()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->getPlanRowLinearLayout()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast v7, Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic addPlanValueRowLayout$default(Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 83
    move-object p4, v0

    check-cast p4, Ljava/lang/Integer;

    :cond_0
    move-object v5, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object p5, v0

    check-cast p5, Ljava/lang/Integer;

    :cond_1
    move-object v6, p5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->addPlanValueRowLayout(ZLjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private final getPlanRowLinearLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->planRowLinearLayout$delegate:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final initRow(ZLcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    .line 72
    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->getLocalizedHeading()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->getValues()Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->addPlanValueRowLayout(ZLjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic initRow$default(Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;ZLcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 71
    move-object p3, v0

    check-cast p3, Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    check-cast p4, Ljava/lang/Integer;

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->initRow(ZLcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic initRows$default(Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;Ljava/util/List;ZLjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    .line 51
    check-cast p3, Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 52
    sget p4, Lcom/netflix/mediaclient/ui/R$Application;->Z:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->initRows(Ljava/util/List;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private final removeAllRows()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->getPlanRowLinearLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getDividerColorId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->dividerColorId:I

    return v0
.end method

.method public final getHeadingTextColorId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->headingTextColorId:I

    return v0
.end method

.method public final initRows(Ljava/util/List;ZLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "rows"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->removeAllRows()V

    .line 55
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    .line 57
    invoke-static {p1}, Lo/akz;->b(Ljava/util/List;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    move-object v7, v2

    goto :goto_1

    :cond_0
    move-object v7, p4

    .line 58
    :goto_1
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 59
    invoke-direct {p0, p2, v5, p3, v7}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->initRow(ZLcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p2

    .line 61
    invoke-static/range {v3 .. v9}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->initRow$default(Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;ZLcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final selectPlan(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offerIdList"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 107
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->getPlanRowLinearLayout()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-static {p2}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 110
    instance-of v1, v0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;

    if-eqz v1, :cond_0

    .line 111
    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getMobileLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x2

    if-eqz v1, :cond_6

    .line 112
    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlanMobileTextView()Lo/ImageSwitcher;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1, v5}, Lo/ImageSwitcher;->setActivated(Z)V

    .line 113
    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan1STextView()Lo/ImageSwitcher;

    move-result-object v1

    if-ne p1, v3, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v1, v5}, Lo/ImageSwitcher;->setActivated(Z)V

    .line 114
    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan2STextView()Lo/ImageSwitcher;

    move-result-object v1

    if-ne p1, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v1, v4}, Lo/ImageSwitcher;->setActivated(Z)V

    .line 115
    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan4STextView()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setActivated(Z)V

    goto :goto_0

    .line 117
    :cond_6
    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan1STextView()Lo/ImageSwitcher;

    move-result-object v1

    if-nez p1, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v1, v5}, Lo/ImageSwitcher;->setActivated(Z)V

    .line 118
    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan2STextView()Lo/ImageSwitcher;

    move-result-object v1

    if-ne p1, v3, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v1, v5}, Lo/ImageSwitcher;->setActivated(Z)V

    .line 119
    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan4STextView()Lo/ImageSwitcher;

    move-result-object v0

    if-ne p1, v4, :cond_9

    const/4 v2, 0x1

    :cond_9
    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setActivated(Z)V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public final setDividerColorId(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->dividerColorId:I

    return-void
.end method

.method public final setHeadingTextColorId(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->headingTextColorId:I

    return-void
.end method
