.class public Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;
.super Lcom/netflix/mediaclient/android/widget/UnderlineTextView;
.source "AutoResizeTextView.java"


# static fields
.field public static final MIN_TEXT_SIZE:F = 4.0f

.field private static final mEllipsis:Ljava/lang/String; = "..."


# instance fields
.field private mAddEllipsis:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mNeedsResize:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    return-void
.end method

.method private getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 8

    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAddEllipsis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    if-eqz v0, :cond_1

    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->resizeText(II)V

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->resetTextSize()V

    return-void
.end method

.method public resetTextSize()V
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    invoke-super {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->setTextSize(IF)V

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    :cond_0
    return-void
.end method

.method public resizeText()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->resizeText(II)V

    return-void
.end method

.method public resizeText(II)V
    .locals 9

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v3

    move v8, v0

    move v0, v3

    :goto_2
    if-le v0, p2, :cond_3

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v3, v8, v3

    if-lez v3, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v8, v0

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v0

    move v8, v3

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v3, v8, v3

    if-nez v3, :cond_4

    if-le v0, p2, :cond_4

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    if-gez v4, :cond_5

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setLineSpacing(FF)V

    iput-boolean v7, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mNeedsResize:Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    const-string/jumbo v4, "..."

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    :goto_4
    int-to-float v6, p1

    add-float/2addr v0, v4

    cmpg-float v0, v6, v0

    if-gez v0, :cond_6

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v1, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setAddEllipsis(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mAddEllipsis:Z

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->setLineSpacing(FF)V

    iput p2, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingMult:F

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mSpacingAdd:F

    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMaxTextSize:F

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->invalidate()V

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mMinTextSize:F

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/UnderlineTextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/AutoResizeTextView;->mTextSize:F

    return-void
.end method
