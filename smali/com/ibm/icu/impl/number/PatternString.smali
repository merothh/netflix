.class public Lcom/ibm/icu/impl/number/PatternString;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I
    .locals 7

    if-eqz p0, :cond_0

    .line 245
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, " "

    .line 246
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 247
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "\'\'"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const-string v1, "\'"

    .line 248
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 251
    :cond_2
    invoke-virtual {p1, p2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v1, 0x27

    .line 254
    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 256
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 258
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_4

    add-int v5, p2, v3

    .line 260
    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_4
    add-int v6, p2, v3

    .line 263
    invoke-virtual {p1, v6, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr p2, v3

    .line 267
    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 269
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public static parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/number/PatternString;->parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V

    return-void
.end method

.method public static parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V
    .locals 0

    .line 51
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser;->parse(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V

    return-void
.end method

.method public static parseToProperties(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/number/PatternString;->parseToProperties(Ljava/lang/String;Z)Lcom/ibm/icu/impl/number/Properties;

    move-result-object p0

    return-object p0
.end method

.method public static parseToProperties(Ljava/lang/String;Z)Lcom/ibm/icu/impl/number/Properties;
    .locals 1

    .line 27
    new-instance v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    .line 28
    invoke-static {p0, v0, p1}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser;->parse(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V

    return-object v0
.end method

.method public static propertiesToString(Lcom/ibm/icu/impl/number/Properties;)Ljava/lang/String;
    .locals 28

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getSecondaryGroupingSize()I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getGroupingSize()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getFormatWidth()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPadPosition()Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    move-result-object v5

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPadString()Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMinimumIntegerDigits()I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMaximumIntegerDigits()I

    move-result v9

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMinimumFractionDigits()I

    move-result v10

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMaximumFractionDigits()I

    move-result v11

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMinimumSignificantDigits()I

    move-result v12

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMaximumSignificantDigits()I

    move-result v13

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getDecimalSeparatorAlwaysShown()Z

    move-result v14

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMinimumExponentDigits()I

    move-result v15

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getExponentSignAlwaysShown()Z

    move-result v16

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPositivePrefix()Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v6

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v5

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v5

    move/from16 v19, v4

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v4

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-static {v8, v0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v8, -0x1

    move/from16 v24, v2

    move-object/from16 v23, v4

    const/16 v4, 0x64

    .line 104
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 105
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eq v3, v2, :cond_1

    if-eq v1, v3, :cond_1

    move v2, v1

    goto :goto_1

    .line 110
    :cond_1
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eq v1, v2, :cond_2

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 114
    :cond_2
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eq v3, v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    add-int/2addr v1, v3

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v4

    move-object/from16 v25, v6

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v5

    move/from16 v27, v15

    const/16 v5, 0x64

    .line 129
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/16 v5, 0x23

    if-eq v13, v15, :cond_5

    .line 131
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v12, :cond_4

    const/16 v4, 0x40

    .line 132
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 134
    :cond_4
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v13, :cond_7

    .line 135
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 137
    :cond_5
    sget-object v12, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_ROUNDING_INCREMENT:Ljava/math/BigDecimal;

    if-eq v4, v12, :cond_7

    .line 139
    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v12

    neg-int v12, v12

    .line 141
    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    .line 142
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v13, 0x27

    if-ne v15, v13, :cond_6

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x1

    invoke-virtual {v6, v4, v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 146
    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    .line 149
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v12

    const/16 v13, 0x30

    if-ge v4, v7, :cond_8

    const/4 v4, 0x0

    .line 150
    invoke-virtual {v6, v4, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    :goto_5
    neg-int v4, v12

    if-ge v4, v10, :cond_9

    .line 153
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    .line 158
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v12

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v4, 0x64

    if-eq v9, v4, :cond_a

    .line 159
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_a
    const/4 v7, 0x1

    sub-int/2addr v1, v7

    if-eq v11, v4, :cond_b

    neg-int v4, v11

    .line 160
    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_6

    :cond_b
    move v4, v12

    :goto_6
    if-lt v1, v4, :cond_12

    .line 162
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v7, v12

    sub-int/2addr v7, v1

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    if-ltz v7, :cond_d

    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lt v7, v9, :cond_c

    goto :goto_7

    .line 166
    :cond_c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 164
    :cond_d
    :goto_7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    const/16 v7, 0x2c

    if-le v1, v3, :cond_e

    if-lez v2, :cond_e

    sub-int v9, v1, v3

    .line 168
    rem-int/2addr v9, v2

    if-nez v9, :cond_e

    .line 169
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    if-lez v1, :cond_f

    if-ne v1, v3, :cond_f

    .line 171
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_f
    if-nez v1, :cond_11

    if-nez v14, :cond_10

    if-gez v4, :cond_11

    :cond_10
    const/16 v7, 0x2e

    .line 173
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    :goto_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_12
    const/16 v1, 0x64

    .line 178
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v2, v27

    if-eq v2, v1, :cond_14

    const/16 v1, 0x45

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_13

    const/16 v1, 0x2b

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_14

    .line 184
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 189
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v26, :cond_15

    move-object/from16 v2, v26

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    move-object/from16 v2, v25

    .line 191
    invoke-static {v2, v0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    if-eqz v19, :cond_1b

    .line 195
    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v4, v19, v2

    if-lez v4, :cond_16

    move/from16 v2, v24

    .line 196
    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    move/from16 v2, v24

    .line 200
    sget-object v3, Lcom/ibm/icu/impl/number/PatternString$1;->$SwitchMap$com$ibm$icu$impl$number$formatters$PaddingFormat$PadPosition:[I

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x2a

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1a

    const/4 v5, 0x2

    if-eq v3, v5, :cond_19

    const/4 v5, 0x3

    if-eq v3, v5, :cond_18

    const/4 v5, 0x4

    if-eq v3, v5, :cond_17

    goto :goto_c

    .line 218
    :cond_17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v5, v17

    invoke-static {v5, v0, v3}, Lcom/ibm/icu/impl/number/PatternString;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    goto :goto_c

    :cond_18
    move-object/from16 v5, v17

    .line 214
    invoke-static {v5, v0, v1}, Lcom/ibm/icu/impl/number/PatternString;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    .line 215
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_19
    move-object/from16 v5, v17

    .line 208
    invoke-static {v5, v0, v2}, Lcom/ibm/icu/impl/number/PatternString;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move-result v3

    .line 209
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    add-int/2addr v1, v3

    goto :goto_c

    :cond_1a
    move-object/from16 v5, v17

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 202
    invoke-static {v5, v0, v3}, Lcom/ibm/icu/impl/number/PatternString;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move-result v5

    .line 203
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    add-int/2addr v1, v5

    goto :goto_c

    :cond_1b
    move/from16 v2, v24

    :goto_c
    if-nez v20, :cond_1d

    if-nez v22, :cond_1d

    if-nez v21, :cond_1c

    if-nez v23, :cond_1d

    :cond_1c
    if-eqz v21, :cond_21

    .line 229
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    move-object/from16 v3, v21

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_d

    :cond_1d
    move-object/from16 v3, v21

    :cond_1e
    :goto_d
    const/16 v4, 0x3b

    .line 230
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1f

    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    move-object/from16 v3, v20

    .line 232
    invoke-static {v3, v0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 235
    invoke-virtual {v0, v0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-eqz v23, :cond_20

    move-object/from16 v1, v23

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    move-object/from16 v1, v22

    .line 237
    invoke-static {v1, v0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 240
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
