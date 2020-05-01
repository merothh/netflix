.class public final Lo/RelativeLayout;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RelativeLayout$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/RelativeLayout$TaskDescription;

.field private static final s:Z = false


# instance fields
.field private a:Landroid/text/StaticLayout;

.field private final b:Landroid/text/TextPaint;

.field private c:Ljava/lang/CharSequence;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private q:Landroid/text/Layout$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/RelativeLayout$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RelativeLayout$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/RelativeLayout;->d:Lo/RelativeLayout$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 284
    const-class v2, Landroid/app/Activity;

    invoke-static {p1, v2}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 36
    invoke-static {p1}, Lo/TwoLineListItem;->e(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 35
    iput-object v0, p0, Lo/RelativeLayout;->b:Landroid/text/TextPaint;

    const/4 p1, 0x3

    .line 56
    iput p1, p0, Lo/RelativeLayout;->n:I

    .line 64
    iput-boolean v1, p0, Lo/RelativeLayout;->k:Z

    .line 66
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lo/RelativeLayout;->q:Landroid/text/Layout$Alignment;

    return-void
.end method

.method private final a()V
    .locals 12

    .line 110
    iget-object v0, p0, Lo/RelativeLayout;->c:Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {p0}, Lo/RelativeLayout;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lo/RelativeLayout;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lo/RelativeLayout;->f:I

    sub-int/2addr v1, v2

    iget v2, p0, Lo/RelativeLayout;->h:I

    sub-int/2addr v1, v2

    iput v1, p0, Lo/RelativeLayout;->o:I

    .line 117
    iget-boolean v1, p0, Lo/RelativeLayout;->l:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    iput-object v1, p0, Lo/RelativeLayout;->q:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    .line 123
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 124
    iget-object v3, p0, Lo/RelativeLayout;->b:Landroid/text/TextPaint;

    .line 125
    iget v4, p0, Lo/RelativeLayout;->o:I

    .line 126
    iget-object v5, p0, Lo/RelativeLayout;->q:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 130
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 131
    iget v10, p0, Lo/RelativeLayout;->o:I

    .line 132
    iget v11, p0, Lo/RelativeLayout;->n:I

    .line 120
    invoke-static/range {v0 .. v11}, Lo/De;->d(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lo/RelativeLayout;->a:Landroid/text/StaticLayout;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lo/RelativeLayout;->o:I

    const/4 v0, 0x0

    .line 136
    check-cast v0, Landroid/text/StaticLayout;

    iput-object v0, p0, Lo/RelativeLayout;->a:Landroid/text/StaticLayout;

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 234
    iget v0, p0, Lo/RelativeLayout;->n:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lo/RelativeLayout;->k:Z

    .line 238
    :cond_0
    iput p1, p0, Lo/RelativeLayout;->n:I

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lo/RelativeLayout;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lo/RelativeLayout;->k:Z

    .line 195
    :cond_0
    iget-object v0, p0, Lo/RelativeLayout;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public final b(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/RelativeLayout;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 252
    iget-boolean v0, p0, Lo/RelativeLayout;->m:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lo/RelativeLayout;->k:Z

    .line 255
    :cond_0
    iput-boolean p1, p0, Lo/RelativeLayout;->m:Z

    return-void
.end method

.method public final c(IIII)V
    .locals 1

    .line 222
    iget v0, p0, Lo/RelativeLayout;->j:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lo/RelativeLayout;->h:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lo/RelativeLayout;->i:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lo/RelativeLayout;->f:I

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lo/RelativeLayout;->k:Z

    .line 226
    :cond_1
    iput p1, p0, Lo/RelativeLayout;->j:I

    .line 227
    iput p2, p0, Lo/RelativeLayout;->h:I

    .line 228
    iput p3, p0, Lo/RelativeLayout;->i:I

    .line 229
    iput p4, p0, Lo/RelativeLayout;->f:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-boolean v0, Lo/RelativeLayout;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lo/RelativeLayout;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v2, "copyBounds()"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 74
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v3, -0xffff01

    .line 75
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    invoke-direct {v3, v5, v1, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    :cond_0
    iget-boolean v0, p0, Lo/RelativeLayout;->k:Z

    if-eqz v0, :cond_1

    .line 81
    invoke-direct {p0}, Lo/RelativeLayout;->a()V

    .line 82
    iput-boolean v1, p0, Lo/RelativeLayout;->k:Z

    .line 85
    :cond_1
    iget-object v0, p0, Lo/RelativeLayout;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lo/RelativeLayout;->a:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    .line 89
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget v3, p0, Lo/RelativeLayout;->o:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 94
    iget-boolean v3, p0, Lo/RelativeLayout;->m:Z

    if-eqz v3, :cond_3

    .line 96
    invoke-virtual {p0}, Lo/RelativeLayout;->copyBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    iget v1, p0, Lo/RelativeLayout;->j:I

    sub-int/2addr v3, v1

    iget v1, p0, Lo/RelativeLayout;->i:I

    sub-int/2addr v3, v1

    :goto_0
    int-to-float v1, v3

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lo/RelativeLayout;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    int-to-float v1, p1

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lo/RelativeLayout;->k:Z

    .line 204
    :cond_0
    iget-object v0, p0, Lo/RelativeLayout;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 205
    iput p1, p0, Lo/RelativeLayout;->g:I

    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lo/RelativeLayout;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 244
    iput-boolean v1, p0, Lo/RelativeLayout;->k:Z

    .line 247
    :cond_0
    iput-object p1, p0, Lo/RelativeLayout;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lo/RelativeLayout;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lo/RelativeLayout;->k:Z

    .line 154
    :cond_0
    iget-object v0, p0, Lo/RelativeLayout;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 155
    iget-object v0, p0, Lo/RelativeLayout;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lo/RelativeLayout;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lo/RelativeLayout;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lo/RelativeLayout;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lo/RelativeLayout;->k:Z

    .line 184
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    iget-object v0, p0, Lo/RelativeLayout;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lo/RelativeLayout;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lo/RelativeLayout;->k:Z

    .line 173
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 175
    iget-object v0, p0, Lo/RelativeLayout;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lo/RelativeLayout;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 161
    iput-boolean v1, p0, Lo/RelativeLayout;->k:Z

    .line 164
    :cond_0
    iget-object v0, p0, Lo/RelativeLayout;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
