.class public final Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;
.super Lo/MenuInflater;
.source ""


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final bottomDivider$delegate:Lo/ams;

.field private final divider$delegate:Lo/ams;

.field private final divider1$delegate:Lo/ams;

.field private final divider2$delegate:Lo/ams;

.field private final headingTextView$delegate:Lo/ams;

.field private final mobileLayout$delegate:Lo/ams;

.field private final plan1STextView$delegate:Lo/ams;

.field private final plan2STextView$delegate:Lo/ams;

.field private final plan4STextView$delegate:Lo/ams;

.field private final planMobileTextView$delegate:Lo/ams;

.field private final rowLayout$delegate:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;

    const/16 v1, 0xb

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "headingTextView"

    const-string v5, "getHeadingTextView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "divider"

    const-string v5, "getDivider()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "divider1"

    const-string v5, "getDivider1()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "divider2"

    const-string v5, "getDivider2()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "rowLayout"

    const-string v5, "getRowLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "mobileLayout"

    const-string v5, "getMobileLayout()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planMobileTextView"

    const-string v5, "getPlanMobileTextView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "plan1STextView"

    const-string v5, "getPlan1STextView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "plan2STextView"

    const-string v5, "getPlan2STextView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "plan4STextView"

    const-string v5, "getPlan4STextView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "bottomDivider"

    const-string v4, "getBottomDivider()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;-><init>(Landroid/content/Context;IILandroid/util/AttributeSet;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;-><init>(Landroid/content/Context;IILandroid/util/AttributeSet;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;-><init>(Landroid/content/Context;IILandroid/util/AttributeSet;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p4, v0}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->qC:I

    invoke-static {p0, p4}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->headingTextView$delegate:Lo/ams;

    .line 32
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->eW:I

    invoke-static {p0, p4}, Lo/NfcV;->b(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->divider$delegate:Lo/ams;

    .line 33
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->fb:I

    invoke-static {p0, p4}, Lo/NfcV;->b(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->divider1$delegate:Lo/ams;

    .line 34
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->fa:I

    invoke-static {p0, p4}, Lo/NfcV;->b(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->divider2$delegate:Lo/ams;

    .line 36
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->qD:I

    invoke-static {p0, p4}, Lo/NfcV;->b(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->rowLayout$delegate:Lo/ams;

    .line 37
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->kG:I

    invoke-static {p0, p4}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->mobileLayout$delegate:Lo/ams;

    .line 38
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->mv:I

    invoke-static {p0, p4}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->planMobileTextView$delegate:Lo/ams;

    .line 39
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->mj:I

    invoke-static {p0, p4}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->plan1STextView$delegate:Lo/ams;

    .line 40
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->mm:I

    invoke-static {p0, p4}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->plan2STextView$delegate:Lo/ams;

    .line 41
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->mq:I

    invoke-static {p0, p4}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->plan4STextView$delegate:Lo/ams;

    .line 42
    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->aL:I

    invoke-static {p0, p4}, Lo/NfcV;->b(Landroid/view/View;I)Lo/ams;

    move-result-object p4

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->bottomDivider$delegate:Lo/ams;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dA:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {p4, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getHeadingTextView()Lo/ImageSwitcher;

    move-result-object p4

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p4, p2}, Lo/ImageSwitcher;->setTextColor(I)V

    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getDivider()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1, p3}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getDivider1()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p1, p3}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getDivider2()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p1, p3}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILandroid/util/AttributeSet;ILo/amc;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 26
    sget p2, Lcom/netflix/mediaclient/ui/R$Application;->d:I

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 27
    sget p3, Lcom/netflix/mediaclient/ui/R$Application;->W:I

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 28
    check-cast p4, Landroid/util/AttributeSet;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;-><init>(Landroid/content/Context;IILandroid/util/AttributeSet;)V

    return-void
.end method

.method private final getDivider()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->divider$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getDivider1()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->divider1$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getDivider2()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->divider2$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_1

    .line 156
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 157
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 160
    :cond_2
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->ct:I

    goto :goto_2

    .line 158
    :cond_3
    :goto_1
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->cq:I

    .line 162
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private final getHeadingTextView()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->headingTextView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 170
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getStringFromDoubleValue(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private final getStringFromDoubleValue(D)Ljava/lang/String;
    .locals 0

    double-to-int p1, p1

    .line 178
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final retrieveVideoQualities(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "System.lineSeparator()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    check-cast p1, Ljava/lang/Iterable;

    .line 185
    instance-of v1, p1, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 186
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 120
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    const/16 v4, 0xa

    if-eqz v1, :cond_9

    .line 123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getRowLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aG:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aG:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 188
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const-string v8, "layoutParams"

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v7

    .line 190
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v10

    .line 193
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-static {v11, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v8

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v12, :cond_4

    const/4 v11, 0x0

    :cond_4
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_5

    .line 196
    iput v7, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 197
    iput v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 198
    iput v9, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 199
    iput v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 200
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 201
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "context"

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aE:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 126
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aF:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 205
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 206
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 207
    check-cast v4, Ljava/util/List;

    const-string v7, ""

    .line 129
    check-cast v7, Ljava/lang/CharSequence;

    .line 131
    check-cast v4, Ljava/lang/Iterable;

    .line 208
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 132
    new-instance v9, Landroid/text/SpannableString;

    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {v7}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v2

    const/4 v11, 0x2

    if-eqz v10, :cond_6

    new-array v10, v11, [Ljava/lang/CharSequence;

    aput-object v7, v10, v3

    .line 136
    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    aput-object v7, v10, v2

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    const-string v10, "TextUtils.concat(videoQuality, lineSeparator)"

    invoke-static {v7, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v7

    move v7, v5

    goto :goto_4

    :cond_6
    move-object v10, v7

    move v7, v1

    .line 140
    :goto_4
    new-instance v12, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v12, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x12

    invoke-virtual {v9, v12, v3, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-array v7, v11, [Ljava/lang/CharSequence;

    aput-object v10, v7, v3

    .line 141
    check-cast v9, Ljava/lang/CharSequence;

    aput-object v9, v7, v2

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "TextUtils.concat(videoQuality, span)"

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 143
    :cond_7
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 210
    :cond_8
    check-cast v6, Ljava/util/List;

    return-object v6

    .line 211
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 212
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 213
    check-cast v1, Ljava/util/List;

    .line 146
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 214
    :cond_a
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final setTextAndDrawable(Landroid/widget/TextView;Ljava/lang/Object;)V
    .locals 1

    .line 151
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setVideoQualities(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->retrieveVideoQualities(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Lo/ImageSwitcher;

    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan1STextView()Lo/ImageSwitcher;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan2STextView()Lo/ImageSwitcher;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan4STextView()Lo/ImageSwitcher;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {v0}, Lo/akz;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlanMobileTextView()Lo/ImageSwitcher;

    move-result-object p2

    invoke-interface {v0, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 109
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 183
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lo/akz;->c()V

    :cond_1
    check-cast v0, Lo/ImageSwitcher;

    const v3, 0x7fffffff

    .line 111
    invoke-virtual {v0, v3}, Lo/ImageSwitcher;->setMaxLines(I)V

    .line 112
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    move v2, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final shouldSetVideoQualities(Ljava/lang/String;)Z
    .locals 2

    .line 99
    sget-object v0, Lo/fM;->d:Lo/fM$Activity;

    invoke-virtual {v0}, Lo/fM$Activity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qD:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBottomDivider()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->bottomDivider$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getMobileLayout()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->mobileLayout$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getPlan1STextView()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->plan1STextView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final getPlan2STextView()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->plan2STextView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final getPlan4STextView()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->plan4STextView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final getPlanMobileTextView()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->planMobileTextView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final getRowLayout()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->rowLayout$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final setPlanRowValues(ZLjava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "planValuesList"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getHeadingTextView()Lo/ImageSwitcher;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getHeadingTextView()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 66
    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest;->Companion:Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;->shouldShowHorizontalDividers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getDivider1()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getDivider2()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getMobileLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 75
    sget-object v3, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest;->Companion:Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/acquisition/view/HorizontalDividersABTest$Companion;->shouldShowHorizontalDividers()Z

    move-result v3

    if-nez v3, :cond_3

    .line 76
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getDivider()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_3
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->shouldSetVideoQualities(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 80
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setVideoQualities(Ljava/util/List;Z)V

    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlanMobileTextView()Lo/ImageSwitcher;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setTextAndDrawable(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan1STextView()Lo/ImageSwitcher;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p3, v1}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setTextAndDrawable(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan2STextView()Lo/ImageSwitcher;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setTextAndDrawable(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan4STextView()Lo/ImageSwitcher;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-static {p3, p2}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setTextAndDrawable(Landroid/widget/TextView;Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    :cond_5
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->shouldSetVideoQualities(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 89
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setVideoQualities(Ljava/util/List;Z)V

    goto :goto_1

    .line 91
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan1STextView()Lo/ImageSwitcher;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setTextAndDrawable(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan2STextView()Lo/ImageSwitcher;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p3, v1}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setTextAndDrawable(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->getPlan4STextView()Lo/ImageSwitcher;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/PlanRowTextView;->setTextAndDrawable(Landroid/widget/TextView;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
