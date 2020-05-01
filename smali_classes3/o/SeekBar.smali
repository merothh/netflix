.class public final Lo/SeekBar;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SeekBar$StateListAnimator;,
        Lo/SeekBar$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/SeekBar$Activity;

.field private static final v:Z = false


# instance fields
.field private final a:I

.field private final b:Lo/SeekBar$StateListAnimator;

.field private final d:I

.field private e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Landroid/text/TextPaint;

.field private k:I

.field private final l:Landroid/graphics/Paint;

.field private m:Z

.field private final n:Landroid/graphics/Paint;

.field private final o:Lo/VideoView2;

.field private final p:I

.field private final q:Landroid/graphics/PointF;

.field private r:I

.field private final s:I

.field private t:F

.field private final u:Landroid/graphics/Typeface;

.field private final w:I

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/SeekBar$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SeekBar$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/SeekBar;->c:Lo/SeekBar$Activity;

    return-void
.end method

.method public constructor <init>(IIIIIIIIILandroid/graphics/Typeface;IZ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Lo/SeekBar;->p:I

    iput p3, p0, Lo/SeekBar;->s:I

    iput p4, p0, Lo/SeekBar;->w:I

    iput-object p10, p0, Lo/SeekBar;->u:Landroid/graphics/Typeface;

    iput-boolean p12, p0, Lo/SeekBar;->y:Z

    .line 43
    iput p2, p0, Lo/SeekBar;->e:I

    .line 54
    new-instance p1, Lo/SeekBar$StateListAnimator;

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x3

    const/4 p10, 0x0

    invoke-direct {p1, p2, p3, p4, p10}, Lo/SeekBar$StateListAnimator;-><init>(FIILo/amc;)V

    iput-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    int-to-float p1, p5

    .line 57
    sget-boolean p2, Lo/SeekBar;->v:Z

    const/4 p3, 0x2

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lo/SeekBar;->d:I

    int-to-float p1, p6

    .line 60
    sget-boolean p2, Lo/SeekBar;->v:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lo/SeekBar;->a:I

    int-to-float p1, p7

    .line 63
    sget-boolean p2, Lo/SeekBar;->v:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    :goto_2
    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lo/SeekBar;->h:I

    int-to-float p1, p8

    .line 66
    sget-boolean p2, Lo/SeekBar;->v:Z

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 p3, 0x1

    :goto_3
    int-to-float p2, p3

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lo/SeekBar;->i:I

    .line 69
    iput p9, p0, Lo/SeekBar;->g:I

    .line 72
    iget p1, p0, Lo/SeekBar;->p:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lo/SeekBar;->f:I

    .line 74
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    .line 75
    iget p2, p0, Lo/SeekBar;->s:I

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 76
    iget p2, p0, Lo/SeekBar;->w:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 77
    iget-object p2, p0, Lo/SeekBar;->u:Landroid/graphics/Typeface;

    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 74
    :cond_4
    iput-object p1, p0, Lo/SeekBar;->j:Landroid/text/TextPaint;

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 81
    iget p2, p0, Lo/SeekBar;->p:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p4

    .line 422
    sget-object p3, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 423
    const-class p3, Landroid/content/Context;

    invoke-static {p3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string p5, "Lookup.get<Context>().resources"

    invoke-static {p3, p5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 422
    invoke-static {p4, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    .line 82
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iput-object p1, p0, Lo/SeekBar;->l:Landroid/graphics/Paint;

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 88
    iget p3, p0, Lo/SeekBar;->e:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    sget-object p3, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 425
    const-class p3, Landroid/content/Context;

    invoke-static {p3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, p5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 424
    invoke-static {p4, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iput-object p1, p0, Lo/SeekBar;->n:Landroid/graphics/Paint;

    .line 94
    invoke-static {p11}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p1

    iput-object p1, p0, Lo/SeekBar;->o:Lo/VideoView2;

    .line 116
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lo/SeekBar;->q:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIIIILandroid/graphics/Typeface;IZILo/amc;)V
    .locals 14

    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    move/from16 v13, p12

    :goto_0
    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 32
    invoke-direct/range {v1 .. v13}, Lo/SeekBar;-><init>(IIIIIIIIILandroid/graphics/Typeface;IZ)V

    return-void
.end method

.method private final a(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/Paint;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 156
    iget v0, v6, Lo/SeekBar;->i:I

    iget v1, v6, Lo/SeekBar;->a:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v10, v0

    int-to-float v0, v8

    .line 157
    iget v1, v6, Lo/SeekBar;->t:F

    add-float/2addr v0, v1

    const/4 v11, 0x1

    int-to-float v3, v11

    add-float/2addr v3, v0

    mul-float v12, v3, v10

    int-to-float v3, v9

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    mul-float v5, v5, v10

    neg-float v13, v10

    div-float v14, v13, v4

    add-float/2addr v14, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v15, v0, v5

    neg-float v15, v15

    mul-float v15, v15, v10

    add-int/lit8 v11, v9, -0x1

    const/16 v16, 0x3

    const/4 v2, 0x4

    const/16 v19, 0x0

    if-ge v9, v2, :cond_1

    .line 176
    sget-object v0, Lo/SeekBar;->c:Lo/SeekBar$Activity;

    check-cast v0, Lo/MessagePdu;

    sub-float v0, v12, v10

    .line 178
    rem-int/lit8 v1, v9, 0x2

    if-nez v1, :cond_0

    div-float v1, v10, v4

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    sub-float/2addr v0, v1

    :goto_1
    move v13, v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    goto :goto_3

    :cond_1
    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v20, v0, v17

    if-gez v20, :cond_3

    .line 180
    sget-object v0, Lo/SeekBar;->c:Lo/SeekBar$Activity;

    check-cast v0, Lo/MessagePdu;

    const/16 v16, 0x5

    const/high16 v0, -0x40000000    # -2.0f

    if-ne v9, v2, :cond_2

    mul-float v0, v0, v10

    mul-float v1, v1, v10

    add-float/2addr v0, v1

    div-float v1, v10, v4

    goto :goto_2

    :cond_2
    mul-float v0, v0, v10

    mul-float v1, v1, v10

    :goto_2
    add-float/2addr v0, v1

    move v13, v0

    const/4 v2, 0x0

    const/4 v3, 0x5

    :goto_3
    const/4 v4, 0x2

    goto/16 :goto_7

    :cond_3
    cmpg-float v20, v0, v4

    if-gez v20, :cond_5

    .line 189
    sget-object v0, Lo/SeekBar;->c:Lo/SeekBar$Activity;

    check-cast v0, Lo/MessagePdu;

    if-ne v9, v2, :cond_4

    mul-float v1, v1, v10

    add-float/2addr v13, v1

    div-float v0, v10, v4

    add-float/2addr v0, v13

    goto :goto_4

    :cond_4
    mul-float v1, v1, v10

    add-float v0, v13, v1

    :goto_4
    move v13, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    goto :goto_3

    :cond_5
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v13, v3, v13

    cmpl-float v13, v0, v13

    if-ltz v13, :cond_7

    .line 198
    sget-object v0, Lo/SeekBar;->c:Lo/SeekBar$Activity;

    check-cast v0, Lo/MessagePdu;

    if-ne v9, v2, :cond_6

    mul-float v0, v10, v4

    mul-float v1, v1, v10

    add-float/2addr v0, v1

    div-float v1, v10, v4

    sub-float/2addr v0, v1

    goto :goto_5

    :cond_6
    mul-float v4, v4, v10

    mul-float v1, v1, v10

    add-float v0, v4, v1

    :goto_5
    move v13, v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x4

    goto :goto_7

    :cond_7
    sub-float v13, v3, v4

    cmpl-float v13, v0, v13

    if-ltz v13, :cond_9

    .line 207
    sget-object v0, Lo/SeekBar;->c:Lo/SeekBar$Activity;

    check-cast v0, Lo/MessagePdu;

    if-ne v9, v2, :cond_8

    mul-float v1, v1, v10

    add-float/2addr v1, v10

    div-float v0, v10, v4

    sub-float v0, v1, v0

    goto :goto_6

    :cond_8
    mul-float v1, v1, v10

    add-float v0, v10, v1

    :goto_6
    move v13, v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x3

    goto :goto_7

    :cond_9
    const/high16 v2, 0x40400000    # 3.0f

    sub-float/2addr v3, v2

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_a

    .line 216
    sget-object v0, Lo/SeekBar;->c:Lo/SeekBar$Activity;

    check-cast v0, Lo/MessagePdu;

    mul-float v0, v1, v10

    goto/16 :goto_1

    .line 220
    :cond_a
    sget-object v0, Lo/SeekBar;->c:Lo/SeekBar$Activity;

    check-cast v0, Lo/MessagePdu;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v13, 0x0

    .line 225
    :goto_7
    sget-boolean v0, Lo/SeekBar;->v:Z

    if-eqz v0, :cond_b

    .line 226
    sget-object v0, Lo/SeekBar;->c:Lo/SeekBar$Activity;

    check-cast v0, Lo/MessagePdu;

    :cond_b
    if-ltz v11, :cond_e

    const/4 v1, 0x0

    .line 234
    :goto_8
    invoke-direct {v6, v1, v4, v3, v2}, Lo/SeekBar;->b(IIIZ)Lo/SeekBar$StateListAnimator;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lo/SeekBar$StateListAnimator;->d()I

    move-result v16

    if-lez v16, :cond_d

    .line 237
    invoke-virtual {v0}, Lo/SeekBar$StateListAnimator;->d()I

    move-result v5

    move/from16 v17, v12

    move-object/from16 v12, p5

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-float v5, v14, v15

    add-float/2addr v5, v13

    move/from16 v18, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v2, v2

    mul-float v2, v2, v10

    add-float/2addr v5, v2

    const/4 v2, 0x0

    .line 239
    invoke-virtual {v7, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    sget-boolean v5, Lo/SeekBar;->v:Z

    if-eqz v5, :cond_c

    .line 241
    sget-object v5, Lo/SeekBar;->c:Lo/SeekBar$Activity;

    check-cast v5, Lo/MessagePdu;

    .line 248
    :cond_c
    iget v5, v6, Lo/SeekBar;->a:I

    int-to-float v5, v5

    invoke-direct {v6, v9, v5}, Lo/SeekBar;->b(IF)F

    move-result v5

    .line 249
    invoke-virtual {v0}, Lo/SeekBar$StateListAnimator;->e()F

    move-result v16

    move-object/from16 v0, p0

    move v12, v1

    move-object/from16 v1, p1

    move/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v2, p4

    move/from16 v20, v3

    move v3, v5

    move/from16 v21, v4

    move/from16 v4, v16

    const/4 v9, 0x0

    move-object/from16 v5, p5

    .line 246
    invoke-direct/range {v0 .. v5}, Lo/SeekBar;->d(Landroid/graphics/Canvas;Landroid/graphics/PointF;FFLandroid/graphics/Paint;)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    :cond_d
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v17, v12

    const/4 v9, 0x0

    move v12, v1

    :goto_9
    if-eq v12, v11, :cond_f

    add-int/lit8 v1, v12, 0x1

    move/from16 v9, p3

    move/from16 v12, v17

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    goto :goto_8

    :cond_e
    move/from16 v17, v12

    const/4 v9, 0x0

    .line 257
    :cond_f
    iget-boolean v0, v6, Lo/SeekBar;->y:Z

    if-eqz v0, :cond_10

    move/from16 v12, v17

    goto :goto_b

    :cond_10
    const/4 v0, 0x1

    add-int/2addr v0, v8

    int-to-float v0, v0

    mul-float v0, v0, v10

    .line 262
    iget v1, v6, Lo/SeekBar;->t:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    :goto_a
    add-float v12, v0, v10

    .line 264
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-float/2addr v14, v15

    add-float/2addr v14, v13

    add-float/2addr v14, v12

    .line 265
    invoke-virtual {v7, v14, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    iget v0, v6, Lo/SeekBar;->a:I

    int-to-float v0, v0

    move/from16 v1, p3

    invoke-direct {v6, v1, v0}, Lo/SeekBar;->b(IF)F

    move-result v3

    .line 269
    iget v0, v6, Lo/SeekBar;->a:I

    int-to-float v4, v0

    .line 270
    iget-object v5, v6, Lo/SeekBar;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 266
    invoke-direct/range {v0 .. v5}, Lo/SeekBar;->d(Landroid/graphics/Canvas;Landroid/graphics/PointF;FFLandroid/graphics/Paint;)V

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final b(IF)F
    .locals 4

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x2

    .line 351
    div-int/2addr v0, v1

    int-to-float v2, v1

    mul-float p2, p2, v2

    .line 352
    iget v3, p0, Lo/SeekBar;->i:I

    int-to-float v3, v3

    add-float/2addr p2, v3

    rsub-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float v0, v0, p2

    .line 354
    rem-int/2addr p1, v1

    if-nez p1, :cond_0

    div-float/2addr p2, v2

    sub-float/2addr v0, p2

    :cond_0
    return v0
.end method

.method private final b(IIIZ)Lo/SeekBar$StateListAnimator;
    .locals 5

    if-eqz p1, :cond_1

    .line 280
    iget v0, p0, Lo/SeekBar;->r:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/SeekBar;->h:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lo/SeekBar;->a:I

    .line 284
    :goto_1
    iget v1, p0, Lo/SeekBar;->k:I

    sub-int v2, v1, p2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_3

    if-eqz p4, :cond_2

    .line 287
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    iget p2, p0, Lo/SeekBar;->f:I

    int-to-float p2, p2

    iget p3, p0, Lo/SeekBar;->t:F

    sub-float p3, v3, p3

    mul-float p2, p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->b(I)V

    .line 289
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    int-to-float p2, v0

    iget p3, p0, Lo/SeekBar;->t:F

    sub-float/2addr v3, p3

    mul-float p2, p2, v3

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->e(F)V

    goto/16 :goto_3

    .line 292
    :cond_2
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    iget p2, p0, Lo/SeekBar;->f:I

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->b(I)V

    .line 293
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->e(F)V

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v2, p2, -0x1

    sub-int v2, v1, v2

    if-ne p1, v2, :cond_5

    if-eqz p4, :cond_4

    .line 298
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    iget p2, p0, Lo/SeekBar;->f:I

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->b(I)V

    .line 300
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    int-to-float p2, v0

    iget p3, p0, Lo/SeekBar;->a:I

    sub-int/2addr p3, v0

    int-to-float p3, p3

    iget p4, p0, Lo/SeekBar;->t:F

    sub-float/2addr v3, p4

    mul-float p3, p3, v3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->e(F)V

    goto/16 :goto_3

    .line 303
    :cond_4
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    iget p2, p0, Lo/SeekBar;->f:I

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->b(I)V

    .line 304
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    iget p2, p0, Lo/SeekBar;->a:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->e(F)V

    goto/16 :goto_3

    :cond_5
    add-int v2, v1, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne p1, v2, :cond_7

    if-eqz p4, :cond_6

    .line 312
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    iget p2, p0, Lo/SeekBar;->f:I

    int-to-float p2, p2

    iget p3, p0, Lo/SeekBar;->t:F

    mul-float p2, p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->b(I)V

    .line 314
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    int-to-float p2, v0

    iget p3, p0, Lo/SeekBar;->t:F

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->e(F)V

    goto :goto_3

    .line 317
    :cond_6
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    invoke-virtual {p1, v4}, Lo/SeekBar$StateListAnimator;->b(I)V

    .line 318
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    invoke-virtual {p1, v3}, Lo/SeekBar$StateListAnimator;->e(F)V

    goto :goto_3

    :cond_7
    add-int/lit8 v2, p3, -0x1

    add-int/2addr v2, v1

    if-ne p1, v2, :cond_9

    if-eqz p4, :cond_8

    .line 323
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    iget p2, p0, Lo/SeekBar;->f:I

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->b(I)V

    .line 325
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    int-to-float p2, v0

    iget p3, p0, Lo/SeekBar;->a:I

    sub-int/2addr p3, v0

    int-to-float p3, p3

    iget p4, p0, Lo/SeekBar;->t:F

    mul-float p3, p3, p4

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->e(F)V

    goto :goto_3

    .line 328
    :cond_8
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    iget p2, p0, Lo/SeekBar;->f:I

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->b(I)V

    .line 329
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->e(F)V

    goto :goto_3

    :cond_9
    sub-int p2, v1, p2

    if-lt p1, p2, :cond_b

    add-int/2addr v1, p3

    if-le p1, v1, :cond_a

    goto :goto_2

    .line 342
    :cond_a
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    iget p2, p0, Lo/SeekBar;->f:I

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->b(I)V

    .line 343
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    iget p2, p0, Lo/SeekBar;->a:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lo/SeekBar$StateListAnimator;->e(F)V

    goto :goto_3

    .line 335
    :cond_b
    :goto_2
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    invoke-virtual {p1, v4}, Lo/SeekBar$StateListAnimator;->b(I)V

    .line 336
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    invoke-virtual {p1, v3}, Lo/SeekBar$StateListAnimator;->e(F)V

    .line 346
    :goto_3
    iget-object p1, p0, Lo/SeekBar;->b:Lo/SeekBar$StateListAnimator;

    return-object p1
.end method

.method private final d(Landroid/graphics/Canvas;Landroid/graphics/PointF;FFLandroid/graphics/Paint;)V
    .locals 1

    .line 363
    iget v0, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p3

    .line 364
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 362
    invoke-virtual {p1, v0, p2, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 1

    .line 45
    iget v0, p0, Lo/SeekBar;->e:I

    if-eq p1, v0, :cond_0

    .line 46
    iput p1, p0, Lo/SeekBar;->e:I

    .line 47
    iget-object p1, p0, Lo/SeekBar;->n:Landroid/graphics/Paint;

    iget v0, p0, Lo/SeekBar;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-virtual {p0}, Lo/SeekBar;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lo/SeekBar;->m:Z

    const-string v1, "total"

    const-string v2, "current"

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lo/SeekBar;->o:Lo/VideoView2;

    iget v3, p0, Lo/SeekBar;->r:I

    iget v4, p0, Lo/SeekBar;->k:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    iget v2, p0, Lo/SeekBar;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lo/SeekBar;->o:Lo/VideoView2;

    iget v3, p0, Lo/SeekBar;->k:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    iget v2, p0, Lo/SeekBar;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    iget-object v1, p0, Lo/SeekBar;->j:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 129
    iget-boolean v2, p0, Lo/SeekBar;->m:Z

    if-eqz v2, :cond_1

    .line 130
    iget v1, p0, Lo/SeekBar;->d:I

    int-to-float v1, v1

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p0}, Lo/SeekBar;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v1, p0, Lo/SeekBar;->d:I

    int-to-float v1, v1

    sub-float v1, v2, v1

    .line 134
    :goto_1
    iget v2, p0, Lo/SeekBar;->d:I

    iget v3, p0, Lo/SeekBar;->w:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 135
    iget-object v3, p0, Lo/SeekBar;->j:Landroid/text/TextPaint;

    check-cast v3, Landroid/graphics/Paint;

    .line 127
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 138
    iget-object v0, p0, Lo/SeekBar;->q:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lo/SeekBar;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 139
    iget-object v0, p0, Lo/SeekBar;->q:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lo/SeekBar;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lo/SeekBar;->a:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lo/SeekBar;->g:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 142
    iget v4, p0, Lo/SeekBar;->k:I

    .line 143
    iget v5, p0, Lo/SeekBar;->r:I

    .line 144
    iget-object v6, p0, Lo/SeekBar;->q:Landroid/graphics/PointF;

    .line 145
    iget-object v7, p0, Lo/SeekBar;->l:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    .line 140
    invoke-direct/range {v2 .. v7}, Lo/SeekBar;->a(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final e(IIFZ)V
    .locals 0

    .line 106
    iput p1, p0, Lo/SeekBar;->k:I

    .line 107
    iput p2, p0, Lo/SeekBar;->r:I

    .line 108
    iput p3, p0, Lo/SeekBar;->t:F

    .line 109
    iput-boolean p4, p0, Lo/SeekBar;->m:Z

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
