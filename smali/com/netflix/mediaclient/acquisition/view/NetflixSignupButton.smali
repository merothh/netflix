.class public Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private isLoading:Z

.field private final loadingView$delegate:Lo/ams;

.field private final textButton$delegate:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "loadingView"

    const-string v5, "getLoadingView()Landroid/widget/ProgressBar;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "textButton"

    const-string v4, "getTextButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->$$delegatedProperties:[Lo/amT;

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->jz:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->loadingView$delegate:Lo/ams;

    .line 30
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->sX:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->textButton$delegate:Lo/ams;

    .line 52
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dd:I

    move-object p4, p0

    check-cast p4, Landroid/view/ViewGroup;

    invoke-static {p1, p3, p4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 p4, 0x0

    const v0, 0x101014f

    aput v0, p3, p4

    .line 54
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getTextButton()Lo/HorizontalScrollView;

    move-result-object p2

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 24
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

    .line 26
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final getLoadingView()Landroid/widget/ProgressBar;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->loadingView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private final hideSpinner()V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getTextButton()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000b

    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setTextColor(I)V

    .line 111
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getLoadingView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic setDrawable$default(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 3

    if-nez p7, :cond_5

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 61
    move-object p1, v0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 62
    move-object p2, v0

    check-cast p2, Landroid/graphics/drawable/Drawable;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 63
    move-object p3, v0

    check-cast p3, Landroid/graphics/drawable/Drawable;

    :cond_2
    move-object v1, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 64
    move-object p4, v0

    check-cast p4, Landroid/graphics/drawable/Drawable;

    :cond_3
    move-object v2, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 65
    move-object p5, v0

    check-cast p5, Ljava/lang/Integer;

    :cond_4
    move-object v0, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v1

    move-object p6, v2

    move-object p7, v0

    invoke-virtual/range {p2 .. p7}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    return-void

    .line 0
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setDrawable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final showSpinner()V
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getTextButton()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setTextColor(I)V

    .line 105
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getLoadingView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getButton()Landroid/widget/TextView;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getTextButton()Lo/HorizontalScrollView;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getTextButton()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lo/HorizontalScrollView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "textButton.text"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getTextButton()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->textButton$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->isLoading:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 96
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_2
    return-void
.end method

.method public final setDoubleLineText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "firstLineText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondLineText"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ay:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ax:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 83
    new-instance v2, Landroid/text/SpannableString;

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x12

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 87
    new-instance p1, Landroid/text/SpannableString;

    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {p1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v3, v4, p2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 91
    check-cast v2, Ljava/lang/CharSequence;

    aput-object v2, p2, v4

    const-string v0, "\n"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x2

    aput-object p1, p2, v0

    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getTextButton()Lo/HorizontalScrollView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 13

    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getTextButton()Lo/HorizontalScrollView;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, p1, v3, p2, v4}, Lo/HorizontalScrollView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p5, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getTextButton()Lo/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x2ff

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Lo/HorizontalScrollView;->c(Lo/HorizontalScrollView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZIIIIZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setLoading(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->isLoading:Z

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->showSpinner()V

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->hideSpinner()V

    :goto_0
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getTextButton()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateTextAndButtonColor(II)V
    .locals 13

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getTextButton()Lo/HorizontalScrollView;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const-string p1, "ColorStateList.valueOf(C\u2026olor(context, textColor))"

    invoke-static {v3, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const-string p1, "ColorStateList.valueOf(C\u2026or(context, buttonColor))"

    invoke-static {v2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Application;->R:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3d9

    const/4 v12, 0x0

    .line 116
    invoke-static/range {v0 .. v12}, Lo/HorizontalScrollView;->c(Lo/HorizontalScrollView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZIIIIZILjava/lang/Object;)V

    return-void
.end method
