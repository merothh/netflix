.class public Lcom/ibm/icu/text/PluralRules;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/PluralRules$RuleList;,
        Lcom/ibm/icu/text/PluralRules$Rule;,
        Lcom/ibm/icu/text/PluralRules$OrConstraint;,
        Lcom/ibm/icu/text/PluralRules$AndConstraint;,
        Lcom/ibm/icu/text/PluralRules$BinaryConstraint;,
        Lcom/ibm/icu/text/PluralRules$RangeConstraint;,
        Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;,
        Lcom/ibm/icu/text/PluralRules$Constraint;,
        Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;,
        Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;,
        Lcom/ibm/icu/text/PluralRules$SampleType;,
        Lcom/ibm/icu/text/PluralRules$FixedDecimal;,
        Lcom/ibm/icu/text/PluralRules$IFixedDecimal;,
        Lcom/ibm/icu/text/PluralRules$Operand;,
        Lcom/ibm/icu/text/PluralRules$PluralType;,
        Lcom/ibm/icu/text/PluralRules$Factory;
    }
.end annotation


# static fields
.field static final ALLOWED_ID:Lcom/ibm/icu/text/UnicodeSet;

.field static final AND_SEPARATED:Ljava/util/regex/Pattern;

.field static final AT_SEPARATED:Ljava/util/regex/Pattern;

.field static final COMMA_SEPARATED:Ljava/util/regex/Pattern;

.field public static final DEFAULT:Lcom/ibm/icu/text/PluralRules;

.field private static final DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

.field static final DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

.field private static final NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

.field static final OR_SEPARATED:Ljava/util/regex/Pattern;

.field static final SEMI_SEPARATED:Ljava/util/regex/Pattern;

.field static final TILDE_SEPARATED:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Lcom/ibm/icu/text/PluralRules$RuleList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 172
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[a-z]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->ALLOWED_ID:Lcom/ibm/icu/text/UnicodeSet;

    .line 355
    new-instance v0, Lcom/ibm/icu/text/PluralRules$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/PluralRules$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 377
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Rule;

    sget-object v1, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    const/4 v2, 0x0

    const-string v3, "other"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/ibm/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

    .line 413
    new-instance v0, Lcom/ibm/icu/text/PluralRules;

    new-instance v1, Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/PluralRules$RuleList;-><init>(Lcom/ibm/icu/text/PluralRules$1;)V

    sget-object v2, Lcom/ibm/icu/text/PluralRules;->DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/PluralRules$RuleList;->addRule(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$RuleList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/PluralRules;-><init>(Lcom/ibm/icu/text/PluralRules$RuleList;)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    const-string v0, "\\s*\\Q\\E@\\s*"

    .line 1448
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*or\\s*"

    .line 1449
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*and\\s*"

    .line 1450
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*,\\s*"

    .line 1451
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*\\Q..\\E\\s*"

    .line 1452
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*~\\s*"

    .line 1453
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*;\\s*"

    .line 1454
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/PluralRules$RuleList;)V
    .locals 0

    .line 2046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2047
    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    .line 2048
    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->getKeywords()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$500(Ljava/lang/StringBuilder;DDZ)V
    .locals 0

    .line 170
    invoke-static/range {p0 .. p5}, Lcom/ibm/icu/text/PluralRules;->addRange(Ljava/lang/StringBuilder;DDZ)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;
    .locals 0

    .line 170
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object p0

    return-object p0
.end method

.method private static addRange(Ljava/lang/StringBuilder;DDZ)V
    .locals 0

    if-eqz p5, :cond_0

    const-string p5, ","

    .line 1657
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    cmpl-double p5, p1, p3

    if-nez p5, :cond_1

    .line 1660
    invoke-static {p1, p2}, Lcom/ibm/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1662
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/ibm/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/ibm/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static createRules(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    .locals 0

    .line 402
    :try_start_0
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;
    .locals 2

    .line 1964
    invoke-static {}, Lcom/ibm/icu/text/PluralRules$Factory;->getDefaultFactory()Lcom/ibm/icu/impl/PluralRulesLoader;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/PluralRulesLoader;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method public static forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;
    .locals 1

    .line 2008
    invoke-static {}, Lcom/ibm/icu/text/PluralRules$Factory;->getDefaultFactory()Lcom/ibm/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/PluralRulesLoader;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method private static format(D)Ljava/lang/String;
    .locals 5

    double-to-long v0, p0

    long-to-double v2, v0

    cmpl-double v4, p0, v2

    if-nez v4, :cond_0

    .line 1668
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static isValidKeyword(Ljava/lang/String;)Z
    .locals 1

    .line 2040
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->ALLOWED_ID:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1468
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 1469
    aget-object p0, p0, p1

    return-object p0

    .line 1471
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "missing token at end of \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static parseConstraint(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Constraint;
    .locals 33

    .line 1301
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1302
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_21

    .line 1304
    sget-object v5, Lcom/ibm/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1305
    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_1f

    .line 1306
    sget-object v8, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 1308
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1309
    invoke-static {v9}, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1319
    aget-object v15, v10, v2

    .line 1323
    :try_start_0
    invoke-static {v15}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getOperand(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Operand;

    move-result-object v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    array-length v15, v10

    const/4 v1, 0x1

    if-ge v1, v15, :cond_1d

    .line 1328
    aget-object v8, v10, v1

    const-string v15, "mod"

    .line 1329
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/4 v1, 0x2

    if-nez v15, :cond_1

    const-string v15, "%"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_2

    :cond_0
    const/4 v15, 0x2

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v8, 0x3

    .line 1330
    aget-object v15, v10, v1

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v17, 0x4

    .line 1331
    invoke-static {v10, v8, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v2, v15

    const/4 v15, 0x4

    :goto_3
    const-string v11, "not"

    .line 1333
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "="

    if-eqz v12, :cond_3

    add-int/lit8 v8, v15, 0x1

    .line 1335
    invoke-static {v10, v15, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1336
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    :goto_4
    move v15, v8

    const/4 v8, 0x0

    goto :goto_5

    .line 1337
    :cond_2
    invoke-static {v12, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_3
    const-string v12, "!"

    .line 1339
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v8, v15, 0x1

    .line 1341
    invoke-static {v10, v15, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1342
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_4

    .line 1343
    :cond_4
    invoke-static {v12, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_5
    move-object v12, v8

    const/4 v8, 0x1

    :goto_5
    const-string v14, "is"

    .line 1346
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v1, "in"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const-string v1, "within"

    .line 1352
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v15, 0x1

    .line 1354
    invoke-static {v10, v15, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move v13, v1

    const/4 v1, 0x0

    const/4 v14, 0x0

    goto :goto_8

    .line 1356
    :cond_7
    invoke-static {v12, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1347
    :cond_8
    :goto_6
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v8, :cond_9

    goto :goto_7

    .line 1349
    :cond_9
    invoke-static {v12, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_7
    add-int/lit8 v12, v15, 0x1

    .line 1351
    invoke-static {v10, v15, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v32, v13

    move v13, v12

    move-object/from16 v12, v32

    .line 1358
    :goto_8
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-nez v1, :cond_c

    if-eqz v8, :cond_b

    goto :goto_9

    .line 1360
    :cond_b
    invoke-static {v12, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_9
    xor-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v13, 0x1

    .line 1363
    invoke-static {v10, v13, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_d
    move v11, v13

    .line 1366
    :goto_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v20, v14

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    const-wide/high16 v5, -0x3c20000000000000L    # -9.223372036854776E18

    .line 1370
    :goto_b
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v30, v0

    .line 1372
    array-length v0, v10

    move-object/from16 v16, v12

    const-string v12, ","

    if-ge v11, v0, :cond_13

    add-int/lit8 v0, v11, 0x1

    .line 1373
    invoke-static {v10, v11, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v31, v7

    const-string v7, "."

    .line 1374
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    add-int/lit8 v11, v0, 0x1

    .line 1375
    invoke-static {v10, v0, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1376
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    add-int/lit8 v0, v11, 0x1

    .line 1379
    invoke-static {v10, v11, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1380
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1381
    array-length v11, v10

    if-ge v0, v11, :cond_f

    add-int/lit8 v11, v0, 0x1

    .line 1382
    invoke-static {v10, v0, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1383
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_c

    .line 1385
    :cond_e
    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_f
    move v11, v0

    move-object v0, v7

    :goto_c
    move/from16 v18, v8

    move-wide/from16 v7, v16

    goto :goto_d

    .line 1377
    :cond_10
    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1388
    :cond_11
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    move/from16 v18, v8

    move-wide v7, v14

    move-object/from16 v32, v11

    move v11, v0

    move-object/from16 v0, v32

    goto :goto_d

    .line 1390
    :cond_12
    invoke-static {v11, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_13
    move-object/from16 v31, v7

    move/from16 v18, v8

    move-wide v7, v14

    move-object/from16 v0, v16

    :goto_d
    cmp-long v16, v14, v7

    if-gtz v16, :cond_1c

    move-object/from16 v17, v0

    move/from16 v16, v1

    if-eqz v2, :cond_15

    int-to-long v0, v2

    cmp-long v21, v7, v0

    if-gez v21, :cond_14

    goto :goto_e

    .line 1397
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ">mod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1399
    :cond_15
    :goto_e
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    long-to-double v0, v14

    .line 1401
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    long-to-double v0, v7

    .line 1402
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 1403
    array-length v0, v10

    if-lt v11, v0, :cond_1b

    move-object/from16 v0, v17

    .line 1409
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1413
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    const/16 v25, 0x0

    goto :goto_10

    .line 1416
    :cond_16
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v0, 0x0

    .line 1417
    :goto_f
    array-length v7, v1

    if-ge v0, v7, :cond_17

    .line 1418
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_17
    move-object/from16 v25, v1

    :goto_10
    cmpl-double v0, v3, v5

    if-eqz v0, :cond_19

    if-eqz v16, :cond_19

    if-eqz v18, :cond_18

    goto :goto_11

    :cond_18
    const-string v0, "is not <range>"

    .line 1424
    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1427
    :cond_19
    :goto_11
    new-instance v0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;

    move-object/from16 v16, v0

    move/from16 v17, v2

    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    invoke-direct/range {v16 .. v25}, Lcom/ibm/icu/text/PluralRules$RangeConstraint;-><init>(IZLcom/ibm/icu/text/PluralRules$Operand;ZDD[J)V

    goto :goto_12

    .line 1410
    :cond_1a
    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v1, 0x2

    add-int/lit8 v0, v11, 0x1

    .line 1406
    invoke-static {v10, v11, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move v11, v0

    move/from16 v1, v16

    move/from16 v8, v18

    move-object/from16 v0, v30

    move-object/from16 v7, v31

    goto/16 :goto_b

    .line 1395
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_1d
    move-object/from16 v30, v0

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v31, v7

    move-object v0, v8

    :goto_12
    if-nez v31, :cond_1e

    move-object v7, v0

    goto :goto_13

    .line 1434
    :cond_1e
    new-instance v1, Lcom/ibm/icu/text/PluralRules$AndConstraint;

    move-object/from16 v2, v31

    invoke-direct {v1, v2, v0}, Lcom/ibm/icu/text/PluralRules$AndConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    move-object v7, v1

    :goto_13
    add-int/lit8 v6, v29, 0x1

    move/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v0, v30

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1325
    :catch_0
    invoke-static {v15, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_1f
    move-object/from16 v30, v0

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object v2, v7

    if-nez v27, :cond_20

    move-object v4, v2

    goto :goto_14

    .line 1442
    :cond_20
    new-instance v0, Lcom/ibm/icu/text/PluralRules$OrConstraint;

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules$OrConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    move-object v4, v0

    :goto_14
    add-int/lit8 v3, v26, 0x1

    move-object/from16 v0, v30

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_21
    move-object v1, v4

    return-object v1
.end method

.method public static parseDescription(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    .locals 1

    .line 389
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 390
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ibm/icu/text/PluralRules;

    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->parseRuleChain(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$RuleList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/PluralRules;-><init>(Lcom/ibm/icu/text/PluralRules$RuleList;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;
    .locals 9

    .line 1480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    sget-object p0, Lcom/ibm/icu/text/PluralRules;->DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

    return-object p0

    .line 1484
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    .line 1486
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 1492
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1493
    invoke-static {v1}, Lcom/ibm/icu/text/PluralRules;->isValidKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 1498
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1499
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 1502
    array-length v4, v0

    const/4 v5, 0x0

    if-eq v4, v3, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1512
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v5

    .line 1513
    aget-object v4, v0, v6

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v4

    .line 1514
    iget-object v6, v5, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    sget-object v7, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-ne v6, v7, :cond_1

    iget-object v6, v4, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    sget-object v7, Lcom/ibm/icu/text/PluralRules$SampleType;->DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-ne v6, v7, :cond_1

    move-object p0, v4

    goto :goto_0

    .line 1515
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have @integer then @decimal in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1519
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many samples in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1505
    :cond_3
    aget-object p0, v0, v3

    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p0

    .line 1506
    iget-object v4, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    sget-object v6, Lcom/ibm/icu/text/PluralRules$SampleType;->DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-ne v4, v6, :cond_4

    goto :goto_0

    :cond_4
    move-object v8, v5

    move-object v5, p0

    move-object p0, v8

    goto :goto_0

    :cond_5
    move-object p0, v5

    :goto_0
    const-string v4, "other"

    .line 1526
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1527
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-ne v4, v3, :cond_8

    if-eqz v4, :cond_7

    .line 1533
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    goto :goto_2

    .line 1535
    :cond_7
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules;->parseConstraint(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Constraint;

    move-result-object v0

    .line 1537
    :goto_2
    new-instance v2, Lcom/ibm/icu/text/PluralRules$Rule;

    invoke-direct {v2, v1, v0, v5, p0}, Lcom/ibm/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;)V

    return-object v2

    .line 1528
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The keyword \'other\' must have no constraints, just samples."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1494
    :cond_9
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyword \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1488
    :cond_a
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing \':\' in rule description \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseRuleChain(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$RuleList;
    .locals 7

    .line 1548
    new-instance v0, Lcom/ibm/icu/text/PluralRules$RuleList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/PluralRules$RuleList;-><init>(Lcom/ibm/icu/text/PluralRules$1;)V

    const-string v1, ";"

    .line 1550
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1551
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1553
    :cond_0
    sget-object v1, Lcom/ibm/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 1554
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 1555
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object v4

    .line 1556
    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules$RuleList;->access$200(Lcom/ibm/icu/text/PluralRules$RuleList;)Z

    move-result v5

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules$Rule;->access$300(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules$Rule;->access$400(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x1

    :goto_2
    or-int/2addr v5, v6

    invoke-static {v0, v5}, Lcom/ibm/icu/text/PluralRules$RuleList;->access$202(Lcom/ibm/icu/text/PluralRules$RuleList;Z)Z

    .line 1557
    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/PluralRules$RuleList;->addRule(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$RuleList;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1559
    :cond_3
    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules$RuleList;->finish()Lcom/ibm/icu/text/PluralRules$RuleList;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 2484
    new-instance p1, Ljava/io/NotSerializableException;

    invoke-direct {p1}, Ljava/io/NotSerializableException;-><init>()V

    throw p1
.end method

.method private static unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3

    .line 1459
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' in \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-direct {v0, p0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .line 2479
    new-instance p1, Ljava/io/NotSerializableException;

    invoke-direct {p1}, Ljava/io/NotSerializableException;-><init>()V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 2488
    new-instance v0, Lcom/ibm/icu/text/PluralRulesSerialProxy;

    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/PluralRulesSerialProxy;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/ibm/icu/text/PluralRules;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2330
    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 2319
    instance-of v0, p1, Lcom/ibm/icu/text/PluralRules;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRules;->equals(Lcom/ibm/icu/text/PluralRules;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2121
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2058
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public select(D)Ljava/lang/String;
    .locals 2

    .line 2069
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    new-instance v1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/PluralRules$RuleList;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2097
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2310
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules$RuleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
