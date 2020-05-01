.class public Lcom/ibm/icu/impl/number/Parse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;,
        Lcom/ibm/icu/impl/number/Parse$AffixHolder;,
        Lcom/ibm/icu/impl/number/Parse$ParserState;,
        Lcom/ibm/icu/impl/number/Parse$StateItem;,
        Lcom/ibm/icu/impl/number/Parse$DigitType;,
        Lcom/ibm/icu/impl/number/Parse$SeparatorType;,
        Lcom/ibm/icu/impl/number/Parse$StateName;,
        Lcom/ibm/icu/impl/number/Parse$GroupingMode;,
        Lcom/ibm/icu/impl/number/Parse$IProperties;,
        Lcom/ibm/icu/impl/number/Parse$ParseMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static volatile DEBUGGING:Z

.field private static final UNISET_BIDI:Lcom/ibm/icu/text/UnicodeSet;

.field private static final UNISET_COMMA_LIKE:Lcom/ibm/icu/text/UnicodeSet;

.field public static final UNISET_MINUS:Lcom/ibm/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UNISET_OTHER_GROUPING_SEPARATORS:Lcom/ibm/icu/text/UnicodeSet;

.field private static final UNISET_PERIOD_LIKE:Lcom/ibm/icu/text/UnicodeSet;

.field public static final UNISET_PLUS:Lcom/ibm/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UNISET_STRICT_COMMA_LIKE:Lcom/ibm/icu/text/UnicodeSet;

.field private static final UNISET_STRICT_PERIOD_LIKE:Lcom/ibm/icu/text/UnicodeSet;

.field private static final UNISET_WHITESPACE:Lcom/ibm/icu/text/UnicodeSet;

.field protected static final threadLocalParsePosition:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/ParsePosition;",
            ">;"
        }
    .end annotation
.end field

.field protected static final threadLocalParseState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/ibm/icu/impl/number/Parse$ParserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 276
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[[:whitespace:][\\u2000-\\u200D]]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_WHITESPACE:Lcom/ibm/icu/text/UnicodeSet;

    .line 280
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[[\\u200E\\u200F\\u061C]]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_BIDI:Lcom/ibm/icu/text/UnicodeSet;

    .line 284
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[.\\u2024\\u3002\\uFE12\\uFE52\\uFF0E\\uFF61]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_PERIOD_LIKE:Lcom/ibm/icu/text/UnicodeSet;

    .line 286
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[.\\u2024\\uFE52\\uFF0E\\uFF61]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_STRICT_PERIOD_LIKE:Lcom/ibm/icu/text/UnicodeSet;

    .line 288
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[,\\u060C\\u066B\\u3001\\uFE10\\uFE11\\uFE50\\uFE51\\uFF0C\\uFF64]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_COMMA_LIKE:Lcom/ibm/icu/text/UnicodeSet;

    .line 290
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[,\\u066B\\uFE10\\uFE50\\uFF0C]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_STRICT_COMMA_LIKE:Lcom/ibm/icu/text/UnicodeSet;

    .line 292
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[\\ \'\\u00A0\\u066C\\u2000-\\u200A\\u2018\\u2019\\u202F\\u205F\\u3000\\uFF07]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_OTHER_GROUPING_SEPARATORS:Lcom/ibm/icu/text/UnicodeSet;

    .line 989
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Parse$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->threadLocalParseState:Ljava/lang/ThreadLocal;

    .line 997
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$2;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Parse$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->threadLocalParsePosition:Ljava/lang/ThreadLocal;

    .line 1010
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/16 v1, 0xe

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>([I)V

    .line 1014
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_PLUS:Lcom/ibm/icu/text/UnicodeSet;

    .line 1021
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>([I)V

    .line 1025
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_MINUS:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v0, 0x0

    .line 1034
    sput-boolean v0, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x2b
        0x2b
        0x207a
        0x207a
        0x208a
        0x208a
        0x2795
        0x2795
        0xfb29
        0xfb29
        0xfe62
        0xfe62
        0xff0b
        0xff0b
    .end array-data

    :array_1
    .array-data 4
        0x2d
        0x2d
        0x207b
        0x207b
        0x208b
        0x208b
        0x2212
        0x2212
        0x2796
        0x2796
        0xfe63
        0xfe63
        0xff0d
        0xff0d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;ZLcom/ibm/icu/impl/number/Parse$IProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/Parse$StateItem;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v0, :cond_5b

    if-eqz v1, :cond_5b

    if-eqz v3, :cond_5b

    if-eqz v4, :cond_5b

    .line 1089
    invoke-interface/range {p3 .. p3}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getParseMode()Lcom/ibm/icu/impl/number/Parse$ParseMode;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1090
    sget-object v5, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 1091
    :cond_0
    invoke-interface/range {p3 .. p3}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getParseIntegerOnly()Z

    move-result v6

    .line 1092
    invoke-interface/range {p3 .. p3}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getParseNoExponent()Z

    move-result v7

    .line 1095
    sget-object v8, Lcom/ibm/icu/impl/number/Parse;->threadLocalParseState:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ibm/icu/impl/number/Parse$ParserState;

    invoke-virtual {v8}, Lcom/ibm/icu/impl/number/Parse$ParserState;->clear()Lcom/ibm/icu/impl/number/Parse$ParserState;

    move-result-object v8

    .line 1096
    iput-object v3, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->properties:Lcom/ibm/icu/impl/number/Parse$IProperties;

    .line 1097
    iput-object v4, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 1098
    iput-object v5, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->mode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 1099
    iput-boolean v2, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->parseCurrency:Z

    .line 1100
    invoke-interface/range {p3 .. p3}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getParseGroupingMode()Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    move-result-object v9

    iput-object v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    .line 1101
    iget-object v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    if-nez v9, :cond_1

    sget-object v9, Lcom/ibm/icu/impl/number/Parse$GroupingMode;->DEFAULT:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    iput-object v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    .line 1102
    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getParseCaseSensitive()Z

    move-result v9

    iput-boolean v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->caseSensitive:Z

    .line 1103
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    iput v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalCp1:I

    .line 1104
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    iput v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalCp2:I

    .line 1105
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    iput v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingCp1:I

    .line 1106
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    iput v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingCp2:I

    .line 1107
    iget v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalCp1:I

    invoke-static {v9, v5}, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->fromCp(ILcom/ibm/icu/impl/number/Parse$ParseMode;)Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    move-result-object v9

    iput-object v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalType1:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    .line 1108
    iget v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalCp2:I

    invoke-static {v9, v5}, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->fromCp(ILcom/ibm/icu/impl/number/Parse$ParseMode;)Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    move-result-object v9

    iput-object v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalType2:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    .line 1109
    iget v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingCp1:I

    invoke-static {v9, v5}, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->fromCp(ILcom/ibm/icu/impl/number/Parse$ParseMode;)Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    move-result-object v9

    iput-object v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingType1:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    .line 1110
    iget v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingCp2:I

    invoke-static {v9, v5}, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->fromCp(ILcom/ibm/icu/impl/number/Parse$ParseMode;)Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    move-result-object v9

    iput-object v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingType2:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    .line 1111
    invoke-virtual {v8}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ibm/icu/impl/number/Parse$StateItem;->clear()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v9

    .line 1112
    sget-object v11, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    iput-object v11, v9, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 1114
    sget-object v9, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_2

    sget-object v9, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_3

    .line 1115
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ibm/icu/impl/number/Parse;->makeDigitTrie([Ljava/lang/String;)Lcom/ibm/icu/impl/TextTrieMap;

    move-result-object v9

    iput-object v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->digitTrie:Lcom/ibm/icu/impl/TextTrieMap;

    .line 1116
    invoke-static {v8, v3}, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->addToState(Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$IProperties;)V

    if-eqz v2, :cond_3

    .line 1118
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/ibm/icu/impl/number/Parse$CurrencyAffixPatterns;->addToState(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/number/Parse$ParserState;)V

    .line 1122
    :cond_3
    sget-boolean v4, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v4, :cond_4

    .line 1123
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parsing: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1124
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1125
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v9, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-virtual {v4, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1130
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 1131
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v11, 0x1

    if-ge v4, v9, :cond_39

    .line 1132
    invoke-static {v0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 1133
    invoke-virtual {v8}, Lcom/ibm/icu/impl/number/Parse$ParserState;->swap()V

    const/4 v12, 0x0

    .line 1134
    :goto_1
    iget v13, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevLength:I

    if-ge v12, v13, :cond_37

    .line 1135
    iget-object v13, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->prevItems:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    aget-object v13, v13, v12

    .line 1136
    sget-boolean v14, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v14, :cond_5

    .line 1137
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ":"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-char v10, v13, Lcom/ibm/icu/impl/number/Parse$StateItem;->id:C

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1146
    :cond_5
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$3;->$SwitchMap$com$ibm$icu$impl$number$Parse$StateName:[I

    iget-object v14, v13, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-virtual {v14}, Lcom/ibm/icu/impl/number/Parse$StateName;->ordinal()I

    move-result v14

    aget v10, v10, v14

    packed-switch v10, :pswitch_data_0

    :cond_6
    :goto_2
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 1342
    :pswitch_0
    invoke-static {v9, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixPatternOffset(ILcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)J

    goto :goto_2

    .line 1338
    :pswitch_1
    invoke-static {v9, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptStringOffset(ILcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)J

    goto :goto_2

    .line 1334
    :pswitch_2
    invoke-static {v9, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptDigitTrieOffset(ILcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    goto :goto_2

    .line 1330
    :pswitch_3
    invoke-static {v9, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrencyOffset(ILcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    goto :goto_2

    .line 1316
    :pswitch_4
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_7

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_6

    :cond_7
    if-eqz v2, :cond_6

    .line 1318
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptBidi(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1319
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptPadding(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1320
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptWhitespace(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    if-eqz v2, :cond_6

    .line 1323
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    goto :goto_2

    .line 1301
    :pswitch_5
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptBidi(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1302
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptPadding(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1303
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_8

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_9

    .line 1304
    :cond_8
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptSuffix(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1306
    :cond_9
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_a

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_6

    .line 1307
    :cond_a
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptWhitespace(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    if-eqz v2, :cond_6

    .line 1310
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    goto :goto_2

    .line 1282
    :pswitch_6
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptBidi(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1283
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptPadding(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    if-nez v7, :cond_b

    .line 1285
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptExponentSeparator(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1287
    :cond_b
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_c

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_d

    .line 1288
    :cond_c
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptSuffix(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1290
    :cond_d
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_e

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_6

    .line 1291
    :cond_e
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptWhitespace(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    if-eqz v2, :cond_6

    .line 1294
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_2

    .line 1265
    :pswitch_7
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptBidi(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1266
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptPadding(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1267
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptExponentDigit(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1268
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_f

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_10

    .line 1269
    :cond_f
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptSuffix(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1271
    :cond_10
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_11

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_6

    .line 1272
    :cond_11
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptWhitespace(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    if-eqz v2, :cond_6

    .line 1275
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_2

    .line 1259
    :pswitch_8
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptBidi(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1260
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13, v11}, Lcom/ibm/icu/impl/number/Parse;->acceptMinusOrPlusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)V

    .line 1261
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptExponentDigit(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_2

    .line 1234
    :pswitch_9
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptFractionDigit(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1235
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_12

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_12

    goto/16 :goto_2

    .line 1236
    :cond_12
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptBidi(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1237
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_13

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_13

    goto/16 :goto_2

    .line 1238
    :cond_13
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptPadding(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1239
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_14

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_14

    goto/16 :goto_2

    :cond_14
    if-nez v7, :cond_15

    .line 1241
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptExponentSeparator(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1242
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_15

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_15

    goto/16 :goto_2

    .line 1244
    :cond_15
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_16

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_17

    .line 1245
    :cond_16
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptSuffix(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1247
    :cond_17
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_18

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_6

    .line 1248
    :cond_18
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptWhitespace(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1249
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_19

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_19

    goto/16 :goto_2

    .line 1251
    :cond_19
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_1a

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_1a

    goto/16 :goto_2

    :cond_1a
    if-eqz v2, :cond_6

    .line 1253
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_2

    .line 1202
    :pswitch_a
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptIntegerDigit(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1203
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_1b

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_1b

    goto/16 :goto_2

    :cond_1b
    if-nez v6, :cond_1c

    .line 1205
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptDecimalPoint(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1206
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_1c

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_1c

    goto/16 :goto_2

    .line 1208
    :cond_1c
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptGrouping(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1209
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_1d

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_1d

    goto/16 :goto_2

    .line 1210
    :cond_1d
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptBidi(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1211
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_1e

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_1e

    goto/16 :goto_2

    .line 1212
    :cond_1e
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptPadding(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1213
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_1f

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_1f

    goto/16 :goto_2

    :cond_1f
    if-nez v7, :cond_20

    .line 1215
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptExponentSeparator(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1216
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_20

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_20

    goto/16 :goto_2

    .line 1218
    :cond_20
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_21

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_22

    .line 1219
    :cond_21
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptSuffix(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1221
    :cond_22
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_23

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_6

    .line 1222
    :cond_23
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptWhitespace(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1223
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_24

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_24

    goto/16 :goto_2

    .line 1225
    :cond_24
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_25

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_25

    goto/16 :goto_2

    :cond_25
    if-eqz v2, :cond_6

    .line 1227
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_2

    .line 1183
    :pswitch_b
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptBidi(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1184
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptPadding(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1185
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptNan(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1186
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptInfinity(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1187
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptIntegerDigit(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    if-nez v6, :cond_26

    .line 1189
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptDecimalPoint(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1191
    :cond_26
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_27

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_6

    .line 1192
    :cond_27
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptWhitespace(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1193
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptGrouping(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    if-eqz v2, :cond_6

    .line 1195
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_2

    .line 1149
    :pswitch_c
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_29

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_28

    goto :goto_3

    :cond_28
    const/4 v14, 0x0

    goto :goto_4

    .line 1150
    :cond_29
    :goto_3
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v14, 0x0

    invoke-static {v9, v10, v8, v13, v14}, Lcom/ibm/icu/impl/number/Parse;->acceptMinusOrPlusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)V

    .line 1151
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_2a

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_2a

    goto/16 :goto_5

    .line 1153
    :cond_2a
    :goto_4
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptIntegerDigit(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1154
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_2b

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_2b

    goto/16 :goto_5

    .line 1155
    :cond_2b
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptBidi(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1156
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_2c

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_2c

    goto/16 :goto_5

    .line 1157
    :cond_2c
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptWhitespace(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1158
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_2d

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_2d

    goto/16 :goto_5

    .line 1159
    :cond_2d
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptPadding(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1160
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_2e

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_2e

    goto :goto_5

    .line 1161
    :cond_2e
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptNan(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1162
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_2f

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_2f

    goto :goto_5

    .line 1163
    :cond_2f
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptInfinity(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1164
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_30

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_30

    goto :goto_5

    :cond_30
    if-nez v6, :cond_31

    .line 1166
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptDecimalPoint(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1167
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_31

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_31

    goto :goto_5

    .line 1169
    :cond_31
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_32

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_33

    .line 1170
    :cond_32
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptPrefix(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1172
    :cond_33
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v5, v10, :cond_34

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_36

    .line 1173
    :cond_34
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptGrouping(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    .line 1174
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-lez v10, :cond_35

    sget-object v10, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v10, :cond_35

    goto :goto_5

    :cond_35
    if-eqz v2, :cond_36

    .line 1176
    sget-object v10, Lcom/ibm/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v9, v10, v8, v13}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V

    :cond_36
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_37
    const/4 v14, 0x0

    .line 1347
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-nez v10, :cond_38

    .line 1350
    invoke-virtual {v8}, Lcom/ibm/icu/impl/number/Parse$ParserState;->swapBack()V

    goto :goto_6

    .line 1354
    :cond_38
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v4, v9

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_39
    const/4 v14, 0x0

    .line 1358
    :goto_6
    iget v0, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    const-string v6, "- - - - - - - - - -"

    const/4 v7, 0x0

    if-nez v0, :cond_3b

    .line 1359
    sget-boolean v0, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v0, :cond_3a

    .line 1360
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No matches found"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1361
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3a
    return-object v7

    :cond_3b
    move-object v9, v7

    const/4 v0, 0x0

    .line 1369
    :goto_7
    iget v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->length:I

    if-ge v0, v10, :cond_58

    .line 1370
    iget-object v10, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->items:[Lcom/ibm/icu/impl/number/Parse$StateItem;

    aget-object v10, v10, v0

    .line 1372
    sget-boolean v12, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v12, :cond_3c

    .line 1373
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ":end "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1377
    :cond_3c
    invoke-virtual {v10}, Lcom/ibm/icu/impl/number/Parse$StateItem;->hasNumber()Z

    move-result v12

    if-nez v12, :cond_3e

    .line 1378
    sget-boolean v10, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v10, :cond_3d

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "-> rejected due to no number value"

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3d
    :goto_8
    move-object v15, v8

    goto/16 :goto_16

    .line 1382
    :cond_3e
    sget-object v12, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v5, v12, :cond_51

    .line 1385
    iget-boolean v12, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    if-nez v12, :cond_40

    iget-object v12, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    if-eqz v12, :cond_3f

    iget-object v12, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    iget-object v12, v12, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3f

    goto :goto_9

    :cond_3f
    const/4 v12, 0x0

    goto :goto_a

    :cond_40
    :goto_9
    const/4 v12, 0x1

    .line 1386
    :goto_a
    iget-boolean v13, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    if-nez v13, :cond_42

    iget-object v13, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    if-eqz v13, :cond_41

    iget-object v13, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    iget-object v13, v13, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_41

    goto :goto_b

    :cond_41
    const/4 v13, 0x0

    goto :goto_c

    :cond_42
    :goto_b
    const/4 v13, 0x1

    .line 1387
    :goto_c
    iget-object v15, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    sget-object v14, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->EMPTY_POSITIVE:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    .line 1388
    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_44

    iget-object v14, v8, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    sget-object v15, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->EMPTY_NEGATIVE:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    .line 1389
    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_43

    goto :goto_d

    :cond_43
    const/4 v14, 0x0

    goto :goto_e

    :cond_44
    :goto_d
    const/4 v14, 0x1

    :goto_e
    if-eqz v12, :cond_45

    if-eqz v13, :cond_45

    goto :goto_f

    :cond_45
    if-nez v12, :cond_50

    if-nez v13, :cond_50

    if-eqz v14, :cond_50

    .line 1401
    :goto_f
    invoke-interface/range {p3 .. p3}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getMinimumExponentDigits()I

    move-result v12

    if-lez v12, :cond_46

    iget-boolean v12, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawExponentDigit:Z

    if-nez v12, :cond_46

    .line 1402
    sget-boolean v10, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v10, :cond_3d

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "-> reject due to lack of exponent"

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 1407
    :cond_46
    invoke-interface/range {p3 .. p3}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getGroupingSize()I

    move-result v12

    .line 1408
    invoke-interface/range {p3 .. p3}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getSecondaryGroupingSize()I

    move-result v13

    if-lez v12, :cond_47

    goto :goto_10

    :cond_47
    move v12, v13

    :goto_10
    if-lez v13, :cond_48

    goto :goto_11

    :cond_48
    move v13, v12

    .line 1411
    :goto_11
    iget-wide v14, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    .line 1412
    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v16

    const/16 v17, 0x4

    div-int/lit8 v16, v16, 0x4

    rsub-int/lit8 v16, v16, 0x10

    move-wide/from16 v18, v14

    move/from16 v14, v16

    :goto_12
    const-wide/16 v20, 0xf

    if-le v14, v11, :cond_4a

    and-long v22, v18, v20

    const-wide/16 v24, 0x0

    cmp-long v15, v22, v24

    if-nez v15, :cond_4a

    .line 1416
    iget-boolean v15, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    if-eqz v15, :cond_49

    .line 1417
    sget-boolean v10, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v10, :cond_3d

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "-> rejected due to decimal point after grouping"

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_49
    ushr-long v18, v18, v17

    add-int/lit8 v14, v14, -0x1

    goto :goto_12

    :cond_4a
    if-gez v12, :cond_4b

    goto :goto_14

    :cond_4b
    if-gt v14, v11, :cond_4c

    goto :goto_14

    :cond_4c
    and-long v16, v18, v20

    int-to-long v11, v12

    cmp-long v15, v16, v11

    if-eqz v15, :cond_4d

    .line 1430
    sget-boolean v10, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v10, :cond_3d

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "-> rejected due to first grouping violation"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_4d
    add-int/lit8 v14, v14, -0x1

    mul-int/lit8 v11, v14, 0x4

    ushr-long v11, v18, v11

    and-long v11, v11, v20

    move-object v15, v8

    int-to-long v7, v13

    cmp-long v13, v11, v7

    if-lez v13, :cond_4e

    .line 1434
    sget-boolean v7, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v7, :cond_57

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "-> rejected due to final grouping violation"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_4e
    const/4 v11, 0x1

    :goto_13
    if-ge v11, v14, :cond_52

    mul-int/lit8 v12, v11, 0x4

    ushr-long v12, v18, v12

    and-long v12, v12, v20

    cmp-long v16, v12, v7

    if-eqz v16, :cond_4f

    .line 1440
    sget-boolean v7, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v7, :cond_57

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "-> rejected due to inner grouping violation"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16

    :cond_4f
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_50
    move-object v15, v8

    .line 1396
    sget-boolean v7, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v7, :cond_57

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "-> rejected due to mismatched prefix/suffix"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16

    :cond_51
    :goto_14
    move-object v15, v8

    .line 1448
    :cond_52
    invoke-interface/range {p3 .. p3}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getDecimalPatternMatchRequired()Z

    move-result v7

    if-eqz v7, :cond_53

    iget-boolean v7, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    .line 1449
    invoke-static/range {p3 .. p3}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->allowsDecimalPoint(Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;)Z

    move-result v8

    if-eq v7, v8, :cond_53

    .line 1450
    sget-boolean v7, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v7, :cond_57

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "-> rejected due to decimal point violation"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16

    :cond_53
    if-eqz v2, :cond_54

    .line 1455
    iget-boolean v7, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    if-nez v7, :cond_54

    .line 1456
    sget-boolean v7, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v7, :cond_57

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "-> rejected due to lack of currency"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16

    :cond_54
    if-nez v9, :cond_55

    goto :goto_15

    .line 1465
    :cond_55
    iget v7, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    iget v8, v9, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    if-le v7, v8, :cond_56

    goto :goto_15

    .line 1467
    :cond_56
    iget v7, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingCount:I

    iget v8, v9, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingCount:I

    if-ge v7, v8, :cond_57

    :goto_15
    move-object v9, v10

    :cond_57
    :goto_16
    add-int/lit8 v0, v0, 0x1

    move-object v8, v15

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_7

    .line 1472
    :cond_58
    sget-boolean v0, Lcom/ibm/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v0, :cond_59

    .line 1473
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_59
    if-eqz v9, :cond_5a

    .line 1477
    iget v0, v9, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingCount:I

    sub-int/2addr v4, v0

    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v9

    .line 1480
    :cond_5a
    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v0, 0x0

    return-object v0

    .line 1086
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All arguments are required for parse."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static acceptAffixHolder(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$AffixHolder;Z)V
    .locals 12

    move-object/from16 v0, p4

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 1816
    iget-object v1, v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    .line 1818
    :goto_0
    iget-boolean v2, v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->strings:Z

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v1

    .line 1819
    invoke-static/range {v2 .. v9}, Lcom/ibm/icu/impl/number/Parse;->acceptString(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v1

    goto :goto_1

    .line 1822
    :cond_2
    invoke-static {v10, v11, v1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v7

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-static/range {v2 .. v8}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixPattern(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v1

    .line 1825
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    :goto_2
    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    cmp-long v6, v4, v1

    if-gtz v6, :cond_9

    and-long/2addr v4, v1

    cmp-long v6, v4, v10

    move-object v4, p2

    if-eqz v6, :cond_8

    .line 1827
    invoke-virtual {p2, v3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getItem(I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v5

    .line 1828
    iput-object v0, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    const/4 v6, 0x1

    if-eqz p5, :cond_3

    .line 1829
    iput-boolean v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    :cond_3
    if-nez p5, :cond_4

    .line 1830
    iput-boolean v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    .line 1831
    :cond_4
    iget-boolean v7, v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->negative:Z

    if-eqz v7, :cond_5

    iput-boolean v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    .line 1833
    :cond_5
    iget v7, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    add-int/lit8 v7, v7, 0xa

    iput v7, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    .line 1835
    iget-boolean v7, v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->negative:Z

    if-nez v7, :cond_6

    iget v7, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    add-int/2addr v7, v6

    iput v7, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    .line 1837
    :cond_6
    iget-boolean v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    .line 1838
    :cond_7
    iget-boolean v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/ibm/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private static acceptAffixPattern(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J
    .locals 10

    if-eqz p4, :cond_1

    .line 1981
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 1982
    invoke-static/range {v0 .. v9}, Lcom/ibm/icu/impl/number/Parse;->acceptStringOrAffixPatternWithIgnorables(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;JZZ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static acceptAffixPatternHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J
    .locals 4

    .line 2125
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1, p0}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 2126
    iget p3, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    const-wide/16 v2, 0x0

    cmp-long p3, p5, v2

    if-ltz p3, :cond_0

    .line 2129
    sget-object p3, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Lcom/ibm/icu/impl/number/Parse$StateName;

    iput-object p3, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 2130
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 2131
    iput-object p4, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    .line 2132
    iput-wide p5, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    goto :goto_0

    .line 2135
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 p1, 0x0

    .line 2136
    iput p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingCount:I

    .line 2137
    iput-object v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    :goto_0
    const-wide/16 p0, 0x1

    .line 2139
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method private static acceptAffixPatternNonIgnorable(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IJJ)J
    .locals 23

    move/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-wide/from16 v12, p6

    const/16 v0, 0x25

    const/16 v1, 0x2030

    const/4 v14, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    if-gez p5, :cond_4

    packed-switch p5, :pswitch_data_0

    .line 2029
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    move-object/from16 v18, v14

    const/4 v15, 0x1

    goto :goto_3

    :pswitch_1
    move-object/from16 v18, v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    goto :goto_4

    .line 2012
    :pswitch_2
    iget-object v1, v10, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v1

    .line 2013
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v18, v1

    goto :goto_2

    :cond_1
    :goto_0
    move-object/from16 v18, v1

    const/16 v3, 0x25

    goto :goto_2

    .line 2018
    :pswitch_3
    iget-object v0, v10, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v0

    .line 2019
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v2, :cond_3

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v18, v0

    goto :goto_2

    :cond_3
    :goto_1
    move-object/from16 v18, v0

    const/16 v3, 0x2030

    goto :goto_2

    :pswitch_4
    move-object/from16 v18, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    goto :goto_5

    :cond_4
    move/from16 v3, p5

    move-object/from16 v18, v14

    :goto_2
    const/4 v15, 0x0

    :goto_3
    const/16 v16, 0x0

    :goto_4
    const/16 v17, 0x0

    :goto_5
    const-wide/16 v19, 0x0

    if-ltz v3, :cond_6

    .line 2036
    invoke-static {v8, v3, v10}, Lcom/ibm/icu/impl/number/Parse;->codePointEquals(IILcom/ibm/icu/impl/number/Parse$ParserState;)Z

    move-result v0

    if-eqz v0, :cond_6

    cmp-long v0, v12, v19

    if-ltz v0, :cond_5

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p6

    .line 2038
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixPatternHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v0

    or-long v0, v0, v19

    move-wide/from16 v21, v0

    goto :goto_6

    :cond_5
    move-wide/from16 v21, v19

    :goto_6
    cmp-long v0, p8, v19

    if-gez v0, :cond_7

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p8

    .line 2041
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixPatternHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v0

    or-long v0, v21, v0

    move-wide/from16 v21, v0

    goto :goto_7

    :cond_6
    move-wide/from16 v21, v19

    :cond_7
    :goto_7
    if-eqz v15, :cond_b

    cmp-long v0, v12, v19

    if-ltz v0, :cond_8

    .line 2046
    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/number/Parse;->acceptMinusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)J

    move-result-wide v0

    or-long v21, v21, v0

    :cond_8
    cmp-long v0, p8, v19

    if-gez v0, :cond_9

    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 2049
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/number/Parse;->acceptMinusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)J

    move-result-wide v0

    or-long v0, v21, v0

    move-wide/from16 v21, v0

    :cond_9
    cmp-long v0, v21, v19

    if-nez v0, :cond_b

    .line 2053
    iget-object v0, v10, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v0

    .line 2054
    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2055
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    if-ne v2, v3, :cond_a

    sget-object v2, Lcom/ibm/icu/impl/number/Parse;->UNISET_MINUS:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    move-object/from16 v18, v0

    :cond_b
    if-eqz v16, :cond_f

    cmp-long v0, v12, v19

    if-ltz v0, :cond_c

    .line 2062
    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/number/Parse;->acceptPlusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)J

    move-result-wide v0

    or-long v21, v21, v0

    :cond_c
    cmp-long v0, p8, v19

    if-gez v0, :cond_d

    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 2065
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/number/Parse;->acceptPlusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)J

    move-result-wide v0

    or-long v0, v21, v0

    move-wide/from16 v21, v0

    :cond_d
    cmp-long v0, v21, v19

    if-nez v0, :cond_f

    .line 2069
    iget-object v0, v10, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v0

    .line 2070
    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2071
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    if-ne v2, v3, :cond_e

    sget-object v2, Lcom/ibm/icu/impl/number/Parse;->UNISET_MINUS:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    move-object/from16 v18, v0

    :cond_f
    if-eqz v18, :cond_11

    cmp-long v0, v12, v19

    if-ltz v0, :cond_10

    .line 2078
    sget-object v1, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v18

    .line 2079
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptString(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    or-long v21, v21, v0

    :cond_10
    cmp-long v0, p8, v19

    if-gez v0, :cond_11

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v18

    .line 2083
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptString(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    or-long v21, v21, v0

    :cond_11
    if-eqz v17, :cond_13

    cmp-long v0, v12, v19

    if-ltz v0, :cond_12

    .line 2088
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-static {v8, v0, v9, v10, v11}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)J

    move-result-wide v0

    or-long v21, v21, v0

    :cond_12
    cmp-long v0, p8, v19

    if-gez v0, :cond_13

    .line 2091
    invoke-static {v8, v9, v14, v10, v11}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)J

    move-result-wide v0

    or-long v21, v21, v0

    .line 2096
    :cond_13
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    :goto_8
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    cmp-long v3, v1, v21

    if-gtz v3, :cond_15

    and-long v1, v1, v21

    cmp-long v3, v1, v19

    if-eqz v3, :cond_14

    .line 2098
    invoke-virtual {v10, v0}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getItem(I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v1

    move-object/from16 v2, p4

    iput-object v2, v1, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    .line 2099
    invoke-virtual {v10, v0}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getItem(I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v1

    iput-wide v12, v1, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    goto :goto_9

    :cond_14
    move-object/from16 v2, p4

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    return-wide v21

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static acceptAffixPatternOffset(ILcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)J
    .locals 7

    .line 1962
    iget-object v1, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    iget-object v4, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    iget-wide v5, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    move v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixPattern(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static acceptBidi(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 1

    .line 1514
    sget-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_BIDI:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    :cond_0
    return-void
.end method

.method private static acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)J
    .locals 17

    move/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 2332
    iget-boolean v0, v10, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_0

    return-wide v11

    .line 2337
    :cond_0
    iget-object v0, v9, Lcom/ibm/icu/impl/number/Parse$ParserState;->properties:Lcom/ibm/icu/impl/number/Parse$IProperties;

    invoke-interface {v0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    .line 2339
    iget-object v1, v9, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v13, v2}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v1

    .line 2340
    invoke-virtual {v0}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    move-object v5, v1

    goto :goto_0

    .line 2343
    :cond_1
    iget-object v0, v9, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrency()Lcom/ibm/icu/util/Currency;

    .line 2344
    iget-object v0, v9, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 2345
    iget-object v1, v9, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    move-object v5, v0

    move-object v14, v1

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 2347
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptString(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    or-long v15, v0, v11

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v14

    .line 2348
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptString(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    or-long v6, v15, v0

    .line 2349
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    :goto_1
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    const/4 v3, 0x1

    cmp-long v4, v1, v6

    if-gtz v4, :cond_3

    and-long/2addr v1, v6

    cmp-long v4, v1, v11

    if-eqz v4, :cond_2

    .line 2351
    invoke-virtual {v9, v0}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getItem(I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v1

    iput-boolean v3, v1, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    .line 2352
    invoke-virtual {v9, v0}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getItem(I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v1

    iput-object v14, v1, Lcom/ibm/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2357
    :cond_3
    iget-boolean v0, v9, Lcom/ibm/icu/impl/number/Parse$ParserState;->parseCurrency:Z

    if-eqz v0, :cond_4

    .line 2358
    iget-object v0, v9, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 2360
    invoke-static {v0, v8, v3}, Lcom/ibm/icu/util/Currency;->openParseState(Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    move-result-object v5

    .line 2362
    invoke-static {v0, v8, v13}, Lcom/ibm/icu/util/Currency;->openParseState(Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    move-result-object v11

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 2363
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrencyHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/TextTrieMap$ParseState;)J

    move-result-wide v0

    or-long/2addr v6, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v11

    .line 2364
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrencyHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/TextTrieMap$ParseState;)J

    move-result-wide v0

    or-long/2addr v6, v0

    :cond_4
    return-wide v6
.end method

.method private static acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 2327
    invoke-static {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrency(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)J

    return-void
.end method

.method private static acceptCurrencyHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/TextTrieMap$ParseState;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ibm/icu/impl/number/Parse$StateName;",
            "Lcom/ibm/icu/impl/number/Parse$StateName;",
            "Lcom/ibm/icu/impl/number/Parse$ParserState;",
            "Lcom/ibm/icu/impl/number/Parse$StateItem;",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">.ParseState;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p5, :cond_0

    return-wide v0

    .line 2394
    :cond_0
    invoke-virtual {p5, p0}, Lcom/ibm/icu/impl/TextTrieMap$ParseState;->accept(I)V

    .line 2396
    invoke-virtual {p5}, Lcom/ibm/icu/impl/TextTrieMap$ParseState;->getCurrentMatches()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    if-eqz p0, :cond_1

    .line 2400
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v5

    invoke-virtual {v5, p4, p1, v4}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v5

    .line 2401
    iput-object p2, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v6, 0x0

    .line 2402
    iput-object v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo2:Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 v6, 0x1

    .line 2403
    iput-boolean v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    .line 2404
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;

    invoke-virtual {p0}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    .line 2405
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p0

    shl-long v5, v2, p0

    or-long/2addr v0, v5

    .line 2407
    :cond_1
    invoke-virtual {p5}, Lcom/ibm/icu/impl/TextTrieMap$ParseState;->atEnd()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2409
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    sget-object v5, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_CURRENCY:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-virtual {p0, p4, v5, v4}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 2410
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 2411
    iput-object p2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo2:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 2412
    iput-object p5, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentCurrencyTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    .line 2413
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p0

    shl-long p0, v2, p0

    or-long/2addr v0, p0

    :cond_2
    return-wide v0
.end method

.method private static acceptCurrencyOffset(ILcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 6

    .line 2382
    iget-object v1, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    iget-object v2, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo2:Lcom/ibm/icu/impl/number/Parse$StateName;

    iget-object v5, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentCurrencyTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    move v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/number/Parse;->acceptCurrencyHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/TextTrieMap$ParseState;)J

    return-void
.end method

.method private static acceptDecimalPoint(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 2

    .line 1737
    iget v0, p3, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingCp:I

    if-ne p0, v0, :cond_0

    return-void

    .line 1742
    :cond_0
    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->mode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->fromCp(ILcom/ibm/icu/impl/number/Parse$ParseMode;)Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    move-result-object v0

    .line 1745
    iget-object v1, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalType1:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-eq v0, v1, :cond_1

    iget-object v1, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalType2:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-eq v0, v1, :cond_1

    return-void

    .line 1750
    :cond_1
    sget-object v1, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->OTHER_GROUPING:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->UNKNOWN:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v1, :cond_3

    .line 1751
    :cond_2
    iget v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalCp1:I

    if-eq p0, v0, :cond_3

    iget v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalCp2:I

    if-eq p0, v0, :cond_3

    return-void

    .line 1757
    :cond_3
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    const/4 p2, -0x1

    invoke-virtual {p0, p3, p1, p2}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    const/4 p1, 0x1

    .line 1758
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    return-void
.end method

.method private static acceptDigitHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$DigitType;)V
    .locals 7

    const/16 v0, 0xa

    .line 1569
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    .line 1575
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v3

    invoke-virtual {v3, p3, p1, v2}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-gez v1, :cond_5

    .line 1579
    iget-object v4, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->mode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    sget-object v5, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-eq v4, v5, :cond_1

    iget-object v4, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->mode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    sget-object v5, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne v4, v5, :cond_5

    .line 1580
    :cond_1
    iget-object v4, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->digitTrie:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    move v5, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1583
    iget-object v6, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v6}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    if-ne p0, v6, :cond_2

    .line 1586
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v3

    invoke-virtual {v3, p3, p1, v2}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v3

    move v5, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    .line 1591
    :cond_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/number/Parse;->acceptDigitTrie(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$DigitType;)J

    .line 1596
    :cond_5
    :goto_2
    invoke-static {v3, v1, p4}, Lcom/ibm/icu/impl/number/Parse;->recordDigit(Lcom/ibm/icu/impl/number/Parse$StateItem;BLcom/ibm/icu/impl/number/Parse$DigitType;)V

    return-void
.end method

.method private static acceptDigitTrie(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$DigitType;)J
    .locals 7

    .line 2421
    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->digitTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/TextTrieMap;->openParseState(I)Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    move-result-object v6

    if-nez v6, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2423
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/number/Parse;->acceptDigitTrieHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$DigitType;Lcom/ibm/icu/impl/TextTrieMap$ParseState;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static acceptDigitTrieHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$DigitType;Lcom/ibm/icu/impl/TextTrieMap$ParseState;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ibm/icu/impl/number/Parse$StateName;",
            "Lcom/ibm/icu/impl/number/Parse$ParserState;",
            "Lcom/ibm/icu/impl/number/Parse$StateItem;",
            "Lcom/ibm/icu/impl/number/Parse$DigitType;",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Ljava/lang/Byte;",
            ">.ParseState;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p5, :cond_0

    return-wide v0

    .line 2439
    :cond_0
    invoke-virtual {p5, p0}, Lcom/ibm/icu/impl/TextTrieMap$ParseState;->accept(I)V

    .line 2441
    invoke-virtual {p5}, Lcom/ibm/icu/impl/TextTrieMap$ParseState;->getCurrentMatches()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    if-eqz p0, :cond_1

    .line 2444
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    .line 2445
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v5

    invoke-virtual {v5, p3, p1, v4}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v5

    const/4 v6, 0x0

    .line 2446
    iput-object v6, v5, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 2447
    invoke-static {v5, p0, p4}, Lcom/ibm/icu/impl/number/Parse;->recordDigit(Lcom/ibm/icu/impl/number/Parse$StateItem;BLcom/ibm/icu/impl/number/Parse$DigitType;)V

    .line 2448
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p0

    shl-long v5, v2, p0

    or-long/2addr v0, v5

    .line 2450
    :cond_1
    invoke-virtual {p5}, Lcom/ibm/icu/impl/TextTrieMap$ParseState;->atEnd()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2452
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    sget-object v5, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_DIGIT:Lcom/ibm/icu/impl/number/Parse$StateName;

    invoke-virtual {p0, p3, v5, v4}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 2453
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 2454
    iput-object p5, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentDigitTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    .line 2455
    iput-object p4, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentDigitType:Lcom/ibm/icu/impl/number/Parse$DigitType;

    .line 2456
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p0

    shl-long p0, v2, p0

    or-long/2addr v0, p0

    :cond_2
    return-wide v0
.end method

.method private static acceptDigitTrieOffset(ILcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 6

    .line 2427
    iget-object v1, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    iget-object v4, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentDigitType:Lcom/ibm/icu/impl/number/Parse$DigitType;

    iget-object v5, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentDigitTrieState:Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    move v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/number/Parse;->acceptDigitTrieHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$DigitType;Lcom/ibm/icu/impl/TextTrieMap$ParseState;)J

    return-void
.end method

.method private static acceptExponentDigit(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 1

    .line 1550
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->EXPONENT:Lcom/ibm/icu/impl/number/Parse$DigitType;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/number/Parse;->acceptDigitHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$DigitType;)V

    return-void
.end method

.method private static acceptExponentSeparator(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 9

    .line 1788
    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 1789
    invoke-static/range {v1 .. v8}, Lcom/ibm/icu/impl/number/Parse;->acceptString(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    return-void
.end method

.method private static acceptFractionDigit(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 1

    .line 1545
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->FRACTION:Lcom/ibm/icu/impl/number/Parse$DigitType;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/number/Parse;->acceptDigitHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$DigitType;)V

    return-void
.end method

.method private static acceptGrouping(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 4

    .line 1681
    iget v0, p3, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingCp:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 1683
    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->mode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->fromCp(ILcom/ibm/icu/impl/number/Parse$ParseMode;)Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    move-result-object v0

    .line 1686
    iget v2, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingCp1:I

    if-eq p0, v2, :cond_6

    iget v2, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingCp2:I

    if-eq p0, v2, :cond_6

    .line 1688
    sget-object v2, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->UNKNOWN:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v2, :cond_0

    return-void

    .line 1691
    :cond_0
    iget-object v2, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingMode:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    sget-object v3, Lcom/ibm/icu/impl/number/Parse$GroupingMode;->RESTRICTED:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    if-ne v2, v3, :cond_2

    .line 1693
    iget-object v2, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingType1:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v2, :cond_1

    iget-object v2, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->groupingType2:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-eq v0, v2, :cond_6

    :cond_1
    return-void

    .line 1698
    :cond_2
    sget-object v2, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->COMMA_LIKE:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v2, :cond_4

    iget-object v2, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalType1:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    sget-object v3, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->COMMA_LIKE:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-eq v2, v3, :cond_3

    iget-object v2, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalType2:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    sget-object v3, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->COMMA_LIKE:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-ne v2, v3, :cond_4

    :cond_3
    return-void

    .line 1703
    :cond_4
    sget-object v2, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->PERIOD_LIKE:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v2, :cond_6

    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalType1:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    sget-object v2, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->PERIOD_LIKE:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-eq v0, v2, :cond_5

    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->decimalType2:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    sget-object v2, Lcom/ibm/icu/impl/number/Parse$SeparatorType;->PERIOD_LIKE:Lcom/ibm/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v2, :cond_6

    :cond_5
    return-void

    .line 1712
    :cond_6
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p1

    .line 1713
    iput p0, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingCp:I

    .line 1714
    iget-wide p2, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    shl-long/2addr p2, v1

    iput-wide p2, p1, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    goto :goto_0

    .line 1717
    :cond_7
    iget v0, p3, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingCp:I

    if-ne p0, v0, :cond_8

    .line 1718
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 1719
    iget-wide p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    shl-long/2addr p1, v1

    iput-wide p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    :cond_8
    :goto_0
    return-void
.end method

.method private static acceptInfinity(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 9

    .line 1775
    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 1776
    invoke-static/range {v1 .. v8}, Lcom/ibm/icu/impl/number/Parse;->acceptString(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide p0

    .line 1779
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p3

    :goto_0
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p3

    cmp-long v2, v0, p0

    if-gtz v2, :cond_1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1781
    invoke-virtual {p2, p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getItem(I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static acceptIntegerDigit(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 1

    .line 1540
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->INTEGER:Lcom/ibm/icu/impl/number/Parse$DigitType;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/number/Parse;->acceptDigitHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$DigitType;)V

    return-void
.end method

.method private static acceptMinusOrPlusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)V
    .locals 9

    const/4 v2, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1626
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/number/Parse;->acceptMinusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)J

    const/4 v5, 0x0

    move v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .line 1627
    invoke-static/range {v3 .. v8}, Lcom/ibm/icu/impl/number/Parse;->acceptPlusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)J

    return-void
.end method

.method private static acceptMinusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)J
    .locals 1

    .line 1637
    sget-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_MINUS:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1638
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, p4, p1, v0}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 1639
    iput-object p2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    .line 1641
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    goto :goto_0

    .line 1643
    :cond_0
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNegative:Z

    :goto_0
    const-wide/16 p0, 0x1

    .line 1645
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static acceptNan(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 9

    .line 1762
    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 1763
    invoke-static/range {v1 .. v8}, Lcom/ibm/icu/impl/number/Parse;->acceptString(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide p0

    .line 1766
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p3

    :goto_0
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p3

    cmp-long v2, v0, p0

    if-gtz v2, :cond_1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1768
    invoke-virtual {p2, p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getItem(I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ibm/icu/impl/number/Parse$StateItem;->sawNaN:Z

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static acceptPadding(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 2

    .line 1530
    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->properties:Lcom/ibm/icu/impl/number/Parse$IProperties;

    invoke-interface {v0}, Lcom/ibm/icu/impl/number/Parse$IProperties;->getPadString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1531
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1532
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 1534
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    :cond_1
    :goto_0
    return-void
.end method

.method private static acceptPlusSign(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Z)J
    .locals 0

    .line 1658
    sget-object p5, Lcom/ibm/icu/impl/number/Parse;->UNISET_PLUS:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p5, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1659
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    const/4 p5, -0x1

    invoke-virtual {p0, p4, p1, p5}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 1660
    iput-object p2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    const-wide/16 p0, 0x1

    .line 1661
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static acceptPrefix(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 8

    .line 1793
    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    const/4 v7, 0x1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1794
    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixHolder(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$AffixHolder;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static acceptString(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J
    .locals 10

    if-eqz p5, :cond_1

    .line 1885
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p6

    int-to-long v6, v0

    const/4 v9, 0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v8, p7

    .line 1886
    invoke-static/range {v0 .. v9}, Lcom/ibm/icu/impl/number/Parse;->acceptStringOrAffixPatternWithIgnorables(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;JZZ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static acceptStringHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J
    .locals 2

    .line 1941
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1, p0}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 1942
    iget p4, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->score:I

    .line 1943
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ge p6, p4, :cond_0

    .line 1945
    sget-object p4, Lcom/ibm/icu/impl/number/Parse$StateName;->INSIDE_STRING:Lcom/ibm/icu/impl/number/Parse$StateName;

    iput-object p4, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 1946
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 1947
    iput-object p2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo2:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 1948
    iput-object p5, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    .line 1949
    iput p6, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentOffset:I

    .line 1950
    iput-boolean p7, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentTrailing:Z

    goto :goto_0

    .line 1953
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->name:Lcom/ibm/icu/impl/number/Parse$StateName;

    if-nez p7, :cond_1

    const/4 p1, 0x0

    .line 1954
    iput p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->trailingCount:I

    .line 1955
    :cond_1
    iput-object p2, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    .line 1956
    iput-object v1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo2:Lcom/ibm/icu/impl/number/Parse$StateName;

    :goto_0
    const-wide/16 p0, 0x1

    .line 1958
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method private static acceptStringNonIgnorable(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;ZIJJ)J
    .locals 15

    move-wide/from16 v0, p8

    long-to-int v6, v0

    move-wide/from16 v0, p10

    long-to-int v13, v0

    move v8, p0

    move-object/from16 v10, p3

    move/from16 v0, p7

    .line 1904
    invoke-static {v0, p0, v10}, Lcom/ibm/icu/impl/number/Parse;->codePointEquals(IILcom/ibm/icu/impl/number/Parse$ParserState;)Z

    move-result v0

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_2

    .line 1905
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    move v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    .line 1906
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptStringHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    or-long/2addr v11, v0

    :cond_0
    move-wide v0, v11

    .line 1908
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v13, v2, :cond_1

    move v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v14, p6

    .line 1909
    invoke-static/range {v7 .. v14}, Lcom/ibm/icu/impl/number/Parse;->acceptStringHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v2

    or-long/2addr v0, v2

    :cond_1
    return-wide v0

    :cond_2
    return-wide v11
.end method

.method private static acceptStringOffset(ILcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)J
    .locals 8

    .line 1844
    iget-object v1, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo1:Lcom/ibm/icu/impl/number/Parse$StateName;

    iget-object v2, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->returnTo2:Lcom/ibm/icu/impl/number/Parse$StateName;

    iget-object v5, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    iget v6, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentOffset:I

    iget-boolean v7, p2, Lcom/ibm/icu/impl/number/Parse$StateItem;->currentTrailing:Z

    move v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptString(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static acceptStringOrAffixPatternWithIgnorables(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;JZZ)J
    .locals 19

    move/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-wide/from16 v0, p6

    if-eqz p9, :cond_0

    long-to-int v2, v0

    .line 2200
    invoke-static {v10, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    goto :goto_0

    .line 2201
    :cond_0
    invoke-static/range {p6 .. p7}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v2

    .line 2203
    :goto_0
    invoke-static {v2, v9}, Lcom/ibm/icu/impl/number/Parse;->isIgnorable(ILcom/ibm/icu/impl/number/Parse$ParserState;)Z

    move-result v3

    const-wide/16 v11, 0x0

    if-eqz v3, :cond_e

    move-wide v5, v0

    move v3, v2

    move-wide v13, v11

    :goto_1
    if-eqz p9, :cond_1

    .line 2213
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v5

    goto :goto_2

    .line 2214
    :cond_1
    invoke-static {v5, v6, v10}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v3

    :goto_2
    cmp-long v7, v13, v11

    if-nez v7, :cond_2

    move-wide v13, v3

    :cond_2
    if-eqz p9, :cond_3

    .line 2216
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v15

    int-to-long v7, v15

    cmp-long v15, v3, v7

    if-ltz v15, :cond_4

    goto :goto_3

    :cond_3
    cmp-long v7, v3, v11

    if-gez v7, :cond_4

    :goto_3
    const/high16 v7, -0x80000000

    :goto_4
    const/high16 v8, -0x80000000

    goto :goto_6

    :cond_4
    if-eqz p9, :cond_5

    long-to-int v7, v3

    .line 2224
    invoke-static {v10, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    goto :goto_5

    .line 2225
    :cond_5
    invoke-static {v3, v4}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v7

    .line 2226
    :goto_5
    invoke-static {v7, v9}, Lcom/ibm/icu/impl/number/Parse;->isIgnorable(ILcom/ibm/icu/impl/number/Parse$ParserState;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_4

    :goto_6
    if-ne v7, v8, :cond_9

    move/from16 v8, p0

    .line 2231
    invoke-static {v8, v2, v9}, Lcom/ibm/icu/impl/number/Parse;->codePointEquals(IILcom/ibm/icu/impl/number/Parse$ParserState;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p9, :cond_6

    long-to-int v6, v13

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v4, v3

    move-object/from16 v3, p3

    move-wide/from16 v17, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p8

    .line 2237
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptStringHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    goto :goto_7

    :cond_6
    move-wide/from16 v17, v3

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-wide v5, v13

    .line 2239
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixPatternHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v0

    :goto_7
    or-long/2addr v11, v0

    move-wide/from16 v5, v17

    cmp-long v0, v13, v5

    if-eqz v0, :cond_8

    if-eqz p9, :cond_7

    long-to-int v6, v5

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p8

    .line 2243
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptStringHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    goto :goto_8

    :cond_7
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 2245
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixPatternHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v0

    :goto_8
    or-long/2addr v11, v0

    :cond_8
    return-wide v11

    :cond_9
    move/from16 v8, p0

    cmp-long v2, v0, v11

    if-nez v2, :cond_a

    goto :goto_a

    .line 2261
    :cond_a
    invoke-static {v8, v9}, Lcom/ibm/icu/impl/number/Parse;->isIgnorable(ILcom/ibm/icu/impl/number/Parse$ParserState;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p9, :cond_b

    long-to-int v6, v5

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p8

    .line 2265
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptStringHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    goto :goto_9

    :cond_b
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 2267
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixPatternHelper(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v0

    :goto_9
    return-wide v0

    :cond_c
    :goto_a
    move-wide v0, v3

    goto :goto_b

    :cond_d
    move/from16 v8, p0

    move-wide v5, v3

    move v3, v7

    goto/16 :goto_1

    :cond_e
    move v7, v2

    :goto_b
    move v2, v7

    move-wide v3, v11

    :goto_c
    if-eqz p9, :cond_f

    .line 2289
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    int-to-long v5, v2

    add-long/2addr v0, v5

    goto :goto_d

    .line 2290
    :cond_f
    invoke-static {v0, v1, v10}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v0

    :goto_d
    move-wide v13, v0

    cmp-long v0, v3, v11

    if-nez v0, :cond_10

    move-wide v15, v13

    goto :goto_e

    :cond_10
    move-wide v15, v3

    :goto_e
    if-eqz p9, :cond_11

    .line 2292
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v13, v0

    if-ltz v2, :cond_12

    goto :goto_10

    :cond_11
    cmp-long v0, v13, v11

    if-gez v0, :cond_12

    goto :goto_10

    :cond_12
    if-eqz p9, :cond_13

    long-to-int v0, v13

    .line 2298
    invoke-static {v10, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_f

    .line 2299
    :cond_13
    invoke-static {v13, v14}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v0

    :goto_f
    move v2, v0

    .line 2300
    invoke-static {v2, v9}, Lcom/ibm/icu/impl/number/Parse;->isIgnorable(ILcom/ibm/icu/impl/number/Parse$ParserState;)Z

    move-result v0

    if-nez v0, :cond_15

    :goto_10
    if-eqz p9, :cond_14

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    move-wide v8, v15

    move-wide v10, v13

    .line 2305
    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/impl/number/Parse;->acceptStringNonIgnorable(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;ZIJJ)J

    move-result-wide v0

    goto :goto_11

    :cond_14
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move v5, v7

    move-wide v6, v15

    move-wide v8, v13

    .line 2307
    invoke-static/range {v0 .. v9}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixPatternNonIgnorable(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IJJ)J

    move-result-wide v0

    :goto_11
    return-wide v0

    :cond_15
    move-wide v0, v13

    move-wide v3, v15

    goto :goto_c
.end method

.method private static acceptSuffix(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 8

    .line 1799
    iget-object v0, p3, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    if-eqz v0, :cond_0

    .line 1800
    iget-object v5, p3, Lcom/ibm/icu/impl/number/Parse$StateItem;->affix:Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    const/4 v6, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixHolder(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$AffixHolder;Z)V

    goto :goto_1

    .line 1802
    :cond_0
    iget-object v0, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/ibm/icu/impl/number/Parse$AffixHolder;

    const/4 v7, 0x0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1803
    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/impl/number/Parse;->acceptAffixHolder(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$AffixHolder;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static acceptWhitespace(ILcom/ibm/icu/impl/number/Parse$StateName;Lcom/ibm/icu/impl/number/Parse$ParserState;Lcom/ibm/icu/impl/number/Parse$StateItem;)V
    .locals 1

    .line 1498
    sget-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_WHITESPACE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Parse$ParserState;->getNext()Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Lcom/ibm/icu/impl/number/Parse$StateItem;->copyFrom(Lcom/ibm/icu/impl/number/Parse$StateItem;Lcom/ibm/icu/impl/number/Parse$StateName;I)Lcom/ibm/icu/impl/number/Parse$StateItem;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 43
    sget-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_STRICT_COMMA_LIKE:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$100()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 43
    sget-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_STRICT_PERIOD_LIKE:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$200()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 43
    sget-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_OTHER_GROUPING_SEPARATORS:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$300()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 43
    sget-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_COMMA_LIKE:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$400()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 43
    sget-object v0, Lcom/ibm/icu/impl/number/Parse;->UNISET_PERIOD_LIKE:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method private static codePointEquals(IILcom/ibm/icu/impl/number/Parse$ParserState;)Z
    .locals 1

    .line 2469
    iget-boolean p2, p2, Lcom/ibm/icu/impl/number/Parse$ParserState;->caseSensitive:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 2470
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p0

    .line 2471
    invoke-static {p1, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p1

    :cond_0
    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIgnorable(ILcom/ibm/icu/impl/number/Parse$ParserState;)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p0, :cond_0

    return v0

    .line 2488
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/number/Parse;->UNISET_BIDI:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2489
    :cond_1
    iget-object p1, p1, Lcom/ibm/icu/impl/number/Parse$ParserState;->mode:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/ibm/icu/impl/number/Parse;->UNISET_WHITESPACE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static makeDigitTrie([Ljava/lang/String;)Lcom/ibm/icu/impl/TextTrieMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 972
    aget-object v3, p0, v1

    .line 973
    invoke-static {v3, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 982
    :cond_2
    new-instance v1, Lcom/ibm/icu/impl/TextTrieMap;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    :goto_2
    if-ge v0, v2, :cond_3

    .line 984
    aget-object v3, p0, v0

    int-to-byte v4, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lcom/ibm/icu/impl/number/Parse$IProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    .line 1057
    invoke-static {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/number/Parse;->_parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;ZLcom/ibm/icu/impl/number/Parse$IProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/Parse$StateItem;->toNumber(Lcom/ibm/icu/impl/number/Parse$IProperties;)Ljava/lang/Number;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lcom/ibm/icu/impl/number/Parse$IProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/util/CurrencyAmount;
    .locals 1

    if-nez p1, :cond_0

    .line 1070
    sget-object p1, Lcom/ibm/icu/impl/number/Parse;->threadLocalParsePosition:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    .line 1071
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v0, -0x1

    .line 1072
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_0
    const/4 v0, 0x1

    .line 1074
    invoke-static {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/number/Parse;->_parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;ZLcom/ibm/icu/impl/number/Parse$IProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/Parse$StateItem;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 1075
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/Parse$StateItem;->toCurrencyAmount(Lcom/ibm/icu/impl/number/Parse$IProperties;)Lcom/ibm/icu/util/CurrencyAmount;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static recordDigit(Lcom/ibm/icu/impl/number/Parse$StateItem;BLcom/ibm/icu/impl/number/Parse$DigitType;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1609
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/Parse$StateItem;->appendDigit(BLcom/ibm/icu/impl/number/Parse$DigitType;)V

    .line 1610
    sget-object p1, Lcom/ibm/icu/impl/number/Parse$DigitType;->INTEGER:Lcom/ibm/icu/impl/number/Parse$DigitType;

    if-ne p2, p1, :cond_1

    iget-wide p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    const-wide/16 v0, 0xf

    and-long/2addr p1, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 1611
    iget-wide p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/ibm/icu/impl/number/Parse$StateItem;->groupingWidths:J

    :cond_1
    return-void
.end method
