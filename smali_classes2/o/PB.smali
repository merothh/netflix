.class public final Lo/PB;
.super Lo/MenuInflater;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PB$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/PB$Application;

.field static final synthetic b:[Lo/amT;


# instance fields
.field private final c:Lo/ams;

.field private final e:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/PB;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "leftBoxart"

    const-string v5, "getLeftBoxart()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "rightBoxart"

    const-string v4, "getRightBoxart()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/PB;->b:[Lo/amT;

    new-instance v0, Lo/PB$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PB$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/PB;->a:Lo/PB$Application;

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

    invoke-direct/range {v0 .. v5}, Lo/PB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/PB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hm:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/PB;->e:Lo/ams;

    .line 30
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hj:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/PB;->c:Lo/ams;

    .line 33
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->cT:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Lo/MenuInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

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
    invoke-direct {p0, p1, p2, p3}, Lo/PB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(Lo/GridView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const/16 p2, 0x8

    .line 83
    invoke-virtual {p1, p2}, Lo/GridView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 86
    new-instance v0, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v0, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    sget-object v0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p2, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 88
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final d()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/PB;->c:Lo/ams;

    sget-object v1, Lo/PB;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method private final d(Lo/GridView;I)V
    .locals 3

    .line 64
    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aI:I

    .line 93
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 94
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 65
    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->X:I

    .line 95
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 96
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 95
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p2, :cond_0

    int-to-float p2, p2

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p2, v1

    int-to-float v0, v0

    int-to-float v1, v2

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float v0, p2

    const v1, 0x3f35c28f    # 0.71f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 73
    invoke-virtual {p1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    invoke-virtual {p1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lo/PB;->a:Lo/PB$Application;

    invoke-virtual {v0}, Lo/PB$Application;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": container width is 0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final e()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/PB;->e:Lo/ams;

    sget-object v1, Lo/PB;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method


# virtual methods
.method public final setContainerWidth(I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lo/PB;->e()Lo/GridView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lo/PB;->d(Lo/GridView;I)V

    .line 39
    invoke-direct {p0}, Lo/PB;->d()Lo/GridView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lo/PB;->d(Lo/GridView;I)V

    return-void
.end method

.method public final setLeftBoxartCallback(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lo/PB;->e()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setLeftBoxartImageUrl(Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Lo/PB;->e()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lo/PB;->a(Lo/GridView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRightBoxartCallback(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lo/PB;->d()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setRightBoxartImageUrl(Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lo/PB;->d()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lo/PB;->a(Lo/GridView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
