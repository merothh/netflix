.class public Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private bannerUrlClickListener:Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;

.field private final imageView$delegate:Lo/ams;

.field private isLinkInText:Z

.field private final textView$delegate:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "textView"

    const-string v5, "getTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "imageView"

    const-string v4, "getImageView()Landroid/widget/ImageView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->$$delegatedProperties:[Lo/amT;

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->rw:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->textView$delegate:Lo/ams;

    .line 38
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->rx:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->imageView$delegate:Lo/ams;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/netflix/mediaclient/ui/R$Dialog;->fF:I

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p3, p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 p3, 0x0

    .line 59
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setOrientation(I)V

    const/16 p4, 0x10

    .line 60
    invoke-virtual {p0, p4}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setGravity(I)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    .line 64
    sget-object v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bC:[I

    .line 62
    invoke-virtual {p4, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 68
    :try_start_0
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bG:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bG:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setBannerIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    new-array p4, v1, [I

    const v0, 0x1010098

    aput v0, p4, p3

    .line 76
    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/netflix/mediaclient/ui/R$Application;->d:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setTextColor(I)V

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 72
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 31
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

    .line 33
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getBannerUrlClickListener$p(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;)Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->bannerUrlClickListener:Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;

    return-object p0
.end method

.method public static final synthetic access$setBannerUrlClickListener$p(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->bannerUrlClickListener:Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$BannerUrlClickListener;

    return-void
.end method

.method private final getImageView()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->imageView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final makeLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
    .locals 4

    .line 107
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 108
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 109
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 110
    new-instance v3, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$makeLinkClickable$clickable$1;

    invoke-direct {v3, p0, p2}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView$makeLinkClickable$clickable$1;-><init>(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/text/style/URLSpan;)V

    .line 116
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 117
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private final setBannerText(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 83
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setTextViewHTML(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Landroid/text/Spannable;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setUnderlineStrippedText(Landroid/widget/TextView;Landroid/text/Spannable;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.text.Spannable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setTextViewHTML(Ljava/lang/String;)V
    .locals 5

    .line 121
    invoke-static {p1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 122
    new-instance v0, Landroid/text/SpannableStringBuilder;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 124
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const-string v4, "span"

    .line 125
    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->makeLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->textView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final isLinkInText()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->isLinkInText:Z

    return v0
.end method

.method public final setBannerIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setLinkColor(I)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-void
.end method

.method public final setLinkInText(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->isLinkInText:Z

    return-void
.end method

.method public final setSignupBannerInfoBlue(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aX:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setBannerIcon(Landroid/graphics/drawable/Drawable;)V

    .line 103
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->aj:I

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setTextColor(I)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 2

    .line 47
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    goto :goto_2

    .line 51
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->isLinkInText:Z

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setBannerText(ZLjava/lang/String;)V

    .line 47
    :goto_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
