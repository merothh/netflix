.class public Lo/CursorAdapter;
.super Lo/ScrollView;
.source ""


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private h:F

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1}, Lo/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lo/CursorAdapter;->a:Z

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lo/CursorAdapter;->e:F

    const/high16 v1, 0x40800000    # 4.0f

    .line 45
    iput v1, p0, Lo/CursorAdapter;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 48
    iput v1, p0, Lo/CursorAdapter;->d:F

    .line 51
    iput v0, p0, Lo/CursorAdapter;->h:F

    .line 54
    iput-boolean p1, p0, Lo/CursorAdapter;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Lo/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lo/CursorAdapter;->a:Z

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lo/CursorAdapter;->e:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 45
    iput v0, p0, Lo/CursorAdapter;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    iput v0, p0, Lo/CursorAdapter;->d:F

    .line 51
    iput p2, p0, Lo/CursorAdapter;->h:F

    .line 54
    iput-boolean p1, p0, Lo/CursorAdapter;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lo/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lo/CursorAdapter;->a:Z

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lo/CursorAdapter;->e:F

    const/high16 p3, 0x40800000    # 4.0f

    .line 45
    iput p3, p0, Lo/CursorAdapter;->b:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 48
    iput p3, p0, Lo/CursorAdapter;->d:F

    .line 51
    iput p2, p0, Lo/CursorAdapter;->h:F

    .line 54
    iput-boolean p1, p0, Lo/CursorAdapter;->j:Z

    .line 78
    invoke-virtual {p0}, Lo/CursorAdapter;->getTextSize()F

    move-result p1

    iput p1, p0, Lo/CursorAdapter;->c:F

    return-void
.end method

.method private d(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 8

    .line 291
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 293
    new-instance p4, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lo/CursorAdapter;->d:F

    iget v6, p0, Lo/CursorAdapter;->h:F

    const/4 v7, 0x1

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 294
    invoke-virtual {p4}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    return p1
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 185
    iget v0, p0, Lo/CursorAdapter;->c:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 186
    invoke-super {p0, v1, v0}, Lo/ScrollView;->setTextSize(IF)V

    .line 187
    iget v0, p0, Lo/CursorAdapter;->c:F

    iput v0, p0, Lo/CursorAdapter;->e:F

    :cond_0
    return-void
.end method

.method public e(II)V
    .locals 13

    .line 221
    invoke-virtual {p0}, Lo/CursorAdapter;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 223
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_6

    if-lez p2, :cond_6

    if-lez p1, :cond_6

    iget v0, p0, Lo/CursorAdapter;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 228
    :cond_0
    invoke-virtual {p0}, Lo/CursorAdapter;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 231
    iget v0, p0, Lo/CursorAdapter;->e:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v1, p0, Lo/CursorAdapter;->c:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lo/CursorAdapter;->c:F

    .line 234
    :goto_0
    invoke-direct {p0, v8, v9, p1, v0}, Lo/CursorAdapter;->d(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v1

    move v10, v0

    :goto_1
    if-le v1, p2, :cond_2

    .line 237
    iget v0, p0, Lo/CursorAdapter;->b:F

    cmpl-float v2, v10, v0

    if-lez v2, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v10, v1

    .line 238
    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 239
    invoke-direct {p0, v8, v9, p1, v10}, Lo/CursorAdapter;->d(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v1

    goto :goto_1

    .line 243
    :cond_2
    iget-boolean v0, p0, Lo/CursorAdapter;->j:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lo/CursorAdapter;->b:F

    cmpl-float v0, v10, v0

    if-nez v0, :cond_5

    if-le v1, p2, :cond_5

    .line 245
    new-instance v12, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lo/CursorAdapter;->d:F

    iget v6, p0, Lo/CursorAdapter;->h:F

    const/4 v7, 0x0

    move-object v0, v12

    move-object v1, v8

    move-object v2, v9

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 247
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 250
    invoke-virtual {v12, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_3

    const-string p1, ""

    .line 253
    invoke-virtual {p0, p1}, Lo/CursorAdapter;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 257
    :cond_3
    invoke-virtual {v12, p2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v0

    .line 258
    invoke-virtual {v12, p2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    .line 259
    invoke-virtual {v12, p2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p2

    const-string v2, "..."

    .line 260
    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    :goto_2
    int-to-float v4, p1

    add-float/2addr p2, v3

    cmpg-float p2, v4, p2

    if-gez p2, :cond_4

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 p2, v1, 0x1

    .line 264
    invoke-interface {v8, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    goto :goto_2

    .line 266
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8, v11, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/CursorAdapter;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_5
    :goto_3
    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 274
    iget p1, p0, Lo/CursorAdapter;->h:F

    iget p2, p0, Lo/CursorAdapter;->d:F

    invoke-virtual {p0, p1, p2}, Lo/CursorAdapter;->setLineSpacing(FF)V

    .line 277
    iput-boolean v11, p0, Lo/CursorAdapter;->a:Z

    :cond_6
    :goto_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    if-nez p1, :cond_0

    .line 196
    iget-boolean v0, p0, Lo/CursorAdapter;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    sub-int v0, p4, p2

    .line 197
    invoke-virtual {p0}, Lo/CursorAdapter;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo/CursorAdapter;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p5, p3

    .line 198
    invoke-virtual {p0}, Lo/CursorAdapter;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lo/CursorAdapter;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 199
    invoke-virtual {p0, v0, v1}, Lo/CursorAdapter;->e(II)V

    .line 201
    :cond_1
    invoke-super/range {p0 .. p5}, Lo/ScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lo/CursorAdapter;->a:Z

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lo/CursorAdapter;->a:Z

    .line 88
    invoke-virtual {p0}, Lo/CursorAdapter;->c()V

    return-void
.end method

.method public setAddEllipsis(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lo/CursorAdapter;->j:Z

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Lo/ScrollView;->setLineSpacing(FF)V

    .line 125
    iput p2, p0, Lo/CursorAdapter;->d:F

    .line 126
    iput p1, p0, Lo/CursorAdapter;->h:F

    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    .line 134
    iput p1, p0, Lo/CursorAdapter;->e:F

    .line 135
    invoke-virtual {p0}, Lo/CursorAdapter;->requestLayout()V

    .line 136
    invoke-virtual {p0}, Lo/CursorAdapter;->invalidate()V

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .line 152
    iput p1, p0, Lo/CursorAdapter;->b:F

    .line 153
    invoke-virtual {p0}, Lo/CursorAdapter;->requestLayout()V

    .line 154
    invoke-virtual {p0}, Lo/CursorAdapter;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lo/ScrollView;->setTextSize(F)V

    .line 107
    invoke-virtual {p0}, Lo/CursorAdapter;->getTextSize()F

    move-result p1

    iput p1, p0, Lo/CursorAdapter;->c:F

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Lo/ScrollView;->setTextSize(IF)V

    .line 116
    invoke-virtual {p0}, Lo/CursorAdapter;->getTextSize()F

    move-result p1

    iput p1, p0, Lo/CursorAdapter;->c:F

    return-void
.end method
