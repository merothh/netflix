.class public Lcom/netflix/mediaclient/android/widget/UnderlineTextView;
.super Landroid/widget/TextView;
.source "UnderlineTextView.java"


# instance fields
.field private mUnderline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/R$styleable;->UnderlineTextView:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->mUnderline:Z

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isUnderline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->mUnderline:Z

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->mUnderline:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public setUnderline(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->mUnderline:Z

    return-void
.end method
