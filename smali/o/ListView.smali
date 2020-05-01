.class public final Lo/ListView;
.super Landroid/widget/ToggleButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ListView$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/ListView$TaskDescription;


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private c:Lo/FilterQueryProvider;

.field private final d:Landroid/graphics/Rect;

.field private final e:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ListView$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ListView$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/ListView;->b:Lo/ListView$TaskDescription;

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

    invoke-direct/range {v0 .. v5}, Lo/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct/range {p0 .. p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lo/ListView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lo/ListView;->e:Ljava/lang/CharSequence;

    .line 45
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lo/ListView;->a:Landroid/graphics/Rect;

    .line 46
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lo/ListView;->d:Landroid/graphics/Rect;

    .line 48
    new-instance v2, Lo/FilterQueryProvider;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1fff

    const/16 v18, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v18}, Lo/FilterQueryProvider;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IIIIZLjava/lang/CharSequence;IZZILo/amc;)V

    iput-object v2, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    .line 68
    sget-object v2, Lo/FilterQueryProvider;->e:Lo/FilterQueryProvider$Application;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lo/FilterQueryProvider$Application;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/FilterQueryProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ListView;->setAttributes$widgetry_release(Lo/FilterQueryProvider;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 36
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 37
    sget p3, Lo/IHwInterface$ActionBar;->s:I

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final b()Z
    .locals 2

    .line 275
    invoke-virtual {p0}, Lo/ListView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final c()V
    .locals 7

    .line 195
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v0}, Lo/FilterQueryProvider;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {p0}, Lo/ListView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lo/ListView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lo/ListView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lo/ListView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lo/ListView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lo/ListView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 203
    :goto_0
    invoke-virtual {p0}, Lo/ListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/ListView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lo/ListView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 205
    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "compoundDrawables"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    aget-object v3, v2, v1

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 208
    aget-object v3, v2, v1

    iget-object v5, p0, Lo/ListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 210
    iget-object v3, p0, Lo/ListView;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v5, p0, Lo/ListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v3, v5

    if-le v0, v3, :cond_1

    .line 212
    invoke-virtual {p0}, Lo/ListView;->getRightPaddingOffset()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v5, p0, Lo/ListView;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lo/ListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    div-int/2addr v3, v4

    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawablePadding()I

    move-result v5

    sub-int/2addr v3, v5

    .line 213
    iget-object v5, p0, Lo/ListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 214
    aget-object v3, v2, v1

    const-string v5, "drawables[LEFT_DRAWABLE]"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lo/ListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 218
    :cond_1
    aget-object v3, v2, v4

    if-eqz v3, :cond_2

    .line 219
    aget-object v3, v2, v4

    iget-object v5, p0, Lo/ListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 221
    iget-object v3, p0, Lo/ListView;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v5, p0, Lo/ListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v3, v5

    if-le v0, v3, :cond_2

    .line 223
    invoke-virtual {p0}, Lo/ListView;->getLeftPaddingOffset()I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v0, p0, Lo/ListView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v5, p0, Lo/ListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    div-int/2addr v3, v4

    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawablePadding()I

    move-result v0

    add-int/2addr v3, v0

    .line 224
    iget-object v0, p0, Lo/ListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 225
    aget-object v0, v2, v4

    const-string v1, "drawables[RIGHT_DRAWABLE]"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/ListView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private final d()V
    .locals 5

    .line 176
    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0

    .line 178
    :cond_0
    invoke-direct {p0}, Lo/ListView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 183
    :goto_0
    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_1

    .line 185
    :cond_2
    invoke-direct {p0}, Lo/ListView;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v1

    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    .line 190
    :goto_1
    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lo/ListView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 189
    invoke-virtual {p0, v0, v2, v1, v3}, Lo/ListView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic d(Lo/ListView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZIIIIZZILjava/lang/Object;)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v2}, Lo/FilterQueryProvider;->c()Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v3}, Lo/FilterQueryProvider;->a()Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 248
    iget-object v4, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v4}, Lo/FilterQueryProvider;->d()Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 249
    iget-object v5, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v5}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 250
    iget-object v6, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v6}, Lo/FilterQueryProvider;->g()Z

    move-result v6

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 251
    iget-object v7, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v7}, Lo/FilterQueryProvider;->e()I

    move-result v7

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 252
    iget-object v8, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v8}, Lo/FilterQueryProvider;->j()I

    move-result v8

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 253
    iget-object v9, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v9}, Lo/FilterQueryProvider;->i()I

    move-result v9

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 254
    iget-object v10, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v10}, Lo/FilterQueryProvider;->f()I

    move-result v10

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 255
    iget-object v11, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v11}, Lo/FilterQueryProvider;->m()Z

    move-result v11

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 256
    iget-object v1, v0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v1}, Lo/FilterQueryProvider;->l()Z

    move-result v1

    goto :goto_a

    :cond_a
    move/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lo/ListView;->a(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZIIIIZZ)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZIIIIZZ)V
    .locals 17

    const-string v0, "strokeColor"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonColor"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconColor"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lo/FilterQueryProvider;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x600

    const/16 v16, 0x0

    move-object v1, v0

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p5

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v1 .. v16}, Lo/FilterQueryProvider;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IIIIZLjava/lang/CharSequence;IZZILo/amc;)V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/ListView;->setAttributes$widgetry_release(Lo/FilterQueryProvider;)V

    return-void
.end method

.method public final e()Lo/FilterQueryProvider;
    .locals 1

    .line 273
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lo/ListView;->d()V

    .line 100
    invoke-super {p0}, Landroid/widget/ToggleButton;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 76
    invoke-super/range {p0 .. p5}, Landroid/widget/ToggleButton;->onLayout(ZIIII)V

    .line 77
    invoke-direct {p0}, Lo/ListView;->c()V

    return-void
.end method

.method public final setAttributes$widgetry_release(Lo/FilterQueryProvider;)V
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    .line 51
    new-instance v0, Lo/Filter;

    invoke-direct {v0, p1}, Lo/Filter;-><init>(Lo/FilterQueryProvider;)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p1}, Lo/FilterQueryProvider;->d()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ListView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    move-object p1, p0

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lo/PipedInputStream;->a(Landroid/widget/TextView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-static {p1}, Lo/PipedInputStream;->e(Landroid/widget/TextView;)I

    move-result v0

    .line 57
    invoke-virtual {p0}, Lo/ListView;->getTextSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v2, v3, v1

    .line 58
    invoke-static {p1, v3, v4}, Lo/PipedInputStream;->d(Landroid/widget/TextView;[II)V

    .line 64
    :cond_0
    invoke-direct {p0}, Lo/ListView;->d()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/FilterQueryProvider;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v0}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v1}, Lo/FilterQueryProvider;->f()I

    move-result v1

    invoke-static {p1, v0, v1}, Lo/RemoteException;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v0}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v1}, Lo/FilterQueryProvider;->f()I

    move-result v1

    invoke-static {p2, v0, v1}, Lo/RemoteException;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 143
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v0}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v1}, Lo/FilterQueryProvider;->f()I

    move-result v1

    invoke-static {p3, v0, v1}, Lo/RemoteException;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 144
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v0}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v1}, Lo/FilterQueryProvider;->f()I

    move-result v1

    invoke-static {p4, v0, v1}, Lo/RemoteException;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/FilterQueryProvider;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v0}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v1}, Lo/FilterQueryProvider;->f()I

    move-result v1

    invoke-static {p1, v0, v1}, Lo/RemoteException;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v0}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v1}, Lo/FilterQueryProvider;->f()I

    move-result v1

    invoke-static {p2, v0, v1}, Lo/RemoteException;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 163
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v0}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v1}, Lo/FilterQueryProvider;->f()I

    move-result v1

    invoke-static {p3, v0, v1}, Lo/RemoteException;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 164
    iget-object v0, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v0}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lo/ListView;->c:Lo/FilterQueryProvider;

    invoke-virtual {v1}, Lo/FilterQueryProvider;->f()I

    move-result v1

    invoke-static {p4, v0, v1}, Lo/RemoteException;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lo/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 125
    invoke-virtual {p0}, Lo/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    if-eqz p3, :cond_2

    .line 126
    invoke-virtual {p0}, Lo/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v0

    :goto_2
    if-eqz p4, :cond_3

    .line 127
    invoke-virtual {p0}, Lo/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/ListView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lo/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 111
    invoke-virtual {p0}, Lo/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    if-eqz p3, :cond_2

    .line 112
    invoke-virtual {p0}, Lo/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v0

    :goto_2
    if-eqz p4, :cond_3

    .line 113
    invoke-virtual {p0}, Lo/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/ListView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setLabelVisibility(Z)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 82
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/ListView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lo/ListView;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/ListView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
