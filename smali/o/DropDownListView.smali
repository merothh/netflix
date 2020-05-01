.class public final Lo/DropDownListView;
.super Lo/MenuInflater;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DropDownListView$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/DropDownListView$Activity;

.field static final synthetic d:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final c:Lo/ams;

.field private final e:Lo/ams;

.field private g:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/DropDownListView;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "topBox"

    const-string v5, "getTopBox()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "middleBox"

    const-string v5, "getMiddleBox()Landroid/widget/ImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "bottomBox"

    const-string v4, "getBottomBox()Landroid/widget/ImageView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/DropDownListView;->d:[Lo/amT;

    new-instance v0, Lo/DropDownListView$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DropDownListView$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/DropDownListView;->b:Lo/DropDownListView$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lo/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 23
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->tF:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/DropDownListView;->a:Lo/ams;

    .line 24
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kD:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/DropDownListView;->c:Lo/ams;

    .line 25
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aK:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/DropDownListView;->e:Lo/ams;

    const/high16 p1, 0x40a00000    # 5.0f

    .line 27
    invoke-direct {p0, p1}, Lo/DropDownListView;->b(F)I

    move-result p1

    iput p1, p0, Lo/DropDownListView;->g:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 28
    invoke-direct {p0, p1}, Lo/DropDownListView;->b(F)I

    move-result p1

    iput p1, p0, Lo/DropDownListView;->i:I

    .line 31
    invoke-virtual {p0}, Lo/DropDownListView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cY:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Lo/MenuInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->tF:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/DropDownListView;->a:Lo/ams;

    .line 24
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kD:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/DropDownListView;->c:Lo/ams;

    .line 25
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aK:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/DropDownListView;->e:Lo/ams;

    const/high16 p1, 0x40a00000    # 5.0f

    .line 27
    invoke-direct {p0, p1}, Lo/DropDownListView;->b(F)I

    move-result p1

    iput p1, p0, Lo/DropDownListView;->g:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 28
    invoke-direct {p0, p1}, Lo/DropDownListView;->b(F)I

    move-result p1

    iput p1, p0, Lo/DropDownListView;->i:I

    .line 31
    invoke-virtual {p0}, Lo/DropDownListView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cY:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Lo/MenuInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    invoke-virtual {p0, p2}, Lo/DropDownListView;->setupAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->tF:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/DropDownListView;->a:Lo/ams;

    .line 24
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kD:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/DropDownListView;->c:Lo/ams;

    .line 25
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aK:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/DropDownListView;->e:Lo/ams;

    const/high16 p1, 0x40a00000    # 5.0f

    .line 27
    invoke-direct {p0, p1}, Lo/DropDownListView;->b(F)I

    move-result p1

    iput p1, p0, Lo/DropDownListView;->g:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 28
    invoke-direct {p0, p1}, Lo/DropDownListView;->b(F)I

    move-result p1

    iput p1, p0, Lo/DropDownListView;->i:I

    .line 31
    invoke-virtual {p0}, Lo/DropDownListView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->cY:I

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, p3, v0}, Lo/MenuInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-virtual {p0, p2}, Lo/DropDownListView;->setupAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final a()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/DropDownListView;->c:Lo/ams;

    sget-object v1, Lo/DropDownListView;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final a(Landroid/widget/ImageView;II)V
    .locals 1

    .line 144
    invoke-direct {p0, p2, p3}, Lo/DropDownListView;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 146
    iget v0, p0, Lo/DropDownListView;->g:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 147
    iget p2, p0, Lo/DropDownListView;->i:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 149
    invoke-virtual {p0}, Lo/DropDownListView;->requestLayout()V

    goto :goto_0

    .line 145
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final a(II)Z
    .locals 1

    .line 127
    iget v0, p0, Lo/DropDownListView;->g:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Lo/DropDownListView;->i:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    if-lez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final b(F)I
    .locals 2

    .line 133
    invoke-virtual {p0}, Lo/DropDownListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 130
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private final c()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/DropDownListView;->e:Lo/ams;

    sget-object v1, Lo/DropDownListView;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final e(Landroid/widget/ImageView;II)V
    .locals 0

    .line 111
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 113
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 115
    invoke-virtual {p0}, Lo/DropDownListView;->requestLayout()V

    return-void

    .line 111
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final d()Lo/BaseAdapter;
    .locals 3

    iget-object v0, p0, Lo/DropDownListView;->a:Lo/ams;

    sget-object v1, Lo/DropDownListView;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 50
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 52
    invoke-virtual {p0}, Lo/DropDownListView;->d()Lo/BaseAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0, v1}, Lo/DropDownListView;->a(Landroid/widget/ImageView;II)V

    .line 53
    invoke-direct {p0}, Lo/DropDownListView;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lo/DropDownListView;->a(Landroid/widget/ImageView;II)V

    .line 54
    invoke-direct {p0}, Lo/DropDownListView;->c()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lo/DropDownListView;->a(Landroid/widget/ImageView;II)V

    .line 56
    invoke-super {p0, p1, p2}, Lo/MenuInflater;->onMeasure(II)V

    return-void
.end method

.method public final setStartMargin(I)V
    .locals 0

    .line 27
    iput p1, p0, Lo/DropDownListView;->g:I

    return-void
.end method

.method public final setTopMargin(I)V
    .locals 0

    .line 28
    iput p1, p0, Lo/DropDownListView;->i:I

    return-void
.end method

.method public final setupAttributes(Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lo/DropDownListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aD:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    :try_start_0
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aL:I

    .line 66
    invoke-virtual {p0}, Lo/DropDownListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->ae:I

    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 69
    sget v1, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aH:I

    .line 70
    invoke-virtual {p0}, Lo/DropDownListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->J:I

    invoke-static {v2, v3}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v2

    .line 68
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 73
    sget v2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aI:I

    .line 74
    invoke-virtual {p0}, Lo/DropDownListView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Application;->i:I

    invoke-static {v3, v4}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v3

    .line 72
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 79
    sget v3, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aK:I

    const/high16 v4, 0x40a00000    # 5.0f

    .line 78
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 77
    invoke-direct {p0, v3}, Lo/DropDownListView;->b(F)I

    move-result v3

    iput v3, p0, Lo/DropDownListView;->g:I

    .line 85
    sget v3, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aJ:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 84
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 83
    invoke-direct {p0, v3}, Lo/DropDownListView;->b(F)I

    move-result v3

    iput v3, p0, Lo/DropDownListView;->i:I

    .line 90
    invoke-virtual {p0}, Lo/DropDownListView;->d()Lo/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lo/BaseAdapter;->setBorderColor(I)V

    .line 92
    invoke-virtual {p0}, Lo/DropDownListView;->d()Lo/BaseAdapter;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lo/BaseAdapter;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-direct {p0}, Lo/DropDownListView;->a()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-direct {p0}, Lo/DropDownListView;->c()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-direct {p0}, Lo/DropDownListView;->a()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lo/DropDownListView;->g:I

    iget v2, p0, Lo/DropDownListView;->i:I

    invoke-direct {p0, v0, v1, v2}, Lo/DropDownListView;->e(Landroid/widget/ImageView;II)V

    .line 97
    invoke-direct {p0}, Lo/DropDownListView;->c()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lo/DropDownListView;->g:I

    iget v2, p0, Lo/DropDownListView;->i:I

    invoke-direct {p0, v0, v1, v2}, Lo/DropDownListView;->e(Landroid/widget/ImageView;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
