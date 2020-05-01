.class public Lo/DatePickerSpinnerDelegate;
.super Lo/MenuInflater;
.source ""


# instance fields
.field protected a:Lo/ImageSwitcher;

.field protected b:Lo/HorizontalScrollView;

.field protected c:I

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/view/View;

.field protected h:I

.field protected i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lo/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->d()V

    .line 42
    invoke-virtual {p0, p2}, Lo/DatePickerSpinnerDelegate;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->d()V

    .line 49
    invoke-virtual {p0, p2}, Lo/DatePickerSpinnerDelegate;->e(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->aZ:I

    invoke-static {v0, v1, p0}, Lo/DatePickerSpinnerDelegate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->C:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lo/DatePickerSpinnerDelegate;->c:I

    .line 65
    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->D:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lo/DatePickerSpinnerDelegate;->h:I

    .line 66
    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lo/DatePickerSpinnerDelegate;->i:I

    .line 68
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fJ:I

    invoke-virtual {p0, v0}, Lo/DatePickerSpinnerDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/DatePickerSpinnerDelegate;->d:Landroid/widget/ImageView;

    .line 69
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fE:I

    invoke-virtual {p0, v0}, Lo/DatePickerSpinnerDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/DatePickerSpinnerDelegate;->e:Landroid/view/View;

    .line 70
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fH:I

    invoke-virtual {p0, v0}, Lo/DatePickerSpinnerDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/DatePickerSpinnerDelegate;->a:Lo/ImageSwitcher;

    .line 71
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fG:I

    invoke-virtual {p0, v0}, Lo/DatePickerSpinnerDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    iput-object v0, p0, Lo/DatePickerSpinnerDelegate;->b:Lo/HorizontalScrollView;

    .line 72
    iget-object v0, p0, Lo/DatePickerSpinnerDelegate;->b:Lo/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->B:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 75
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->getPaddingStart()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v1, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->getPaddingEnd()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 79
    invoke-static {p0, v1, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 81
    :cond_1
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->getPaddingBottom()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 82
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->A:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lo/RemoteException;->e(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method protected e(Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->ag:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->ad:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/DatePickerSpinnerDelegate;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->ae:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/DatePickerSpinnerDelegate;->setMessageText(Ljava/lang/CharSequence;)V

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->af:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/DatePickerSpinnerDelegate;->setButtonText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 111
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lo/DatePickerSpinnerDelegate;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 112
    iget-object v1, p0, Lo/DatePickerSpinnerDelegate;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 114
    iget v2, p0, Lo/DatePickerSpinnerDelegate;->i:I

    if-le v0, v2, :cond_0

    .line 115
    iget v0, p0, Lo/DatePickerSpinnerDelegate;->c:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    iget-object v0, p0, Lo/DatePickerSpinnerDelegate;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget v0, p0, Lo/DatePickerSpinnerDelegate;->h:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    iget-object v0, p0, Lo/DatePickerSpinnerDelegate;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :goto_0
    invoke-super {p0, p1, p2}, Lo/MenuInflater;->onMeasure(II)V

    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lo/DatePickerSpinnerDelegate;->b:Lo/HorizontalScrollView;

    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/DatePickerSpinnerDelegate;->b:Lo/HorizontalScrollView;

    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lo/DatePickerSpinnerDelegate;->b:Lo/HorizontalScrollView;

    .line 101
    invoke-static {p1}, Lo/aev;->d(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 100
    :goto_0
    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method public setIconDrawable(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lo/DatePickerSpinnerDelegate;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/DatePickerSpinnerDelegate;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMessageText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/DatePickerSpinnerDelegate;->a:Lo/ImageSwitcher;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
