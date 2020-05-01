.class final Lo/ViewPropertyAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ViewPropertyAnimator$ActionBar;
    }
.end annotation


# direct methods
.method static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 20

    move-object/from16 v0, p1

    .line 90
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gradient"

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    sget-object v1, Lo/AccessibilityDelegate$LoaderManager;->u:[I

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {v2, v4, v3, v1}, Lo/ViewParent;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 98
    sget v5, Lo/AccessibilityDelegate$LoaderManager;->H:I

    const/4 v6, 0x0

    const-string v7, "startX"

    invoke-static {v1, v0, v7, v5, v6}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    .line 100
    sget v5, Lo/AccessibilityDelegate$LoaderManager;->E:I

    const-string v7, "startY"

    invoke-static {v1, v0, v7, v5, v6}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    .line 102
    sget v5, Lo/AccessibilityDelegate$LoaderManager;->F:I

    const-string v7, "endX"

    invoke-static {v1, v0, v7, v5, v6}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    .line 104
    sget v5, Lo/AccessibilityDelegate$LoaderManager;->I:I

    const-string v7, "endY"

    invoke-static {v1, v0, v7, v5, v6}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v12

    .line 106
    sget v5, Lo/AccessibilityDelegate$LoaderManager;->A:I

    const-string v7, "centerX"

    invoke-static {v1, v0, v7, v5, v6}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v14

    .line 108
    sget v5, Lo/AccessibilityDelegate$LoaderManager;->B:I

    const-string v7, "centerY"

    invoke-static {v1, v0, v7, v5, v6}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    .line 110
    sget v5, Lo/AccessibilityDelegate$LoaderManager;->z:I

    const/4 v7, 0x0

    const-string v8, "type"

    invoke-static {v1, v0, v8, v5, v7}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    .line 112
    sget v8, Lo/AccessibilityDelegate$LoaderManager;->w:I

    const-string v13, "startColor"

    invoke-static {v1, v0, v13, v8, v7}, Lo/ViewParent;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    const-string v13, "centerColor"

    .line 114
    invoke-static {v0, v13}, Lo/ViewParent;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    .line 115
    sget v2, Lo/AccessibilityDelegate$LoaderManager;->G:I

    invoke-static {v1, v0, v13, v2, v7}, Lo/ViewParent;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 117
    sget v13, Lo/AccessibilityDelegate$LoaderManager;->v:I

    const-string v3, "endColor"

    invoke-static {v1, v0, v3, v13, v7}, Lo/ViewParent;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 119
    sget v13, Lo/AccessibilityDelegate$LoaderManager;->C:I

    const-string v4, "tileMode"

    invoke-static {v1, v0, v4, v13, v7}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    .line 121
    sget v7, Lo/AccessibilityDelegate$LoaderManager;->D:I

    const-string v13, "gradientRadius"

    move/from16 v17, v14

    const/4 v14, 0x0

    invoke-static {v1, v0, v13, v7, v14}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    .line 123
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-static/range {p0 .. p3}, Lo/ViewPropertyAnimator;->e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/ViewPropertyAnimator$ActionBar;

    move-result-object v0

    .line 126
    invoke-static {v0, v8, v3, v6, v2}, Lo/ViewPropertyAnimator;->e(Lo/ViewPropertyAnimator$ActionBar;IIZI)Lo/ViewPropertyAnimator$ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v5, v1, :cond_1

    const/4 v1, 0x2

    if-eq v5, v1, :cond_0

    .line 141
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v13, v0, Lo/ViewPropertyAnimator$ActionBar;->d:[I

    iget-object v14, v0, Lo/ViewPropertyAnimator$ActionBar;->a:[F

    .line 142
    invoke-static {v4}, Lo/ViewPropertyAnimator;->c(I)Landroid/graphics/Shader$TileMode;

    move-result-object v15

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v1

    .line 137
    :cond_0
    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, v0, Lo/ViewPropertyAnimator$ActionBar;->d:[I

    iget-object v0, v0, Lo/ViewPropertyAnimator$ActionBar;->a:[F

    move/from16 v3, v17

    invoke-direct {v1, v3, v15, v2, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    return-object v1

    :cond_1
    move/from16 v3, v17

    const/4 v1, 0x0

    cmpg-float v1, v7, v1

    if-lez v1, :cond_2

    .line 134
    new-instance v1, Landroid/graphics/RadialGradient;

    iget-object v2, v0, Lo/ViewPropertyAnimator$ActionBar;->d:[I

    iget-object v0, v0, Lo/ViewPropertyAnimator$ActionBar;->a:[F

    .line 135
    invoke-static {v4}, Lo/ViewPropertyAnimator;->c(I)Landroid/graphics/Shader$TileMode;

    move-result-object v19

    move-object v13, v1

    move v14, v3

    move/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v1

    .line 131
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": invalid gradient color tag "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static c(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 209
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 206
    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 204
    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private static e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/ViewPropertyAnimator$ActionBar;
    .locals 8

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ge v5, v0, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_5

    :cond_1
    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    goto :goto_0

    :cond_2
    if-gt v5, v0, :cond_0

    .line 163
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 167
    :cond_3
    sget-object v3, Lo/AccessibilityDelegate$LoaderManager;->K:[I

    invoke-static {p0, p3, p2, v3}, Lo/ViewParent;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 169
    sget v5, Lo/AccessibilityDelegate$LoaderManager;->N:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    .line 170
    sget v6, Lo/AccessibilityDelegate$LoaderManager;->J:I

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 178
    sget v5, Lo/AccessibilityDelegate$LoaderManager;->N:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 179
    sget v6, Lo/AccessibilityDelegate$LoaderManager;->J:I

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 180
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    new-instance p0, Lo/ViewPropertyAnimator$ActionBar;

    invoke-direct {p0, v4, v2}, Lo/ViewPropertyAnimator$ActionBar;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Lo/ViewPropertyAnimator$ActionBar;IIZI)Lo/ViewPropertyAnimator$ActionBar;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    .line 195
    new-instance p0, Lo/ViewPropertyAnimator$ActionBar;

    invoke-direct {p0, p1, p4, p2}, Lo/ViewPropertyAnimator$ActionBar;-><init>(III)V

    return-object p0

    .line 197
    :cond_1
    new-instance p0, Lo/ViewPropertyAnimator$ActionBar;

    invoke-direct {p0, p1, p2}, Lo/ViewPropertyAnimator$ActionBar;-><init>(II)V

    return-object p0
.end method
