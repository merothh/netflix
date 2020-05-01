.class public Lo/DatePicker;
.super Lo/ImageSwitcher;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DatePicker$Application;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field private b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/DatePicker$Application;",
            ">;"
        }
    .end annotation
.end field

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:F

.field private l:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[\\.,\u2026;\\:\\s]*$"

    const/16 v1, 0x20

    .line 46
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/DatePicker;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lo/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lo/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lo/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lo/DatePicker;->c:Ljava/util/List;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 58
    iput p3, p0, Lo/DatePicker;->f:F

    const/4 p3, 0x0

    .line 59
    iput p3, p0, Lo/DatePicker;->k:F

    const/4 p3, 0x0

    .line 75
    invoke-super {p0, p3}, Lo/ImageSwitcher;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    const v1, 0x1010153

    aput v1, p3, v0

    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, 0x7fffffff

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lo/DatePicker;->setMaxLines(I)V

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    sget-object p1, Lo/DatePicker;->e:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Lo/DatePicker;->setEndPunctuationPattern(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/Layout;
    .locals 9

    .line 221
    new-instance v8, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lo/DatePicker;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 222
    invoke-virtual {p0}, Lo/DatePicker;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/DatePicker;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo/DatePicker;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lo/DatePicker;->f:F

    iget v6, p0, Lo/DatePicker;->k:F

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method private a()V
    .locals 7

    .line 158
    iget-object v0, p0, Lo/DatePicker;->h:Ljava/lang/String;

    .line 160
    invoke-direct {p0, v0}, Lo/DatePicker;->a(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    .line 161
    invoke-direct {p0}, Lo/DatePicker;->c()I

    move-result v2

    .line 162
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v3, v2, :cond_2

    .line 164
    iget-object v0, p0, Lo/DatePicker;->h:Ljava/lang/String;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u2026"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/DatePicker;->a(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-le v1, v2, :cond_1

    const/16 v1, 0x20

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    :goto_1
    iget-object v1, p0, Lo/DatePicker;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 177
    :goto_2
    invoke-virtual {p0}, Lo/DatePicker;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 178
    iput-boolean v4, p0, Lo/DatePicker;->i:Z

    .line 180
    :try_start_0
    invoke-virtual {p0, v0}, Lo/DatePicker;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iput-boolean v5, p0, Lo/DatePicker;->i:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lo/DatePicker;->i:Z

    .line 183
    throw v0

    .line 185
    :cond_3
    :goto_3
    iput-boolean v5, p0, Lo/DatePicker;->g:Z

    .line 186
    iget-boolean v0, p0, Lo/DatePicker;->b:Z

    if-eq v1, v0, :cond_4

    .line 187
    iput-boolean v1, p0, Lo/DatePicker;->b:Z

    .line 188
    iget-object v0, p0, Lo/DatePicker;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/DatePicker$Application;

    .line 189
    invoke-interface {v2, v1}, Lo/DatePicker$Application;->e(Z)V

    goto :goto_4

    :cond_4
    return-void
.end method

.method private c()I
    .locals 2

    .line 198
    invoke-virtual {p0}, Lo/DatePicker;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-direct {p0}, Lo/DatePicker;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 206
    :cond_1
    iget v0, p0, Lo/DatePicker;->j:I

    return v0
.end method

.method private e()I
    .locals 3

    const-string v0, ""

    .line 214
    invoke-direct {p0, v0}, Lo/DatePicker;->a(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lo/DatePicker;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lo/DatePicker;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lo/DatePicker;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 216
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    .line 217
    div-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public d()Z
    .locals 2

    .line 114
    iget v0, p0, Lo/DatePicker;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMaxLines()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .line 110
    iget v0, p0, Lo/DatePicker;->j:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lo/DatePicker;->g:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lo/DatePicker;->a()V

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lo/ImageSwitcher;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Lo/ImageSwitcher;->onSizeChanged(IIII)V

    .line 137
    invoke-virtual {p0}, Lo/DatePicker;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lo/DatePicker;->g:Z

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Lo/ImageSwitcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 128
    iget-boolean p2, p0, Lo/DatePicker;->i:Z

    if-nez p2, :cond_0

    .line 129
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/DatePicker;->h:Ljava/lang/String;

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lo/DatePicker;->g:Z

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    return-void
.end method

.method public setEndPunctuationPattern(Ljava/util/regex/Pattern;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/DatePicker;->l:Ljava/util/regex/Pattern;

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .line 119
    iput p1, p0, Lo/DatePicker;->k:F

    .line 120
    iput p2, p0, Lo/DatePicker;->f:F

    .line 121
    invoke-super {p0, p1, p2}, Lo/ImageSwitcher;->setLineSpacing(FF)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lo/ImageSwitcher;->setMaxLines(I)V

    .line 104
    iput p1, p0, Lo/DatePicker;->j:I

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lo/DatePicker;->g:Z

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lo/ImageSwitcher;->setPadding(IIII)V

    .line 144
    invoke-virtual {p0}, Lo/DatePicker;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lo/DatePicker;->g:Z

    :cond_0
    return-void
.end method
