.class public final Lo/ShellCommand;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ShellCommand$Application;,
        Lo/ShellCommand$StateListAnimator;,
        Lo/ShellCommand$ActionBar;,
        Lo/ShellCommand$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/ShellCommand$Activity;


# instance fields
.field private b:F

.field private c:F

.field private d:I

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private l:Lo/ShellCommand$StateListAnimator;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ShellCommand$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ShellCommand$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ShellCommand$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ShellCommand;->a:Lo/ShellCommand$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/ShellCommand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/ShellCommand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x3

    .line 47
    iput p3, p0, Lo/ShellCommand;->d:I

    const p3, 0x3f0ccccd    # 0.55f

    .line 49
    iput p3, p0, Lo/ShellCommand;->b:F

    const p3, 0x3fd5c28f    # 1.67f

    .line 51
    iput p3, p0, Lo/ShellCommand;->e:F

    .line 70
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    iput-object p3, p0, Lo/ShellCommand;->m:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 81
    sget-object p3, Lo/IHwInterface$Fragment;->be:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    :try_start_0
    sget p2, Lo/IHwInterface$Fragment;->bg:I

    iget p3, p0, Lo/ShellCommand;->d:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lo/ShellCommand;->d:I

    .line 84
    sget p2, Lo/IHwInterface$Fragment;->bb:I

    iget p3, p0, Lo/ShellCommand;->b:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lo/ShellCommand;->b:F

    .line 85
    sget p2, Lo/IHwInterface$Fragment;->bi:I

    iget p3, p0, Lo/ShellCommand;->e:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lo/ShellCommand;->e:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 33
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/ShellCommand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(I)I
    .locals 2

    .line 192
    invoke-direct {p0}, Lo/ShellCommand;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lo/ShellCommand;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingStart()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method private final b(I)I
    .locals 3

    .line 156
    invoke-direct {p0, p1}, Lo/ShellCommand;->a(I)I

    move-result p1

    .line 158
    iget v0, p0, Lo/ShellCommand;->h:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lo/ShellCommand;->g:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 159
    iget p1, p0, Lo/ShellCommand;->o:I

    goto :goto_0

    .line 160
    :cond_1
    iget v1, p0, Lo/ShellCommand;->g:I

    iget v2, p0, Lo/ShellCommand;->o:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    mul-float v2, v2, p1

    iget p1, p0, Lo/ShellCommand;->h:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-int p1, v2

    add-int/2addr p1, v1

    :goto_0
    return p1
.end method

.method private final b()V
    .locals 11

    .line 231
    iget-object v0, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recomputeLayout: BEFORE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScaledItemListView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v0, p0, Lo/ShellCommand;->c:F

    iget v2, p0, Lo/ShellCommand;->h:I

    int-to-float v3, v2

    mul-float v0, v0, v3

    float-to-int v0, v0

    iget v3, p0, Lo/ShellCommand;->f:F

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    .line 237
    iput v3, p0, Lo/ShellCommand;->c:F

    .line 239
    invoke-direct {p0}, Lo/ShellCommand;->i()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 240
    iget-boolean v2, p0, Lo/ShellCommand;->i:Z

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {p0}, Lo/ShellCommand;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingStart()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_1

    .line 243
    :cond_1
    iget-object v2, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ShellCommand$ActionBar;

    invoke-virtual {v2}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lo/ShellCommand$Application;->d()I

    move-result v4

    add-int/2addr v0, v4

    iget v2, v2, Lo/ShellCommand$Application;->width:I

    goto :goto_0

    .line 247
    :cond_2
    iget-boolean v2, p0, Lo/ShellCommand;->i:Z

    if-eqz v2, :cond_3

    .line 248
    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingStart()I

    move-result v0

    goto :goto_1

    .line 250
    :cond_3
    iget-object v2, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ShellCommand$ActionBar;

    invoke-virtual {v2}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v2

    invoke-virtual {v2}, Lo/ShellCommand$Application;->d()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    :goto_1
    const/4 v2, -0x1

    .line 256
    iget-object v4, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_7

    .line 257
    iget-object v5, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ShellCommand$ActionBar;

    .line 258
    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v6

    .line 260
    invoke-direct {p0, v0}, Lo/ShellCommand;->e(I)I

    move-result v7

    .line 261
    iput v7, v6, Lo/ShellCommand$Application;->width:I

    .line 262
    invoke-direct {p0, v0}, Lo/ShellCommand;->b(I)I

    move-result v8

    iput v8, v6, Lo/ShellCommand$Application;->height:I

    .line 263
    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->f()Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v0}, Lo/ShellCommand;->c(I)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 267
    iget v8, p0, Lo/ShellCommand;->j:I

    sub-int v9, v7, v8

    int-to-float v9, v9

    iget v10, p0, Lo/ShellCommand;->h:I

    sub-int/2addr v10, v8

    int-to-float v8, v10

    div-float/2addr v9, v8

    .line 268
    invoke-virtual {v5, v9}, Lo/ShellCommand$ActionBar;->b(F)V

    .line 270
    invoke-direct {p0}, Lo/ShellCommand;->i()Z

    move-result v8

    if-eqz v8, :cond_4

    sub-int v7, v0, v7

    .line 271
    invoke-virtual {v6, v7}, Lo/ShellCommand$Application;->e(I)V

    .line 272
    iget v7, v6, Lo/ShellCommand$Application;->width:I

    sub-int/2addr v0, v7

    .line 273
    invoke-virtual {v6}, Lo/ShellCommand$Application;->d()I

    move-result v7

    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->f()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v7, v5

    if-ltz v7, :cond_5

    invoke-virtual {v6}, Lo/ShellCommand$Application;->d()I

    move-result v5

    invoke-virtual {p0}, Lo/ShellCommand;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_6

    goto :goto_3

    .line 277
    :cond_4
    invoke-virtual {v6, v0}, Lo/ShellCommand$Application;->e(I)V

    .line 278
    iget v7, v6, Lo/ShellCommand$Application;->width:I

    add-int/2addr v0, v7

    .line 279
    invoke-virtual {v6}, Lo/ShellCommand$Application;->d()I

    move-result v7

    invoke-virtual {p0}, Lo/ShellCommand;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_5

    invoke-virtual {v6}, Lo/ShellCommand$Application;->d()I

    move-result v6

    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->f()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v6, v5

    if-gez v6, :cond_6

    :cond_5
    :goto_3
    move v2, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 285
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recomputeLayout: INTERM "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v0, p0, Lo/ShellCommand;->i:Z

    if-nez v0, :cond_8

    invoke-direct {p0, v2}, Lo/ShellCommand;->g(I)V

    .line 290
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recomputeLayout: AFTER "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final c(I)F
    .locals 2

    .line 171
    invoke-direct {p0, p1}, Lo/ShellCommand;->a(I)I

    move-result p1

    .line 173
    iget v0, p0, Lo/ShellCommand;->h:I

    const/high16 v1, 0x3f000000    # 0.5f

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 174
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    mul-float p1, p1, v1

    iget v0, p0, Lo/ShellCommand;->h:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lo/ShellCommand;->h:I

    int-to-float v0, v0

    div-float v1, p1, v0

    :goto_0
    return v1
.end method

.method private final d()V
    .locals 6

    .line 104
    iget-object v0, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lo/ShellCommand;->l:Lo/ShellCommand$StateListAnimator;

    if-eqz v0, :cond_0

    .line 106
    iget v3, p0, Lo/ShellCommand;->d:I

    add-int/2addr v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    .line 107
    move-object v4, p0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Lo/ShellCommand$StateListAnimator;->b(Landroid/view/ViewGroup;)Lo/ShellCommand$ActionBar;

    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lo/ShellCommand$ActionBar;->f()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lo/ShellCommand;->addView(Landroid/view/View;)V

    .line 109
    iget-object v5, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 113
    iget-object v3, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ShellCommand$ActionBar;

    invoke-virtual {v3}, Lo/ShellCommand$ActionBar;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_2
    iput-boolean v2, p0, Lo/ShellCommand;->i:Z

    .line 117
    invoke-virtual {p0}, Lo/ShellCommand;->requestLayout()V

    return-void
.end method

.method private final e(I)I
    .locals 3

    .line 141
    invoke-direct {p0, p1}, Lo/ShellCommand;->a(I)I

    move-result p1

    .line 143
    iget v0, p0, Lo/ShellCommand;->h:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lo/ShellCommand;->j:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    iget v1, p0, Lo/ShellCommand;->j:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    mul-float v2, v2, p1

    iget p1, p0, Lo/ShellCommand;->h:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-int p1, v2

    add-int v0, v1, p1

    :goto_0
    return v0
.end method

.method private final g(I)V
    .locals 9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 297
    iget-object v1, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto/16 :goto_6

    .line 298
    :cond_0
    iget-object v1, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShellCommand$ActionBar;

    .line 299
    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->a()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 301
    :goto_0
    iget-object v5, p0, Lo/ShellCommand;->m:Ljava/util/List;

    if-eqz v4, :cond_2

    invoke-static {v5}, Lo/akz;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lo/akz;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    check-cast v5, Lo/ShellCommand$ActionBar;

    .line 302
    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v6

    iget v7, p0, Lo/ShellCommand;->h:I

    iput v7, v6, Lo/ShellCommand$Application;->width:I

    .line 304
    invoke-direct {p0}, Lo/ShellCommand;->i()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 305
    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v6

    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v7

    invoke-virtual {v7}, Lo/ShellCommand$Application;->d()I

    move-result v7

    if-eqz v4, :cond_3

    .line 306
    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v8

    iget v8, v8, Lo/ShellCommand$Application;->width:I

    neg-int v8, v8

    goto :goto_2

    .line 307
    :cond_3
    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v8

    iget v8, v8, Lo/ShellCommand$Application;->width:I

    :goto_2
    add-int/2addr v7, v8

    .line 305
    invoke-virtual {v6, v7}, Lo/ShellCommand$Application;->e(I)V

    .line 308
    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v6

    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v7

    invoke-virtual {v7}, Lo/ShellCommand$Application;->d()I

    move-result v7

    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v8

    iget v8, v8, Lo/ShellCommand$Application;->width:I

    add-int/2addr v7, v8

    invoke-direct {p0, v7}, Lo/ShellCommand;->b(I)I

    move-result v7

    iput v7, v6, Lo/ShellCommand$Application;->height:I

    .line 309
    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->f()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v7

    invoke-virtual {v7}, Lo/ShellCommand$Application;->d()I

    move-result v7

    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v8

    iget v8, v8, Lo/ShellCommand$Application;->width:I

    add-int/2addr v7, v8

    invoke-direct {p0, v7}, Lo/ShellCommand;->c(I)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 311
    :cond_4
    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v6

    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v7

    invoke-virtual {v7}, Lo/ShellCommand$Application;->d()I

    move-result v7

    if-eqz v4, :cond_5

    .line 312
    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v8

    iget v8, v8, Lo/ShellCommand$Application;->width:I

    goto :goto_3

    .line 313
    :cond_5
    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v8

    iget v8, v8, Lo/ShellCommand$Application;->width:I

    neg-int v8, v8

    :goto_3
    add-int/2addr v7, v8

    .line 311
    invoke-virtual {v6, v7}, Lo/ShellCommand$Application;->e(I)V

    .line 314
    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v6

    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v7

    invoke-virtual {v7}, Lo/ShellCommand$Application;->d()I

    move-result v7

    invoke-direct {p0, v7}, Lo/ShellCommand;->b(I)I

    move-result v7

    iput v7, v6, Lo/ShellCommand$Application;->height:I

    .line 315
    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->f()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v7

    invoke-virtual {v7}, Lo/ShellCommand$Application;->d()I

    move-result v7

    invoke-direct {p0, v7}, Lo/ShellCommand;->c(I)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    if-eqz v4, :cond_6

    .line 320
    iget-object v2, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->c()I

    move-result v2

    if-eq v2, v0, :cond_7

    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->c()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_5

    .line 323
    :cond_6
    iget-object v4, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 324
    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->c()I

    move-result v2

    if-eq v2, v0, :cond_7

    invoke-virtual {v5}, Lo/ShellCommand$ActionBar;->c()I

    move-result v0

    sub-int/2addr v0, v3

    .line 326
    :cond_7
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recycleDisplacedView: oldPosition = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newPosition = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ScaledItemListView"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v1, v0}, Lo/ShellCommand$ActionBar;->a(I)V

    .line 329
    invoke-virtual {v1, v3}, Lo/ShellCommand$ActionBar;->d(Z)V

    :cond_8
    :goto_6
    return-void
.end method

.method private final i()Z
    .locals 2

    .line 455
    invoke-virtual {p0}, Lo/ShellCommand;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 121
    iget-object v0, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/ShellCommand;->l:Lo/ShellCommand$StateListAnimator;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_0
    if-ge v0, v1, :cond_2

    if-ne v3, v2, :cond_1

    .line 126
    iget-object v3, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ShellCommand$ActionBar;

    invoke-virtual {v3}, Lo/ShellCommand$ActionBar;->c()I

    move-result v3

    goto :goto_1

    .line 128
    :cond_1
    iget-object v4, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ShellCommand$ActionBar;

    invoke-virtual {v4, v3}, Lo/ShellCommand$ActionBar;->b(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public c()Lo/ShellCommand$Application;
    .locals 2

    .line 361
    new-instance v0, Lo/ShellCommand$Application;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lo/ShellCommand$Application;-><init>(II)V

    return-object v0
.end method

.method public final c(F)V
    .locals 2

    .line 207
    iget v0, p0, Lo/ShellCommand;->c:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lo/ShellCommand;->l:Lo/ShellCommand$StateListAnimator;

    if-nez v0, :cond_1

    return-void

    .line 209
    :cond_1
    iput p1, p0, Lo/ShellCommand;->f:F

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollRatioChanged: currScrollRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ShellCommand;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pendingScrollRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScaledItemListView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lo/ShellCommand;->requestLayout()V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    const-string v0, "lp"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    instance-of p1, p1, Lo/ShellCommand$Application;

    return p1
.end method

.method protected d(Landroid/view/ViewGroup$LayoutParams;)Lo/ShellCommand$Application;
    .locals 2

    const-string v0, "lp"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    new-instance v0, Lo/ShellCommand$Application;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p1}, Lo/ShellCommand$Application;-><init>(II)V

    return-object v0
.end method

.method public final d(I)V
    .locals 1

    .line 219
    iget-object v0, p0, Lo/ShellCommand;->l:Lo/ShellCommand$StateListAnimator;

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Lo/ShellCommand$StateListAnimator;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iput p1, p0, Lo/ShellCommand;->n:I

    const/4 p1, 0x0

    .line 222
    iput p1, p0, Lo/ShellCommand;->c:F

    .line 223
    iput p1, p0, Lo/ShellCommand;->f:F

    .line 224
    invoke-direct {p0}, Lo/ShellCommand;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()F
    .locals 1

    .line 53
    iget v0, p0, Lo/ShellCommand;->c:F

    return v0
.end method

.method public e(Landroid/util/AttributeSet;)Lo/ShellCommand$Application;
    .locals 3

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    new-instance v0, Lo/ShellCommand$Application;

    invoke-virtual {p0}, Lo/ShellCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lo/ShellCommand$Application;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lo/ShellCommand;->c()Lo/ShellCommand$Application;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lo/ShellCommand;->e(Landroid/util/AttributeSet;)Lo/ShellCommand$Application;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method public synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lo/ShellCommand;->d(Landroid/view/ViewGroup$LayoutParams;)Lo/ShellCommand$Application;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 446
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 447
    :goto_0
    iget-object v0, p0, Lo/ShellCommand;->m:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lo/ShellCommand;->m:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ShellCommand$ActionBar;

    .line 449
    invoke-virtual {v0}, Lo/ShellCommand$ActionBar;->a()V

    .line 450
    invoke-virtual {v0}, Lo/ShellCommand$ActionBar;->d()V

    .line 451
    invoke-virtual {v0}, Lo/ShellCommand$ActionBar;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ShellCommand;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 333
    iget-object p1, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    .line 334
    iget-object p4, p0, Lo/ShellCommand;->m:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lo/ShellCommand$ActionBar;

    .line 335
    invoke-virtual {p4}, Lo/ShellCommand$ActionBar;->e()Lo/ShellCommand$Application;

    move-result-object v0

    .line 336
    invoke-virtual {p4}, Lo/ShellCommand$ActionBar;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lo/ShellCommand$Application;->d()I

    move-result v2

    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Lo/ShellCommand$Application;->d()I

    move-result v4

    iget v0, v0, Lo/ShellCommand$Application;->width:I

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingBottom()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 337
    iget-boolean v0, p0, Lo/ShellCommand;->i:Z

    if-eqz v0, :cond_0

    .line 338
    iget v0, p0, Lo/ShellCommand;->n:I

    add-int/2addr v0, p3

    invoke-virtual {p4, v0}, Lo/ShellCommand$ActionBar;->b(I)V

    goto :goto_1

    .line 339
    :cond_0
    invoke-virtual {p4}, Lo/ShellCommand$ActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p4}, Lo/ShellCommand$ActionBar;->c()I

    move-result v0

    invoke-virtual {p4, v0}, Lo/ShellCommand$ActionBar;->b(I)V

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 343
    :cond_2
    iput-boolean p2, p0, Lo/ShellCommand;->i:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 347
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 348
    invoke-direct {p0}, Lo/ShellCommand;->b()V

    .line 349
    invoke-virtual {p0}, Lo/ShellCommand;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 350
    invoke-virtual {p0, v1}, Lo/ShellCommand;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {p0, v2, p1, p2}, Lo/ShellCommand;->measureChild(Landroid/view/View;II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 93
    :cond_0
    iget p3, p0, Lo/ShellCommand;->h:I

    if-eqz p3, :cond_2

    :cond_1
    return-void

    .line 94
    :cond_2
    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingStart()I

    move-result p3

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingEnd()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    iget p4, p0, Lo/ShellCommand;->b:F

    mul-float p3, p3, p4

    float-to-int p3, p3

    iput p3, p0, Lo/ShellCommand;->h:I

    .line 95
    iget p3, p0, Lo/ShellCommand;->h:I

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingStart()I

    move-result p3

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingEnd()I

    move-result p4

    sub-int/2addr p3, p4

    iput p3, p0, Lo/ShellCommand;->h:I

    .line 97
    :cond_3
    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingStart()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingEnd()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/4 p3, 0x1

    int-to-float p4, p3

    iget v0, p0, Lo/ShellCommand;->b:F

    sub-float/2addr p4, v0

    mul-float p1, p1, p4

    iget p4, p0, Lo/ShellCommand;->d:I

    sub-int/2addr p4, p3

    int-to-float p3, p4

    div-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lo/ShellCommand;->j:I

    .line 99
    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lo/ShellCommand;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lo/ShellCommand;->o:I

    .line 100
    iget p1, p0, Lo/ShellCommand;->o:I

    int-to-float p1, p1

    iget p2, p0, Lo/ShellCommand;->e:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lo/ShellCommand;->g:I

    return-void
.end method

.method public final setAdapter(Lo/ShellCommand$StateListAnimator;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lo/ShellCommand;->l:Lo/ShellCommand$StateListAnimator;

    .line 75
    invoke-direct {p0}, Lo/ShellCommand;->d()V

    return-void
.end method

.method public final setCurrScrollRatio(F)V
    .locals 0

    .line 53
    iput p1, p0, Lo/ShellCommand;->c:F

    return-void
.end method

.method public final setMagnifiedItemHeight(I)V
    .locals 0

    .line 65
    iput p1, p0, Lo/ShellCommand;->o:I

    return-void
.end method

.method public final setMagnifiedItemWidth(I)V
    .locals 0

    .line 61
    iput p1, p0, Lo/ShellCommand;->h:I

    return-void
.end method
