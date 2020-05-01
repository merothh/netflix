.class Lcom/ibm/icu/text/CjkBreakEngine;
.super Lcom/ibm/icu/text/DictionaryBreakEngine;
.source ""


# static fields
.field private static final fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static final fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static final fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static final fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;


# instance fields
.field private fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 22
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 23
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 24
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 26
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[\\uac00-\\ud7a3]"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 27
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:Han:]"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 28
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[[:Katakana:]\\uff9e\\uff9f]"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 29
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:Hiragana:]"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 32
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 33
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 34
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 35
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/DictionaryBreakEngine;-><init>([Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/ibm/icu/text/CjkBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    const-string v0, "Hira"

    .line 42
    invoke-static {v0}, Lcom/ibm/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Lcom/ibm/icu/text/DictionaryMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CjkBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    if-eqz p1, :cond_0

    .line 44
    sget-object p1, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CjkBreakEngine;->setCharacters(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 47
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 48
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 49
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xff70

    .line 50
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x30fc

    .line 51
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 52
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CjkBreakEngine;->setCharacters(Lcom/ibm/icu/text/UnicodeSet;)V

    :goto_0
    return-void
.end method

.method private static getKatakanaCost(I)I
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 75
    fill-array-data v0, :array_0

    const/16 v1, 0x8

    if-le p0, v1, :cond_0

    const/16 p0, 0x2000

    goto :goto_0

    .line 76
    :cond_0
    aget p0, v0, p0

    :goto_0
    return p0

    nop

    :array_0
    .array-data 4
        0x2000
        0x3d8
        0x198
        0xf0
        0xcc
        0xfc
        0x12c
        0x174
        0x1e0
    .end array-data
.end method

.method private static isKatakana(I)Z
    .locals 1

    const/16 v0, 0x30a1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x30fe

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30fb

    if-ne p0, v0, :cond_1

    :cond_0
    const v0, 0xff66

    if-lt p0, v0, :cond_2

    const v0, 0xff9f

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 22

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    return v3

    .line 91
    :cond_0
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    sub-int v4, v1, v0

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 94
    new-array v4, v4, [I

    .line 95
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 97
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    if-ge v7, v1, :cond_1

    .line 98
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    sget-object v7, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-static {v6, v7}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object v7

    sget-object v8, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    if-eq v7, v8, :cond_3

    sget-object v7, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 103
    invoke-static {v6, v7, v3}, Lcom/ibm/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_4

    .line 107
    new-instance v7, Ljava/text/StringCharacterIterator;

    invoke-direct {v7, v6}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 109
    aput v3, v4, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 110
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_5

    .line 111
    invoke-virtual {v6, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 112
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    .line 114
    aput v8, v4, v9

    goto :goto_3

    .line 117
    :cond_4
    sget-object v4, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-static {v6, v4}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;

    move-result-object v4

    .line 118
    new-instance v7, Ljava/text/StringCharacterIterator;

    invoke-direct {v7, v4}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    new-array v4, v4, [I

    .line 120
    new-instance v8, Lcom/ibm/icu/text/Normalizer;

    sget-object v9, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-direct {v8, v6, v9, v3}, Lcom/ibm/icu/text/Normalizer;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)V

    .line 122
    aput v3, v4, v3

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 123
    :goto_4
    invoke-virtual {v8}, Lcom/ibm/icu/text/Normalizer;->endIndex()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 124
    invoke-virtual {v8}, Lcom/ibm/icu/text/Normalizer;->next()I

    add-int/lit8 v9, v9, 0x1

    .line 126
    invoke-virtual {v8}, Lcom/ibm/icu/text/Normalizer;->getIndex()I

    move-result v6

    .line 127
    aput v6, v4, v9

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v9, 0x1

    .line 133
    new-array v8, v6, [I

    .line 134
    aput v3, v8, v3

    const/4 v10, 0x1

    :goto_5
    const v15, 0x7fffffff

    if-gt v10, v9, :cond_6

    .line 136
    aput v15, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 139
    :cond_6
    new-array v14, v6, [I

    const/4 v10, 0x0

    :goto_6
    if-gt v10, v9, :cond_7

    const/4 v11, -0x1

    .line 141
    aput v11, v14, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 145
    :cond_7
    new-array v13, v9, [I

    .line 146
    new-array v12, v9, [I

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_7
    if-ge v11, v9, :cond_10

    .line 150
    invoke-interface {v7, v11}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 151
    aget v10, v8, v11

    if-ne v10, v15, :cond_8

    move v5, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    const v3, 0x7fffffff

    goto/16 :goto_b

    :cond_8
    add-int/lit8 v10, v11, 0x14

    if-ge v10, v9, :cond_9

    const/16 v16, 0x14

    goto :goto_8

    :cond_9
    sub-int v10, v9, v11

    move/from16 v16, v10

    :goto_8
    new-array v10, v5, [I

    move-object/from16 v3, p0

    .line 157
    iget-object v15, v3, Lcom/ibm/icu/text/CjkBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    move-object/from16 v18, v10

    move-object v10, v15

    move v15, v11

    move-object v11, v7

    move-object/from16 v19, v12

    move/from16 v12, v16

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    move-object/from16 v21, v14

    move-object/from16 v14, v18

    move v5, v15

    const v3, 0x7fffffff

    move/from16 v15, v16

    move-object/from16 v16, v20

    invoke-virtual/range {v10 .. v16}, Lcom/ibm/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II[I)I

    const/4 v10, 0x0

    .line 158
    aget v11, v18, v10

    .line 165
    invoke-interface {v7, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    if-eqz v11, :cond_a

    .line 166
    aget v12, v19, v10

    const/4 v10, 0x1

    if-eq v12, v10, :cond_b

    :cond_a
    invoke-static {v7}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v10

    if-eq v10, v3, :cond_b

    sget-object v10, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v7}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v10

    if-nez v10, :cond_b

    const/16 v10, 0xff

    .line 167
    aput v10, v20, v11

    const/4 v10, 0x1

    .line 168
    aput v10, v19, v11

    add-int/lit8 v11, v11, 0x1

    :cond_b
    const/4 v10, 0x0

    :goto_9
    if-ge v10, v11, :cond_d

    .line 173
    aget v12, v8, v5

    aget v13, v20, v10

    add-int/2addr v12, v13

    .line 174
    aget v13, v19, v10

    add-int/2addr v13, v5

    aget v13, v8, v13

    if-ge v12, v13, :cond_c

    .line 175
    aget v13, v19, v10

    add-int/2addr v13, v5

    aput v12, v8, v13

    .line 176
    aget v12, v19, v10

    add-int/2addr v12, v5

    aput v5, v21, v12

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 185
    :cond_d
    invoke-static {v7}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v10

    invoke-static {v10}, Lcom/ibm/icu/text/CjkBreakEngine;->isKatakana(I)Z

    move-result v10

    if-nez v17, :cond_f

    if-eqz v10, :cond_f

    add-int/lit8 v11, v5, 0x1

    .line 188
    invoke-static {v7}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    :goto_a
    if-ge v11, v9, :cond_e

    sub-int v12, v11, v5

    const/16 v13, 0x14

    if-ge v12, v13, :cond_e

    .line 189
    invoke-static {v7}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v12

    invoke-static {v12}, Lcom/ibm/icu/text/CjkBreakEngine;->isKatakana(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 190
    invoke-static {v7}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_e
    sub-int v12, v11, v5

    const/16 v13, 0x14

    if-ge v12, v13, :cond_f

    .line 195
    aget v13, v8, v5

    invoke-static {v12}, Lcom/ibm/icu/text/CjkBreakEngine;->getKatakanaCost(I)I

    move-result v12

    add-int/2addr v13, v12

    .line 196
    aget v12, v8, v11

    if-ge v13, v12, :cond_f

    .line 197
    aput v13, v8, v11

    .line 198
    aput v5, v21, v11

    :cond_f
    move/from16 v17, v10

    :goto_b
    add-int/lit8 v11, v5, 0x1

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    const/4 v3, 0x0

    const/4 v5, 0x1

    const v15, 0x7fffffff

    goto/16 :goto_7

    :cond_10
    move-object/from16 v21, v14

    const v3, 0x7fffffff

    .line 205
    new-array v5, v6, [I

    .line 207
    aget v6, v8, v9

    if-ne v6, v3, :cond_11

    const/4 v3, 0x0

    .line 208
    aput v9, v5, v3

    const/4 v3, 0x1

    goto :goto_e

    :cond_11
    const/4 v3, 0x0

    :goto_c
    if-lez v9, :cond_12

    .line 212
    aput v9, v5, v3

    add-int/lit8 v3, v3, 0x1

    .line 211
    aget v9, v21, v9

    goto :goto_c

    :cond_12
    add-int/lit8 v6, v3, -0x1

    .line 215
    aget v6, v5, v6

    aget v6, v21, v6

    if-nez v6, :cond_13

    const/4 v6, 0x1

    goto :goto_d

    :cond_13
    const/4 v6, 0x0

    :goto_d
    invoke-static {v6}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 218
    :goto_e
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v6

    if-ge v6, v0, :cond_14

    goto :goto_f

    :cond_14
    const/4 v6, 0x1

    const/4 v10, 0x0

    goto :goto_10

    :cond_15
    :goto_f
    add-int/lit8 v6, v3, 0x1

    const/4 v10, 0x0

    .line 219
    aput v10, v5, v3

    move v3, v6

    const/4 v6, 0x1

    :goto_10
    sub-int/2addr v3, v6

    :goto_11
    if-ltz v3, :cond_17

    .line 224
    aget v6, v5, v3

    aget v6, v4, v6

    add-int/2addr v6, v0

    .line 225
    invoke-virtual {v2, v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->contains(I)Z

    move-result v7

    if-nez v7, :cond_16

    if-eq v6, v0, :cond_16

    .line 226
    aget v6, v5, v3

    aget v6, v4, v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    add-int/lit8 v10, v10, 0x1

    :cond_16
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 231
    :cond_17
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v0

    if-ne v0, v1, :cond_18

    .line 232
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    add-int/lit8 v10, v10, -0x1

    .line 235
    :cond_18
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 236
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_19
    return v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 58
    instance-of v0, p1, Lcom/ibm/icu/text/CjkBreakEngine;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/ibm/icu/text/CjkBreakEngine;

    .line 60
    iget-object v0, p0, Lcom/ibm/icu/text/CjkBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    iget-object p1, p1, Lcom/ibm/icu/text/CjkBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
