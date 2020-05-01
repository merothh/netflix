.class public Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final prefixLengthLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 63
    invoke-direct {p0, v0}, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;->prefixLengthLimit:I

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 9

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 113
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v0

    const/4 v3, 0x0

    .line 114
    aget v3, v0, v3

    int-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    .line 116
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 118
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    int-to-double v5, p1

    div-double v5, v3, v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    int-to-double p1, p1

    div-double p1, v3, p1

    add-double/2addr v5, p1

    const/4 p1, 0x1

    aget p1, v0, p1

    int-to-double p1, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v7

    sub-double p1, v3, p1

    div-double/2addr p1, v3

    add-double/2addr v5, p1

    const-wide/high16 p1, 0x4008000000000000L    # 3.0

    div-double/2addr v5, p1

    const-wide p1, 0x3fe6666666666666L    # 0.7

    cmpg-double v3, v5, p1

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    const-wide p1, 0x3fb999999999999aL    # 0.1

    const/4 v3, 0x2

    .line 119
    aget v0, v0, v3

    int-to-double v3, v0

    mul-double v3, v3, p1

    sub-double/2addr v1, v5

    mul-double v3, v3, v1

    add-double/2addr v5, v3

    .line 120
    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 106
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CharSequences must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 15

    .line 132
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    .line 139
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 140
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v7, -0x1

    .line 141
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 142
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    new-array v8, v8, [Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 144
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v9, v11, :cond_3

    .line 145
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    sub-int v12, v9, v2

    .line 146
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v13, v9, v2

    add-int/2addr v13, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    :goto_2
    if-ge v12, v13, :cond_2

    .line 147
    aget-boolean v14, v8, v12

    if-nez v14, :cond_1

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v11, v14, :cond_1

    .line 148
    aput v12, v6, v9

    .line 149
    aput-boolean v4, v8, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 155
    :cond_3
    new-array v2, v10, [C

    .line 156
    new-array v9, v10, [C

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 157
    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ge v11, v13, :cond_5

    .line 158
    aget v13, v6, v11

    if-eq v13, v7, :cond_4

    .line 159
    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    aput-char v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 163
    :goto_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 164
    aget-boolean v11, v8, v6

    if-eqz v11, :cond_6

    .line 165
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput-char v11, v9, v7

    add-int/lit8 v7, v7, 0x1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 170
    :goto_6
    array-length v7, v2

    if-ge v0, v7, :cond_9

    .line 171
    aget-char v7, v2, v0

    aget-char v8, v9, v0

    if-eq v7, v8, :cond_8

    add-int/lit8 v6, v6, 0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 176
    :goto_7
    iget v8, v0, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;->prefixLengthLimit:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v2, v8, :cond_a

    move-object/from16 v8, p1

    .line 177
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move-object/from16 v11, p2

    invoke-interface {v11, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v9, v12, :cond_a

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    const/4 v1, 0x3

    new-array v1, v1, [I

    aput v10, v1, v5

    aput v6, v1, v4

    aput v7, v1, v3

    return-object v1
.end method
