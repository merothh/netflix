.class public Lo/ra;
.super Lcom/google/android/exoplayer2/ui/SubtitleView;
.source ""

# interfaces
.implements Lo/Cj;


# instance fields
.field private b:Z

.field private c:Landroid/view/ViewGroup;

.field private d:Z

.field private e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lo/ra;->b:Z

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lo/ra;->d:Z

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 124
    iget-object v0, p0, Lo/ra;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ra;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    mul-int p1, p1, v0

    iget-object v0, p0, Lo/ra;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    sget-object v0, Lo/qW;->a:Lo/qW;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static synthetic c(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/text/Cue;)I
    .locals 2

    .line 207
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue;->line:F

    iget v1, p1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue;->line:F

    iget p1, p1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/text/Cue;)I
    .locals 0

    invoke-static {p0, p1}, Lo/ra;->c(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/text/Cue;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v9, p0

    .line 68
    iget v0, v9, Lo/ra;->textSizeType:I

    iget v1, v9, Lo/ra;->textSize:F

    invoke-virtual {v9, v0, v1}, Lo/ra;->getSubtitleSizePx(IF)F

    move-result v10

    const/4 v0, 0x0

    cmpg-float v0, v10, v0

    if-gtz v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, v9, Lo/ra;->cues:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v9, Lo/ra;->cues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v11, v0

    :goto_0
    if-nez v11, :cond_2

    return-void

    .line 79
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lo/ra;->getLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/ra;->getPaddingLeft()I

    move-result v2

    add-int v12, v0, v2

    .line 80
    invoke-virtual/range {p0 .. p0}, Lo/ra;->getTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/ra;->getPaddingTop()I

    move-result v2

    add-int v13, v0, v2

    .line 81
    invoke-virtual/range {p0 .. p0}, Lo/ra;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/ra;->getPaddingRight()I

    move-result v2

    sub-int v14, v0, v2

    .line 82
    invoke-virtual/range {p0 .. p0}, Lo/ra;->getBottom()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/ra;->getPaddingBottom()I

    move-result v2

    sub-int v15, v0, v2

    .line 83
    invoke-direct {v9, v15}, Lo/ra;->a(I)I

    move-result v8

    move v6, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_5

    .line 86
    iget-object v0, v9, Lo/ra;->cues:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/Cue;

    .line 87
    iget-object v1, v9, Lo/ra;->painters:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lo/qT;

    .line 88
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    if-ge v6, v8, :cond_3

    .line 91
    new-instance v1, Lcom/google/android/exoplayer2/text/Cue;

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    sub-int/2addr v6, v13

    int-to-float v4, v6

    sub-int v5, v8, v13

    int-to-float v5, v5

    div-float v20, v4, v5

    iget v4, v0, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    const/16 v22, 0x2

    iget v5, v0, Lcom/google/android/exoplayer2/text/Cue;->position:F

    iget v6, v0, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    move/from16 v28, v7

    iget v7, v0, Lcom/google/android/exoplayer2/text/Cue;->size:F

    move/from16 v29, v8

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    iget v0, v0, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v0

    invoke-direct/range {v17 .. v27}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    move-object v2, v1

    goto :goto_2

    :cond_3
    move/from16 v28, v7

    move/from16 v29, v8

    move-object v2, v0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v3, p1

    move v4, v10

    move v5, v12

    move v6, v13

    move/from16 v17, v28

    move v7, v14

    move/from16 v18, v29

    move/from16 v8, v18

    .line 93
    invoke-virtual/range {v0 .. v8}, Lo/ra;->drawWithPainter(Lcom/google/android/exoplayer2/ui/SubtitlePainter;Lcom/google/android/exoplayer2/text/Cue;Landroid/graphics/Canvas;FIIII)V

    .line 94
    invoke-virtual/range {v16 .. v16}, Lo/qT;->b()I

    move-result v0

    move v6, v0

    goto :goto_3

    :cond_4
    move/from16 v17, v7

    move/from16 v18, v8

    .line 97
    new-instance v2, Lcom/google/android/exoplayer2/text/Cue;

    iget-object v1, v0, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iget v3, v0, Lcom/google/android/exoplayer2/text/Cue;->position:F

    iget v4, v0, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    int-to-float v5, v8

    iget v7, v0, Lcom/google/android/exoplayer2/text/Cue;->line:F

    mul-float v5, v5, v7

    int-to-float v7, v15

    div-float v23, v5, v7

    iget v5, v0, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    iget v7, v0, Lcom/google/android/exoplayer2/text/Cue;->size:F

    iget v0, v0, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    move-object/from16 v19, v2

    move-object/from16 v20, v1

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v24, v5

    move/from16 v25, v7

    move/from16 v26, v0

    invoke-direct/range {v19 .. v26}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v3, p1

    move v4, v10

    move v5, v12

    move/from16 v16, v6

    move v6, v13

    move v7, v14

    move v8, v15

    .line 98
    invoke-virtual/range {v0 .. v8}, Lo/ra;->drawWithPainter(Lcom/google/android/exoplayer2/ui/SubtitlePainter;Lcom/google/android/exoplayer2/text/Cue;Landroid/graphics/Canvas;FIIII)V

    move/from16 v6, v16

    :goto_3
    add-int/lit8 v7, v17, 0x1

    move/from16 v8, v18

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public e(Landroid/graphics/Rect;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lo/ra;->setPaddingRelative(IIII)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)V
    .locals 19

    move-object/from16 v0, p0

    .line 144
    invoke-static/range {p1 .. p1}, Lo/xM;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lo/xM;

    move-result-object v1

    .line 145
    invoke-static/range {p2 .. p2}, Lo/xM;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lo/xM;

    move-result-object v2

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {v1, v2}, Lo/xM;->a(Lo/xM;)V

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 153
    :cond_2
    invoke-virtual {v1}, Lo/xM;->i()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1}, Lo/xM;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->c(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 154
    invoke-virtual {v1}, Lo/xM;->j()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Lo/xM;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->c(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 155
    invoke-virtual {v1}, Lo/xM;->h()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1}, Lo/xM;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->c(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 156
    invoke-virtual {v1}, Lo/xM;->a()Lo/xI;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 157
    :cond_3
    invoke-static {}, Lo/xI;->d()Lo/xI;

    move-result-object v5

    .line 159
    :goto_1
    sget-object v6, Lo/ra$3;->b:[I

    invoke-virtual {v5}, Lo/xI;->b()Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v6, v10, :cond_7

    if-eq v6, v9, :cond_6

    if-eq v6, v8, :cond_5

    if-eq v6, v7, :cond_4

    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    const/16 v16, 0x2

    goto :goto_2

    :cond_5
    const/16 v16, 0x1

    goto :goto_2

    :cond_6
    const/16 v16, 0x4

    goto :goto_2

    :cond_7
    const/16 v16, 0x3

    :goto_2
    const/4 v6, 0x0

    .line 177
    invoke-virtual {v5}, Lo/xI;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->c(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 178
    invoke-virtual {v1}, Lo/xM;->g()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v6

    if-eqz v6, :cond_8

    goto :goto_3

    .line 179
    :cond_8
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->d:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 180
    :goto_3
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->b()Landroid/graphics/Typeface;

    move-result-object v6

    .line 181
    invoke-virtual {v1}, Lo/xM;->b()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4

    .line 182
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v1, v7

    :goto_4
    const v7, 0x3d5a511a    # 0.0533f

    mul-float v1, v1, v7

    .line 184
    new-instance v7, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    if-eqz v2, :cond_a

    .line 185
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v13, v2

    goto :goto_5

    :cond_a
    const/4 v2, -0x1

    const/4 v13, -0x1

    :goto_5
    if-eqz v3, :cond_b

    .line 186
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v14, v2

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_6
    if-eqz v4, :cond_c

    .line 187
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v15, v2

    goto :goto_7

    :cond_c
    const/4 v15, 0x0

    :goto_7
    if-eqz v5, :cond_d

    .line 189
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v17, v2

    goto :goto_8

    :cond_d
    const/high16 v2, -0x1000000

    const/high16 v17, -0x1000000

    :goto_8
    if-eqz v6, :cond_e

    move-object/from16 v18, v6

    goto :goto_9

    :cond_e
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v18, v2

    :goto_9
    move-object v12, v7

    invoke-direct/range {v12 .. v18}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 191
    invoke-virtual {v0, v7}, Lo/ra;->setStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)V

    .line 192
    invoke-virtual {v0, v1}, Lo/ra;->setFractionalTextSize(F)V

    .line 194
    invoke-virtual {v0, v11}, Lo/ra;->setApplyEmbeddedStyles(Z)V

    return-void
.end method

.method public getSubtitleSizePx(IF)F
    .locals 7

    .line 106
    invoke-virtual {p0}, Lo/ra;->getTop()I

    move-result v0

    .line 107
    invoke-virtual {p0}, Lo/ra;->getBottom()I

    move-result v1

    .line 108
    invoke-virtual {p0}, Lo/ra;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lo/ra;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 109
    invoke-virtual {p0}, Lo/ra;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    .line 110
    invoke-virtual {p0}, Lo/ra;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lo/ra;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 111
    invoke-virtual {p0}, Lo/ra;->getPaddingBottom()I

    move-result v5

    sub-int v5, v1, v5

    if-le v5, v3, :cond_3

    if-gt v4, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    sub-int/2addr v5, v3

    sub-int/2addr v4, v2

    .line 119
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lo/ra;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lo/ra;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    mul-float p2, p2, p1

    :goto_1
    return p2

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public setCues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-boolean v0, p0, Lo/ra;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ra;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/ra;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 40
    iget-object p1, p0, Lo/ra;->cues:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/ra;->cues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 41
    iget-object p1, p0, Lo/ra;->cues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 42
    invoke-virtual {p0}, Lo/ra;->invalidate()V

    :cond_2
    return-void

    .line 47
    :cond_3
    iget-object v0, p0, Lo/ra;->cues:Ljava/util/List;

    if-ne v0, p1, :cond_4

    return-void

    .line 51
    :cond_4
    invoke-direct {p0, p1}, Lo/ra;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/ra;->cues:Ljava/util/List;

    if-nez p1, :cond_5

    goto :goto_1

    .line 53
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 54
    :goto_1
    iget-object p1, p0, Lo/ra;->painters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_7

    .line 55
    iget-boolean p1, p0, Lo/ra;->d:Z

    if-eqz p1, :cond_6

    .line 56
    iget-object p1, p0, Lo/ra;->painters:Ljava/util/List;

    new-instance v0, Lo/qN;

    invoke-virtual {p0}, Lo/ra;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/qN;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_6
    iget-object p1, p0, Lo/ra;->painters:Ljava/util/List;

    new-instance v0, Lo/qT;

    invoke-virtual {p0}, Lo/ra;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/qT;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_7
    invoke-virtual {p0}, Lo/ra;->invalidate()V

    return-void
.end method

.method public setHDR10ColorOverride(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lo/ra;->d:Z

    return-void
.end method

.method public setSubtitleDisplayArea(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 132
    iput-object p2, p0, Lo/ra;->c:Landroid/view/ViewGroup;

    .line 133
    iput-object p1, p0, Lo/ra;->e:Landroid/view/ViewGroup;

    return-void
.end method
