.class public Lo/qN;
.super Lo/qT;
.source ""


# static fields
.field private static a:D

.field static c:Landroid/graphics/ColorMatrixColorFilter;

.field static final d:[F


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 12
    fill-array-data v0, :array_0

    sput-object v0, Lo/qN;->d:[F

    const-wide v0, 0x3fe6666666666666L    # 0.7

    .line 18
    sput-wide v0, Lo/qN;->a:D

    .line 19
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v1, Lo/qN;->d:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lo/qN;->c:Landroid/graphics/ColorMatrixColorFilter;

    return-void

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f333333    # 0.7f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f333333    # 0.7f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lo/qT;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static b(I)I
    .locals 7

    .line 53
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 54
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 55
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 56
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-double v3, v0

    .line 57
    sget-wide v5, Lo/qN;->a:D

    mul-double v3, v3, v5

    double-to-int v0, v3

    int-to-double v3, v1

    mul-double v3, v3, v5

    double-to-int v1, v3

    int-to-double v2, v2

    mul-double v2, v2, v5

    double-to-int v2, v2

    .line 60
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(Lcom/google/android/exoplayer2/text/Cue;ZZLcom/google/android/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V
    .locals 13

    move-object v12, p0

    move-object/from16 v0, p4

    move-object v1, p1

    .line 31
    iget-object v2, v1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 32
    new-instance v10, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v2, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    .line 33
    invoke-static {v2}, Lo/qN;->b(I)I

    move-result v4

    iget v2, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    .line 34
    invoke-static {v2}, Lo/qN;->b(I)I

    move-result v5

    iget v2, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    .line 35
    invoke-static {v2}, Lo/qN;->b(I)I

    move-result v6

    iget v7, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    iget v8, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v4, v10

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 39
    invoke-super/range {v0 .. v11}, Lo/qT;->draw(Lcom/google/android/exoplayer2/text/Cue;ZZLcom/google/android/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V

    return-void

    .line 43
    :cond_0
    iget-boolean v2, v12, Lo/qN;->b:Z

    if-nez v2, :cond_1

    .line 44
    iget-object v2, v12, Lo/qN;->bitmapPaint:Landroid/graphics/Paint;

    sget-object v3, Lo/qN;->c:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x1

    .line 45
    iput-boolean v2, v12, Lo/qN;->b:Z

    .line 48
    :cond_1
    invoke-super/range {p0 .. p11}, Lo/qT;->draw(Lcom/google/android/exoplayer2/text/Cue;ZZLcom/google/android/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V

    return-void
.end method
