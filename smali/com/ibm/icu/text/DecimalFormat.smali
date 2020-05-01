.class public Lcom/ibm/icu/text/DecimalFormat;
.super Lcom/ibm/icu/text/NumberFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0xbff0362d872303aL

.field private static final threadLocalProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/ibm/icu/impl/number/Properties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient exportedProperties:Lcom/ibm/icu/impl/number/Properties;

.field volatile transient formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

.field private transient icuMathContextForm:I

.field transient properties:Lcom/ibm/icu/impl/number/Properties;

.field private final serialVersionOnStream:I

.field volatile transient symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2426
    new-instance v0, Lcom/ibm/icu/text/DecimalFormat$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/DecimalFormat$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 297
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 240
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1255
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 299
    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    .line 300
    invoke-static {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormat;->getDefaultSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 302
    new-instance v1, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    .line 303
    new-instance v1, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    .line 305
    invoke-static {v0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;Z)V

    .line 307
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V
    .locals 1

    .line 360
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 240
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1255
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 361
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 362
    new-instance p2, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {p2}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    .line 363
    new-instance p2, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {p2}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    .line 365
    invoke-static {p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result p2

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;Z)V

    .line 367
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;I)V
    .locals 2

    .line 398
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 240
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v1, 0x0

    .line 1255
    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 399
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 400
    new-instance p2, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {p2}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    .line 401
    new-instance p2, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {p2}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x9

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_1

    .line 409
    invoke-static {p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;Z)V

    goto :goto_1

    .line 410
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;Z)V

    .line 414
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method private static getDefaultSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 418
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInstance()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 18

    move-object/from16 v1, p0

    .line 517
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$GetField;->getObjectStreamClass()Ljava/io/ObjectStreamClass;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    const-string v3, "serialVersionOnStream"

    const/4 v4, -0x1

    .line 519
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_24

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 527
    array-length v0, v2

    if-gt v0, v5, :cond_0

    .line 531
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 533
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    .line 535
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 537
    new-instance v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    goto/16 :goto_7

    .line 528
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Too many fields when reading serial version 5"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_1
    new-instance v3, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v3}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v3, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    .line 545
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v7, v3, :cond_1e

    aget-object v16, v2, v7

    .line 546
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v5, "decimalSeparatorAlwaysShown"

    .line 547
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 548
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_2
    const-string v5, "exponentSignAlwaysShown"

    .line 549
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 550
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setExponentSignAlwaysShown(Z)V

    goto :goto_1

    :cond_3
    const-string v5, "formatWidth"

    .line 551
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 552
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setFormatWidth(I)V

    goto :goto_1

    :cond_4
    const-string v5, "groupingSize"

    .line 553
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v6, 0x3

    .line 554
    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setGroupingSize(I)V

    goto :goto_1

    :cond_5
    const-string v5, "groupingSize2"

    .line 555
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 556
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setSecondaryGroupingSize(I)V

    goto :goto_1

    :cond_6
    const-string v5, "maxSignificantDigits"

    .line 557
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v6, 0x6

    .line 558
    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    goto :goto_1

    :cond_7
    const-string v5, "minExponentDigits"

    .line 559
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 560
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumExponentDigits(B)V

    goto :goto_1

    :cond_8
    const-string v5, "minSignificantDigits"

    .line 561
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/4 v4, 0x1

    .line 562
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumSignificantDigits(I)V

    goto :goto_1

    :cond_9
    const/4 v4, 0x1

    const-string v5, "multiplier"

    .line 563
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 564
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setMultiplier(I)V

    goto/16 :goto_1

    :cond_a
    const-string v4, "pad"

    .line 565
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x20

    .line 566
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setPadCharacter(C)V

    goto/16 :goto_1

    :cond_b
    const-string v4, "padPosition"

    .line 567
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    .line 568
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setPadPosition(I)V

    goto/16 :goto_1

    :cond_c
    const/4 v5, 0x0

    const-string v4, "parseBigDecimal"

    .line 569
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "parseBigDecimal"

    .line 570
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setParseBigDecimal(Z)V

    goto/16 :goto_1

    :cond_d
    const-string v4, "parseRequireDecimalPoint"

    .line 571
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "parseRequireDecimalPoint"

    .line 572
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalPatternMatchRequired(Z)V

    goto/16 :goto_1

    :cond_e
    const-string v4, "roundingMode"

    .line 573
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "roundingMode"

    .line 574
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingMode(I)V

    goto/16 :goto_1

    :cond_f
    const-string v4, "useExponentialNotation"

    .line 575
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "useExponentialNotation"

    .line 576
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setScientificNotation(Z)V

    goto/16 :goto_1

    :cond_10
    const-string v4, "useSignificantDigits"

    .line 577
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "useSignificantDigits"

    .line 578
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    goto/16 :goto_1

    :cond_11
    const-string v4, "currencyPluralInfo"

    .line 579
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "currencyPluralInfo"

    const/4 v6, 0x0

    .line 580
    invoke-virtual {v0, v4, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)V

    move-object v4, v6

    goto/16 :goto_2

    :cond_12
    const/4 v4, 0x0

    const-string v5, "mathContext"

    .line 581
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "mathContext"

    .line 582
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/math/MathContext;

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setMathContextICU(Lcom/ibm/icu/math/MathContext;)V

    goto/16 :goto_2

    :cond_13
    const-string v5, "negPrefixPattern"

    .line 583
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "negPrefixPattern"

    .line 584
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v8, v5

    goto/16 :goto_2

    :cond_14
    const-string v5, "negSuffixPattern"

    .line 585
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "negSuffixPattern"

    .line 586
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v10, v5

    goto/16 :goto_2

    :cond_15
    const-string v5, "negativePrefix"

    .line 587
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "negativePrefix"

    .line 588
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v9, v5

    goto/16 :goto_2

    :cond_16
    const-string v5, "negativeSuffix"

    .line 589
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "negativeSuffix"

    .line 590
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v11, v5

    goto/16 :goto_2

    :cond_17
    const-string v5, "posPrefixPattern"

    .line 591
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "posPrefixPattern"

    .line 592
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v12, v5

    goto :goto_2

    :cond_18
    const-string v5, "posSuffixPattern"

    .line 593
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "posSuffixPattern"

    .line 594
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v14, v5

    goto :goto_2

    :cond_19
    const-string v5, "positivePrefix"

    .line 595
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "positivePrefix"

    .line 596
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v13, v5

    goto :goto_2

    :cond_1a
    const-string v5, "positiveSuffix"

    .line 597
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "positiveSuffix"

    .line 598
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v15, v5

    goto :goto_2

    :cond_1b
    const-string v5, "roundingIncrement"

    .line 599
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "roundingIncrement"

    .line 600
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V

    goto :goto_2

    :cond_1c
    const-string v5, "symbols"

    .line 601
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v5, "symbols"

    .line 602
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    :cond_1d
    :goto_2
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1e
    if-nez v8, :cond_1f

    .line 616
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v9}, Lcom/ibm/icu/impl/number/Properties;->setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_3

    .line 618
    :cond_1f
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v8}, Lcom/ibm/icu/impl/number/Properties;->setNegativePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    :goto_3
    if-nez v10, :cond_20

    .line 621
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v11}, Lcom/ibm/icu/impl/number/Properties;->setNegativeSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_4

    .line 623
    :cond_20
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/number/Properties;->setNegativeSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    :goto_4
    if-nez v12, :cond_21

    .line 626
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v13}, Lcom/ibm/icu/impl/number/Properties;->setPositivePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_5

    .line 628
    :cond_21
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v12}, Lcom/ibm/icu/impl/number/Properties;->setPositivePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    :goto_5
    if-nez v14, :cond_22

    .line 631
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v15}, Lcom/ibm/icu/impl/number/Properties;->setPositiveSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_6

    .line 633
    :cond_22
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/impl/number/Properties;->setPositiveSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 638
    :goto_6
    :try_start_0
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "groupingUsed"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 639
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 641
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "parseIntegerOnly"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 642
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 644
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "maximumIntegerDigits"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 645
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 647
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "minimumIntegerDigits"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 648
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 650
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "maximumFractionDigits"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 651
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 653
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "minimumFractionDigits"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 654
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 656
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "currency"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 657
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Currency;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 659
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "parseStrict"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 660
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setParseStrict(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    if-nez v0, :cond_23

    .line 673
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormat;->getDefaultSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 675
    :cond_23
    new-instance v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    :goto_7
    return-void

    :catch_0
    move-exception v0

    .line 669
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 667
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 665
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    .line 663
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 522
    :cond_24
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot deserialize newer com.ibm.icu.text.DecimalFormat (v"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    monitor-enter p0

    .line 503
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v0, 0x0

    .line 505
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 507
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized applyPattern(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 453
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;Z)V

    .line 456
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPositivePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 457
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 458
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPositiveSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 459
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setNegativeSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 460
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)Lcom/ibm/icu/impl/number/Properties;

    .line 461
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 488
    invoke-super {p0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    .line 489
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v1, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 490
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/Properties;->clone()Lcom/ibm/icu/impl/number/Properties;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    .line 491
    new-instance v1, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    .line 492
    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    return-object v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2335
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 2336
    monitor-exit p0

    return v1

    .line 2337
    :cond_1
    :try_start_0
    instance-of v2, p1, Lcom/ibm/icu/text/DecimalFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    monitor-exit p0

    return v0

    .line 2338
    :cond_2
    :try_start_1
    check-cast p1, Lcom/ibm/icu/text/DecimalFormat;

    .line 2339
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/number/Properties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object p1, p1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 691
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(D)V

    .line 692
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {p1, v0, p3, p4}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 693
    invoke-virtual {v0, p4}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 704
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(J)V

    .line 705
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {p1, v0, p3, p4}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 706
    invoke-virtual {v0, p4}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    return-object p3
.end method

.method public format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 744
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Ljava/math/BigDecimal;)V

    .line 745
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {p1, v0, p2, p3}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 746
    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .line 773
    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    .line 775
    monitor-enter p0

    .line 779
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/Properties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    goto :goto_0

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->copyFrom(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Properties;

    const/4 v1, 0x0

    .line 784
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 786
    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/impl/number/Properties;

    .line 787
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/Endpoint;->fromBTA(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/Format$SingularFormat;

    move-result-object v1

    .line 789
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Ljava/lang/Number;)V

    .line 790
    invoke-virtual {v1, v0, p2, p3}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 791
    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 784
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 731
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Ljava/math/BigDecimal;)V

    .line 732
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {p1, v0, p2, p3}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 733
    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 717
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Ljava/math/BigInteger;)V

    .line 718
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {p1, v0, p2, p3}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 719
    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 1

    .line 757
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 758
    check-cast p1, Ljava/lang/Number;

    .line 759
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Ljava/lang/Number;)V

    .line 760
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->formatToCharacterIterator(Lcom/ibm/icu/impl/number/FormatQuantity;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1

    .line 757
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public declared-synchronized getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    monitor-enter p0

    .line 1964
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    monitor-enter p0

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFixedDecimal(D)Lcom/ibm/icu/text/PluralRules$IFixedDecimal;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2421
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(D)V

    .line 2422
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;)Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMaximumFractionDigits()I
    .locals 1

    monitor-enter p0

    .line 1414
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->getMaximumFractionDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNegativePrefix()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRoundingMode()I
    .locals 1

    monitor-enter p0

    .line 1189
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1190
    :cond_0
    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    .line 2349
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2

    .line 802
    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    .line 803
    monitor-enter p0

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->copyFrom(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Properties;

    .line 805
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {p1, p2, v0, v1}, Lcom/ibm/icu/impl/number/Parse;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lcom/ibm/icu/impl/number/Parse$IProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Ljava/lang/Number;

    move-result-object p1

    .line 809
    instance-of p2, p1, Ljava/math/BigDecimal;

    if-eqz p2, :cond_0

    .line 810
    new-instance p2, Lcom/ibm/icu/math/BigDecimal;

    check-cast p1, Ljava/math/BigDecimal;

    invoke-direct {p2, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    move-object p1, p2

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 805
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;
    .locals 3

    const/4 v0, 0x0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {p1, p2, v1, v2}, Lcom/ibm/icu/impl/number/Parse;->parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lcom/ibm/icu/impl/number/Parse$IProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/util/CurrencyAmount;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 825
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object p2

    .line 827
    instance-of v1, p2, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 828
    new-instance v1, Lcom/ibm/icu/math/BigDecimal;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-direct {v1, p2}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    .line 829
    new-instance p2, Lcom/ibm/icu/util/CurrencyAmount;

    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/ibm/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    :cond_1
    return-object p1

    :catch_0
    return-object v0
.end method

.method refreshFormatter()V
    .locals 2

    .line 2436
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    if-nez v0, :cond_0

    return-void

    .line 2441
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/Endpoint;->fromBTA(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/Format$SingularFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    .line 2442
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->clear()Lcom/ibm/icu/impl/number/Properties;

    .line 2443
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->export(Lcom/ibm/icu/impl/number/Properties;)V

    return-void
.end method

.method public declared-synchronized setCurrency(Lcom/ibm/icu/util/Currency;)V
    .locals 3

    monitor-enter p0

    .line 1985
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/impl/number/Properties;

    if-eqz p1, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 1989
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    .line 1990
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 1992
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)V
    .locals 1

    monitor-enter p0

    .line 2063
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)Lcom/ibm/icu/impl/number/Properties;

    .line 2064
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCurrencyUsage(Lcom/ibm/icu/util/Currency$CurrencyUsage;)V
    .locals 1

    monitor-enter p0

    .line 2035
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setCurrencyUsage(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/impl/number/Properties;

    .line 2036
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2037
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V
    .locals 0

    monitor-enter p0

    .line 861
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 862
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDecimalPatternMatchRequired(Z)V
    .locals 1

    monitor-enter p0

    .line 2220
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setDecimalPatternMatchRequired(Z)Lcom/ibm/icu/impl/number/Properties;

    .line 2221
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDecimalSeparatorAlwaysShown(Z)V
    .locals 1

    monitor-enter p0

    .line 1950
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setDecimalSeparatorAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;

    .line 1951
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1952
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setExponentSignAlwaysShown(Z)V
    .locals 1

    monitor-enter p0

    .line 1788
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setExponentSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;

    .line 1789
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1790
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFormatWidth(I)V
    .locals 1

    monitor-enter p0

    .line 1630
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setFormatWidth(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1631
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGroupingSize(I)V
    .locals 1

    monitor-enter p0

    .line 1861
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1862
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGroupingUsed(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1825
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_0

    .line 1827
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1828
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1830
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMathContext(Ljava/math/MathContext;)V
    .locals 1

    monitor-enter p0

    .line 1249
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMathContext(Ljava/math/MathContext;)Lcom/ibm/icu/impl/number/Properties;

    .line 1250
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMathContextICU(Lcom/ibm/icu/math/MathContext;)V
    .locals 2

    monitor-enter p0

    .line 1283
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/math/MathContext;->getForm()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 1285
    invoke-virtual {p1}, Lcom/ibm/icu/math/MathContext;->getLostDigits()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    new-instance v0, Ljava/math/MathContext;

    invoke-virtual {p1}, Lcom/ibm/icu/math/MathContext;->getDigits()I

    move-result p1

    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-direct {v0, p1, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    goto :goto_0

    .line 1291
    :cond_0
    new-instance v0, Ljava/math/MathContext;

    .line 1293
    invoke-virtual {p1}, Lcom/ibm/icu/math/MathContext;->getDigits()I

    move-result v1

    invoke-virtual {p1}, Lcom/ibm/icu/math/MathContext;->getRoundingMode()I

    move-result p1

    invoke-static {p1}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1295
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMathContext(Ljava/math/MathContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaximumFractionDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1437
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1438
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaximumIntegerDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1361
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1362
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaximumSignificantDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1540
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1541
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumExponentDigits(B)V
    .locals 1

    monitor-enter p0

    .line 1759
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1760
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1761
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumFractionDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1401
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1402
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumIntegerDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1328
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1329
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumSignificantDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1505
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1506
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1507
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMultiplier(I)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1089
    :try_start_0
    div-int/lit8 v3, v1, 0xa

    mul-int/lit8 v4, v3, 0xa

    if-eq v4, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v0, v2, :cond_2

    .line 1097
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_2

    .line 1099
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMultiplier(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    .line 1101
    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    monitor-exit p0

    return-void

    .line 1081
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multiplier must be nonzero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNegativePrefix(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 931
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 932
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPadCharacter(C)V
    .locals 1

    monitor-enter p0

    .line 1663
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 1664
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPadPosition(I)V
    .locals 1

    monitor-enter p0

    .line 1697
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-static {p1}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->fromOld(I)Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setPadPosition(Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;)Lcom/ibm/icu/impl/number/Properties;

    .line 1698
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseBigDecimal(Z)V
    .locals 1

    monitor-enter p0

    .line 2096
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setParseToBigDecimal(Z)Lcom/ibm/icu/impl/number/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2098
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseIntegerOnly(Z)V
    .locals 1

    monitor-enter p0

    .line 2169
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setParseIntegerOnly(Z)Lcom/ibm/icu/impl/number/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseStrict(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2139
    :try_start_0
    sget-object p1, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 2140
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setParseMode(Lcom/ibm/icu/impl/number/Parse$ParseMode;)Lcom/ibm/icu/impl/number/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setPropertiesFromPattern(Ljava/lang/String;Z)V
    .locals 1

    .line 2455
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/number/PatternString;->parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V

    return-void
.end method

.method public declared-synchronized setRoundingIncrement(Ljava/math/BigDecimal;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1139
    :try_start_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    monitor-exit p0

    return-void

    .line 1144
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    .line 1145
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoundingMode(I)V
    .locals 1

    monitor-enter p0

    .line 1217
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-static {p1}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/Properties;

    .line 1218
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setScientificNotation(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1728
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_0

    .line 1730
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1732
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecondaryGroupingSize(I)V
    .locals 1

    monitor-enter p0

    .line 1893
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1894
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1895
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignificantDigitsUsed(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1470
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1471
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_0

    .line 1473
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1474
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1475
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setSignificantDigitsMode(Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;)Lcom/ibm/icu/impl/number/Properties;

    .line 1477
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toPattern()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 2393
    :try_start_0
    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->copyFrom(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Properties;

    move-result-object v0

    .line 2394
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-static {v1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->useCurrency(Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2395
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/Properties;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 2396
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/Properties;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 2397
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/Properties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    .line 2399
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/number/PatternString;->propertiesToString(Lcom/ibm/icu/impl/number/Properties;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 2363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " { symbols@"

    .line 2365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2367
    monitor-enter p0

    .line 2368
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/number/Properties;->toStringBare(Ljava/lang/StringBuilder;)V

    .line 2369
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, " }"

    .line 2370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2369
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
