.class public final Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;

.field public static final Companion:Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView$Companion;

.field public static final SUB_HEADING_TAG:Ljava/lang/String; = "SubHeadingText"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final headerTitle$delegate:Lo/ams;

.field private final headerTitle2$delegate:Lo/ams;

.field private final stepLabel$delegate:Lo/ams;

.field private final subHeadingContainer$delegate:Lo/ams;

.field private subHeadingPixelWidth:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "stepLabel"

    const-string v5, "getStepLabel()Landroidx/appcompat/widget/AppCompatTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "headerTitle"

    const-string v5, "getHeaderTitle()Landroidx/appcompat/widget/AppCompatTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "headerTitle2"

    const-string v5, "getHeaderTitle2()Landroidx/appcompat/widget/AppCompatTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "subHeadingContainer"

    const-string v4, "getSubHeadingContainer()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->$$delegatedProperties:[Lo/amT;

    new-instance v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->Companion:Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView$Companion;

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->sk:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->stepLabel$delegate:Lo/ams;

    .line 34
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->hq:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->headerTitle$delegate:Lo/ams;

    .line 36
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->hp:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->headerTitle2$delegate:Lo/ams;

    .line 38
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->sC:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->subHeadingContainer$delegate:Lo/ams;

    .line 47
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->fG:I

    move-object p4, p0

    check-cast p4, Landroid/view/ViewGroup;

    invoke-static {p1, p3, p4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p3, 0x1

    .line 49
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setOrientation(I)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 53
    sget-object p3, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bF:[I

    const/4 p4, 0x0

    .line 51
    invoke-virtual {p1, p2, p3, p4, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    :try_start_0
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bH:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getStepLabel()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    sget p3, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bH:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bO:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getHeaderTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    sget p3, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bO:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bI:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 64
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bI:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setSubHeadingStrings(Ljava/util/List;)V

    .line 66
    :cond_2
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bJ:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 67
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bJ:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->subHeadingPixelWidth:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "<b>This</b> is what a subheading looks like"

    .line 75
    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setSubHeadingStrings(Ljava/util/List;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p2

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 27
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 29
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic headerTitle$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic headerTitle2$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic setHeading2String$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 87
    check-cast p1, Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setHeading2String(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic setHeadingString$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 83
    check-cast p1, Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setHeadingString(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic setStepLabelString$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 79
    check-cast p1, Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStepLabelString(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic setStrings$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 133
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 134
    move-object p2, v0

    check-cast p2, Ljava/lang/CharSequence;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 135
    move-object p3, v0

    check-cast p3, Ljava/lang/CharSequence;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 136
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p4

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic setSubHeadingStrings$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 106
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setSubHeadingStrings(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic stepLabel$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic subHeadingContainer$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic subHeadingPixelWidth$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getHeaderTitle()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->headerTitle$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public final getHeaderTitle2()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->headerTitle2$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public final getStepLabel()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->stepLabel$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public final getSubHeadingContainer()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->subHeadingContainer$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getSubHeadingPixelWidth()Ljava/lang/Integer;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->subHeadingPixelWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setHeading2String(Ljava/lang/CharSequence;)V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getHeaderTitle2()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHeadingString(Ljava/lang/CharSequence;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getHeaderTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setStepLabelString(Ljava/lang/CharSequence;)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getStepLabel()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subHeadingStrings"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStepLabelString(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setHeadingString(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setHeading2String(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p0, p4}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setSubHeadingStrings(Ljava/util/List;)V

    return-void
.end method

.method public final setSubHeadingPixelWidth(I)V
    .locals 0

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->subHeadingPixelWidth:Ljava/lang/Integer;

    return-void
.end method

.method public final setSubHeadingPixelWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->subHeadingPixelWidth:Ljava/lang/Integer;

    return-void
.end method

.method public final setSubHeadingStrings(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subHeadingStrings"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    check-cast p1, Ljava/lang/Iterable;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 148
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 108
    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    xor-int/2addr v2, v4

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_3
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 150
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->z:I

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    iget-object v4, p0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->subHeadingPixelWidth:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_4

    sget-object v5, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v5}, Lo/abD$StateListAnimator;->d()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    :cond_4
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_5
    const-string v4, "SubHeadingText"

    .line 124
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 125
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getSubHeadingContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final startAlignText()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getStepLabel()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAlignment(I)V

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getHeaderTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAlignment(I)V

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getHeaderTitle2()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAlignment(I)V

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getSubHeadingContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->getSubHeadingContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/Flushable;->c(Landroid/view/ViewGroup;)Lo/anb;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 102
    invoke-virtual {v2, v1}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
