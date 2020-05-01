.class public Lcom/ibm/icu/text/MessageFormat;
.super Lcom/ibm/icu/text/UFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;,
        Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;,
        Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;,
        Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;,
        Lcom/ibm/icu/text/MessageFormat$Field;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final dateModifierList:[Ljava/lang/String;

.field private static final modifierList:[Ljava/lang/String;

.field private static final rootLocale:Ljava/util/Locale;

.field static final serialVersionUID:J = 0x6308eb804ceb42dcL

.field private static final typeList:[Ljava/lang/String;


# instance fields
.field private transient cachedFormatters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private transient customFormatArgStarts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient msgPattern:Lcom/ibm/icu/text/MessagePattern;

.field private transient ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

.field private transient stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

.field private transient ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "number"

    const-string v1, "date"

    const-string v2, "time"

    const-string v3, "spellout"

    const-string v4, "ordinal"

    const-string v5, "duration"

    .line 2158
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    const-string v0, ""

    const-string v1, "currency"

    const-string v2, "percent"

    const-string v3, "integer"

    .line 2168
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    const-string v1, "short"

    const-string v2, "medium"

    const-string v3, "long"

    const-string v4, "full"

    .line 2177
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    .line 2311
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ibm/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 350
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 351
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 352
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 380
    iput-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 381
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ibm/icu/text/MessageFormat;)Ljava/util/Map;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ibm/icu/text/MessageFormat;)Lcom/ibm/icu/text/NumberFormat;
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ibm/icu/text/MessageFormat;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ibm/icu/text/MessageFormat;I)I
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->findOtherSubMessage(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ibm/icu/text/MessageFormat;ILjava/lang/String;)I
    .locals 0

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->findFirstPluralNumberArg(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private cacheExplicitFormats()V
    .locals 8

    .line 2397
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2398
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2400
    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2403
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2407
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 2408
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v5, :cond_1

    goto :goto_2

    .line 2411
    :cond_1
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v3

    .line 2412
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, 0x2

    .line 2417
    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v3

    .line 2419
    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    sget-object v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v6, v7, :cond_3

    .line 2420
    iget-object v6, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v6, v4}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string v4, ""

    .line 2423
    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/text/MessageFormat;->createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;

    move-result-object v3

    .line 2424
    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    move v2, v5

    :goto_2
    add-int/2addr v2, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;
    .locals 6

    .line 2191
    sget-object v0, Lcom/ibm/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_f

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v0, v2, :cond_9

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 2291
    new-instance p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, v0, v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 2293
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2294
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 2296
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2306
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown format type \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2275
    :cond_1
    new-instance p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, v0, v3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 2277
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2278
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 2280
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2259
    :cond_2
    new-instance p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, v0, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 2261
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2262
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 2264
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2236
    :cond_3
    sget-object p1, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v5, :cond_4

    .line 2253
    new-instance p1, Lcom/ibm/icu/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, p2, v0}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto/16 :goto_0

    .line 2250
    :cond_4
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v4, p1}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2247
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, p1}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2244
    :cond_6
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v3, p1}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2241
    :cond_7
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1, p1}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2238
    :cond_8
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v3, p1}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2214
    :cond_9
    sget-object p1, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_e

    if-eq p1, v2, :cond_d

    if-eq p1, v3, :cond_c

    if-eq p1, v1, :cond_b

    if-eq p1, v5, :cond_a

    .line 2231
    new-instance p1, Lcom/ibm/icu/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, p2, v0}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 2228
    :cond_a
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v4, p1}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2225
    :cond_b
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, p1}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2222
    :cond_c
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v3, p1}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2219
    :cond_d
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1, p1}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2216
    :cond_e
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v3, p1}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2194
    :cond_f
    sget-object p1, Lcom/ibm/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_13

    if-eq p1, v2, :cond_12

    if-eq p1, v3, :cond_11

    if-eq p1, v1, :cond_10

    .line 2208
    new-instance p1, Lcom/ibm/icu/text/DecimalFormat;

    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    invoke-direct {p1, p2, v0}, Lcom/ibm/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    goto :goto_0

    .line 2205
    :cond_10
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getIntegerInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 2202
    :cond_11
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getPercentInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 2199
    :cond_12
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getCurrencyInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 2196
    :cond_13
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    :catch_0
    :cond_14
    :goto_0
    return-object p1
.end method

.method private static findChoiceSubMessage(Lcom/ibm/icu/text/MessagePattern;ID)I
    .locals 6

    .line 1873
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    .line 1882
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 1888
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1889
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    .line 1890
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 1897
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v3

    add-int/lit8 v1, v2, 0x1

    .line 1899
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->getPatternIndex(I)I

    move-result v2

    .line 1900
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x3c

    if-ne v2, v5, :cond_2

    cmpl-double v2, p2, v3

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_2
    cmpl-double v2, p2, v3

    if-gez v2, :cond_3

    :goto_1
    return p1

    :cond_3
    move p1, v1

    goto :goto_0
.end method

.method private findFirstPluralNumberArg(ILjava/lang/String;)I
    .locals 3

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 2016
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 2017
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    .line 2018
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2021
    :cond_1
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_2

    const/4 p1, -0x1

    return p1

    .line 2024
    :cond_2
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_0

    .line 2025
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v0

    .line 2026
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v0, v1, :cond_4

    .line 2027
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 2028
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v0, p2}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return p1

    .line 2032
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    goto :goto_0
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 2314
    invoke-static {p0}, Lcom/ibm/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/ibm/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2315
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2316
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private findOtherSubMessage(I)I
    .locals 4

    .line 1983
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    .line 1984
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1985
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 1991
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 1992
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    .line 1993
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 1998
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    const-string v3, "other"

    invoke-virtual {v1, p1, v3}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 2001
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 2004
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_0

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v15, p3

    move-object/from16 v5, p4

    move-object/from16 v4, p5

    .line 1612
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v3

    .line 1613
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p6

    .line 1615
    :goto_0
    iget-object v8, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v8, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v8

    .line 1616
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    .line 1617
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v10

    .line 1618
    invoke-virtual {v4, v3, v1, v10}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;II)V

    .line 1619
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v9, v1, :cond_0

    return-void

    .line 1622
    :cond_0
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 1623
    sget-object v10, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v9, v10, :cond_2

    .line 1624
    iget-boolean v8, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v8, :cond_1

    .line 1626
    iget-object v8, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v9, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    iget-object v10, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v4, v8, v9, v10}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1629
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v8

    iget-object v9, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v4, v8, v9}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_1

    .line 1633
    :cond_2
    sget-object v10, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v9, v10, :cond_3

    :goto_1
    move v14, v0

    move-object v9, v3

    move-object v10, v4

    goto/16 :goto_e

    .line 1636
    :cond_3
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    .line 1637
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v8

    .line 1638
    iget-object v9, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v9

    const/4 v10, 0x0

    .line 1642
    iget-object v11, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v11, v9}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v15, :cond_6

    .line 1644
    invoke-virtual {v9}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v9

    .line 1645
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 1647
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_2

    :cond_4
    move-object v13, v12

    :goto_2
    if-ltz v9, :cond_5

    .line 1649
    array-length v14, v15

    if-ge v9, v14, :cond_5

    .line 1650
    aget-object v9, v15, v9

    move-object v12, v9

    goto :goto_3

    :cond_5
    const/4 v10, 0x1

    :goto_3
    move-object v14, v13

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    .line 1657
    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1658
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v11

    goto :goto_4

    :cond_7
    move-object v14, v11

    const/4 v10, 0x1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 1665
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v13

    if-eqz v10, :cond_8

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    :goto_5
    move-object v11, v2

    move-object v9, v3

    move-object v10, v4

    move v0, v13

    move-object v13, v14

    move v14, v1

    goto/16 :goto_d

    :cond_8
    if-nez v12, :cond_9

    const-string v0, "null"

    .line 1670
    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_b

    .line 1671
    iget v9, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    add-int/lit8 v10, v0, -0x2

    if-ne v9, v10, :cond_b

    .line 1672
    iget-wide v8, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    const-wide/16 v10, 0x0

    cmpl-double v0, v8, v10

    if-nez v0, :cond_a

    .line 1674
    iget-object v0, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v8, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    iget-object v9, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v4, v0, v8, v9}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 1678
    :cond_a
    iget-object v0, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    invoke-virtual {v4, v0, v12}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_5

    .line 1680
    :cond_b
    iget-object v9, v6, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_11

    add-int/lit8 v10, v0, -0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/Format;

    if-eqz v9, :cond_11

    .line 1682
    instance-of v0, v9, Ljava/text/ChoiceFormat;

    if-nez v0, :cond_d

    instance-of v0, v9, Lcom/ibm/icu/text/PluralFormat;

    if-nez v0, :cond_d

    instance-of v0, v9, Lcom/ibm/icu/text/SelectFormat;

    if-eqz v0, :cond_c

    goto :goto_6

    .line 1704
    :cond_c
    invoke-virtual {v4, v9, v12}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_5

    .line 1687
    :cond_d
    :goto_6
    invoke-virtual {v9, v12}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x7b

    .line 1688
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_10

    const/16 v8, 0x27

    .line 1689
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_e

    iget-object v8, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_8

    .line 1692
    :cond_e
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_f

    .line 1693
    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1701
    :cond_f
    invoke-virtual {v4, v9, v12}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    :goto_7
    move/from16 v24, v13

    move-object/from16 v25, v14

    goto :goto_9

    .line 1690
    :cond_10
    :goto_8
    new-instance v8, Lcom/ibm/icu/text/MessageFormat;

    iget-object v9, v6, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v8, v0, v9}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v24, v13

    move-object/from16 v13, p5

    move-object/from16 v25, v14

    move-object v14, v0

    .line 1691
    invoke-direct/range {v8 .. v14}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    :goto_9
    move v14, v1

    move-object v11, v2

    move-object v9, v3

    move-object v10, v4

    goto/16 :goto_c

    :cond_11
    move/from16 v24, v13

    move-object/from16 v25, v14

    .line 1706
    sget-object v9, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v8, v9, :cond_1b

    iget-object v9, v6, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_12

    add-int/lit8 v10, v0, -0x2

    .line 1708
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    goto/16 :goto_b

    .line 1720
    :cond_12
    sget-object v9, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    const-string v10, "\' is not a Number"

    const-string v13, "\'"

    if-ne v8, v9, :cond_14

    .line 1721
    instance-of v8, v12, Ljava/lang/Number;

    if-eqz v8, :cond_13

    .line 1724
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 1725
    iget-object v10, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-static {v10, v0, v8, v9}, Lcom/ibm/icu/text/MessageFormat;->findChoiceSubMessage(Lcom/ibm/icu/text/MessagePattern;ID)I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v14, v1

    move v1, v8

    move-object v8, v2

    move-object v2, v9

    move-object v9, v3

    move-object/from16 v3, p3

    move-object v11, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1726
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V

    move-object v10, v11

    move/from16 v0, v24

    move-object/from16 v13, v25

    move-object v11, v8

    goto/16 :goto_d

    .line 1722
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move v14, v1

    move-object v9, v3

    move-object v5, v4

    move-object v4, v2

    .line 1727
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1728
    instance-of v1, v12, Ljava/lang/Number;

    if-eqz v1, :cond_18

    .line 1732
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v8, v1, :cond_16

    .line 1733
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v1, :cond_15

    .line 1734
    new-instance v1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v2, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {v1, v6, v2}, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/text/PluralRules$PluralType;)V

    iput-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1736
    :cond_15
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    goto :goto_a

    .line 1738
    :cond_16
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v1, :cond_17

    .line 1739
    new-instance v1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v2, Lcom/ibm/icu/text/PluralRules$PluralType;->ORDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {v1, v6, v2}, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/text/PluralRules$PluralType;)V

    iput-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1741
    :cond_17
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1743
    :goto_a
    move-object v2, v12

    check-cast v2, Ljava/lang/Number;

    .line 1744
    iget-object v3, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v21

    .line 1745
    new-instance v3, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;

    const/16 v23, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v20, v2

    invoke-direct/range {v17 .. v23}, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;DLcom/ibm/icu/text/MessageFormat$1;)V

    .line 1747
    iget-object v8, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 1748
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v21

    move-object/from16 v17, v8

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    .line 1747
    invoke-static/range {v17 .. v22}, Lcom/ibm/icu/text/PluralFormat;->findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILcom/ibm/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result v1

    move-object/from16 v0, p0

    move-object v2, v3

    move-object/from16 v3, p3

    move-object v11, v4

    move-object/from16 v4, p4

    move-object v8, v5

    move-object/from16 v5, p5

    .line 1749
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V

    move-object v10, v8

    goto :goto_c

    .line 1729
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v11, v4

    move-object v10, v5

    .line 1750
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v8, v1, :cond_1a

    .line 1751
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ibm/icu/text/SelectFormat;->findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1752
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V

    goto :goto_c

    .line 1755
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected argType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_b
    move v14, v1

    move-object v11, v2

    move-object v9, v3

    move-object v10, v4

    .line 1711
    instance-of v0, v12, Ljava/lang/Number;

    if-eqz v0, :cond_1c

    .line 1713
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v10, v0, v12}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    :goto_c
    move/from16 v0, v24

    move-object/from16 v13, v25

    goto :goto_d

    .line 1714
    :cond_1c
    instance-of v0, v12, Ljava/util/Date;

    if-eqz v0, :cond_1d

    .line 1716
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/MessageFormat;->getStockDateFormatter()Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    invoke-virtual {v10, v0, v12}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_c

    .line 1718
    :cond_1d
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 1757
    :goto_d
    invoke-direct {v6, v10, v0, v11, v13}, Lcom/ibm/icu/text/MessageFormat;->updateMetaData(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 1758
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v14}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    move-object v2, v0

    :goto_e
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v5, p4

    move-object v3, v9

    move-object v4, v10

    goto/16 :goto_0
.end method

.method private format(Ljava/lang/Object;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2124
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2127
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto :goto_1

    .line 2125
    :cond_1
    :goto_0
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    :goto_1
    return-void
.end method

.method private format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2140
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2141
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2145
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-void
.end method

.method private formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;",
            ")V"
        }
    .end annotation

    .line 1767
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1768
    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-void

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1779
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1781
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 1782
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 1783
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    .line 1784
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v6, :cond_4

    if-nez v1, :cond_2

    .line 1786
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1788
    :cond_2
    invoke-virtual {v1, v0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/16 p2, 0x7b

    .line 1817
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_3

    .line 1818
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 1819
    sget-object p2, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1820
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto :goto_2

    .line 1822
    :cond_3
    invoke-virtual {p5, p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    .line 1791
    :cond_4
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v6, :cond_7

    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v6, :cond_5

    goto :goto_3

    .line 1805
    :cond_5
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v3, :cond_1

    if-nez v1, :cond_6

    .line 1807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1809
    :cond_6
    invoke-virtual {v1, v0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1811
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 1812
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1813
    invoke-static {v0, v5, v2, v1}, Lcom/ibm/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_0

    :cond_7
    :goto_3
    if-nez v1, :cond_8

    .line 1793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1795
    :cond_8
    invoke-virtual {v1, v0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1796
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v2, :cond_a

    .line 1797
    iget-boolean v2, p2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v2, :cond_9

    .line 1799
    iget-object v2, p2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1801
    :cond_9
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v2

    iget-object v4, p2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v2, v4}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    :cond_a
    :goto_4
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    goto/16 :goto_0
.end method

.method private getLiteralStringUntilNextArgument(I)Ljava/lang/String;
    .locals 6

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1835
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v1

    .line 1836
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 1838
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v3, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 1839
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 1840
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    .line 1841
    invoke-virtual {v0, v1, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1842
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v2, :cond_1

    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v2, :cond_0

    goto :goto_1

    .line 1847
    :cond_0
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    goto :goto_0

    .line 1843
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStockDateFormatter()Lcom/ibm/icu/text/DateFormat;
    .locals 2

    .line 1578
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    if-nez v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    const/4 v1, 0x3

    invoke-static {v1, v1, v0}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    return-object v0
.end method

.method private getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    if-nez v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method private static matchStringUntilLimitPart(Lcom/ibm/icu/text/MessagePattern;IILjava/lang/String;I)I
    .locals 6

    .line 1958
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    .line 1959
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 1961
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    if-eq p1, p2, :cond_1

    .line 1962
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_0

    .line 1963
    :cond_1
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v4

    sub-int/2addr v4, v1

    if-eqz v4, :cond_2

    .line 1965
    invoke-virtual {p3, p4, v0, v1, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    add-int/2addr v2, v4

    if-ne p1, p2, :cond_3

    return v2

    .line 1972
    :cond_3
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    goto :goto_0
.end method

.method private nextTopLevelArgStart(I)I
    .locals 2

    if-eqz p1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 538
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1

    return p1

    .line 541
    :cond_1
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method private parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    if-nez v2, :cond_0

    return-void

    .line 1240
    :cond_0
    iget-object v5, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v5}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v5

    .line 1241
    iget-object v6, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v6, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    .line 1242
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1243
    new-instance v8, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v10, 0x1

    add-int/2addr v1, v10

    .line 1246
    :goto_0
    iget-object v11, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v11, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v11

    .line 1247
    invoke-virtual {v11}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v12

    .line 1248
    invoke-virtual {v11}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v13

    sub-int/2addr v13, v6

    if-eqz v13, :cond_2

    .line 1251
    invoke-virtual {v5, v6, v2, v7, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 1255
    :cond_1
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_2
    :goto_1
    add-int/2addr v7, v13

    .line 1258
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v12, v6, :cond_3

    .line 1260
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    return-void

    .line 1263
    :cond_3
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v12, v6, :cond_14

    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v12, v6, :cond_4

    goto/16 :goto_b

    .line 1269
    :cond_4
    iget-object v6, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v6, v1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v6

    .line 1271
    invoke-virtual {v11}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v11

    .line 1272
    iget-object v12, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v12

    if-eqz p4, :cond_5

    .line 1278
    invoke-virtual {v12}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v12

    .line 1279
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v17, v14

    move v14, v12

    move-object/from16 v12, v17

    goto :goto_3

    .line 1281
    :cond_5
    invoke-virtual {v12}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v14

    sget-object v15, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v14, v15, :cond_6

    .line 1282
    iget-object v14, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v14, v12}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 1284
    :cond_6
    invoke-virtual {v12}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2
    move-object v15, v12

    const/4 v14, 0x0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 1293
    iget-object v9, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_8

    add-int/lit8 v16, v1, -0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/Format;

    if-eqz v9, :cond_8

    .line 1295
    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1296
    invoke-virtual {v9, v2, v8}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v1

    .line 1297
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    if-ne v9, v7, :cond_7

    .line 1298
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 1302
    :cond_7
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    :goto_4
    move v9, v7

    const/4 v7, 0x1

    goto/16 :goto_9

    .line 1303
    :cond_8
    sget-object v9, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v11, v9, :cond_e

    iget-object v9, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_9

    add-int/lit8 v13, v1, -0x2

    .line 1305
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    .line 1328
    :cond_9
    sget-object v9, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v11, v9, :cond_b

    .line 1329
    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1330
    iget-object v9, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-static {v9, v1, v2, v8}, Lcom/ibm/icu/text/MessageFormat;->parseChoiceArgument(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D

    move-result-wide v11

    .line 1331
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ne v1, v7, :cond_a

    .line 1332
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 1335
    :cond_a
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1337
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    goto :goto_4

    .line 1338
    :cond_b
    invoke-virtual {v11}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v11, v1, :cond_c

    goto :goto_5

    .line 1344
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected argType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1340
    :cond_d
    :goto_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Parsing of plural/select/selectordinal argument is not supported."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1310
    :cond_e
    :goto_6
    invoke-direct {v0, v6}, Lcom/ibm/icu/text/MessageFormat;->getLiteralStringUntilNextArgument(I)Ljava/lang/String;

    move-result-object v1

    .line 1312
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_f

    .line 1313
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_7

    .line 1315
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_7
    if-gez v1, :cond_10

    .line 1318
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 1321
    :cond_10
    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_8

    :cond_11
    const/4 v13, 0x0

    :goto_8
    xor-int/lit8 v7, v7, 0x1

    move v9, v1

    move-object v1, v13

    :goto_9
    if-eqz v7, :cond_13

    if-eqz p4, :cond_12

    .line 1348
    aput-object v1, p4, v14

    goto :goto_a

    :cond_12
    if-eqz v4, :cond_13

    .line 1350
    invoke-interface {v4, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    :cond_13
    :goto_a
    iget-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v6}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    move v7, v9

    move/from16 v17, v6

    move v6, v1

    move/from16 v1, v17

    goto :goto_c

    .line 1264
    :cond_14
    :goto_b
    invoke-virtual {v11}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    :goto_c
    add-int/2addr v1, v10

    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private static parseChoiceArgument(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D
    .locals 7

    .line 1917
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    move-wide v2, v1

    move v1, v0

    .line 1921
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v5, :cond_2

    .line 1922
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    add-int/lit8 p1, p1, 0x2

    .line 1924
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v6

    .line 1925
    invoke-static {p0, p1, v6, p2, v0}, Lcom/ibm/icu/text/MessageFormat;->matchStringUntilLimitPart(Lcom/ibm/icu/text/MessagePattern;IILjava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    add-int/2addr p1, v0

    if-le p1, v1, :cond_1

    .line 1931
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p1, v1, :cond_0

    move-wide v2, v4

    goto :goto_1

    :cond_0
    move v1, p1

    move-wide v2, v4

    :cond_1
    add-int/lit8 p1, v6, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_1
    if-ne p1, v0, :cond_3

    .line 1939
    invoke-virtual {p3, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_2

    .line 1941
    :cond_3
    invoke-virtual {p3, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_2
    return-wide v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 2371
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2373
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2374
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 2375
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 2376
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern;->getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2377
    :cond_0
    new-instance v1, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/MessagePattern;-><init>(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 2379
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2381
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 2384
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    .line 2385
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 2386
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    .line 2387
    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2390
    :cond_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_1
    if-lez v0, :cond_4

    .line 2391
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 2392
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 2149
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    .line 2150
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->clear()V

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2153
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 2155
    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    return-void
.end method

.method private setArgStartFormat(ILjava/text/Format;)V
    .locals 1

    .line 2432
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCustomArgStartFormat(ILjava/text/Format;)V
    .locals 0

    .line 2443
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    .line 2444
    iget-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-nez p2, :cond_0

    .line 2445
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2447
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateMetaData(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;
    .locals 3

    .line 1853
    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1854
    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;

    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v2

    invoke-direct {v1, p4, p2, v2}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 1856
    sget-object p4, Lcom/ibm/icu/text/MessageFormat$Field;->ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/ibm/icu/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1857
    invoke-virtual {p3, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1858
    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object p3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5

    .line 2337
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2340
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2342
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 2343
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0}, Lcom/ibm/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2347
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2349
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2352
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2354
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 2355
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2356
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2357
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2350
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2363
    :cond_4
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;

    .line 459
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->cacheExplicitFormats()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 461
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->resetPattern()V

    .line 462
    throw p1
.end method

.method public applyPattern(Ljava/lang/String;Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/MessagePattern;-><init>(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/MessagePattern;->clearPatternAndSetApostropheMode(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    .line 487
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .line 1425
    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessageFormat;

    .line 1427
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1428
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1429
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1430
    iget-object v4, v0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1433
    :cond_0
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1436
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1437
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1438
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1439
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1440
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1441
    iget-object v4, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1444
    :cond_2
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1447
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/MessagePattern;

    :goto_2
    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 1448
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_3

    .line 1449
    :cond_5
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormat;

    :goto_3
    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    .line 1450
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_4

    .line 1451
    :cond_6
    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/NumberFormat;

    :goto_4
    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    .line 1453
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1454
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1466
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1468
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/MessageFormat;

    .line 1469
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    iget-object v3, p1, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    iget-object v3, p1, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 1470
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    iget-object v3, p1, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1471
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    iget-object p1, p1, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1472
    invoke-static {v2, p1}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 1060
    new-instance v0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 943
    new-instance v0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 5

    if-eqz p1, :cond_1

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    new-instance v1, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuilder;)V

    .line 1108
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->useAttributes()V

    const/4 v2, 0x0

    .line 1109
    invoke-direct {p0, p1, v1, v2}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1110
    new-instance p1, Ljava/text/AttributedString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1111
    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;

    .line 1112
    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$100(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;

    move-result-object v2

    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$200(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$300(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v4

    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$400(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 1114
    :cond_0
    invoke-virtual {p1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1

    .line 1103
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 1483
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 8

    .line 1148
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1156
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1157
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1162
    new-array v0, v0, [Ljava/lang/Object;

    .line 1164
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    .line 1165
    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1166
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-ne p1, v7, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0

    .line 1149
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This method is not available in MessageFormat objects that use named argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .line 1412
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1413
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1415
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1187
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1188
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v6

    .line 1189
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1190
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-ne p1, v7, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v6
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 753
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_1

    if-ne v1, p1, :cond_0

    .line 755
    invoke-direct {p0, v0, p2}, Lcom/ibm/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    :cond_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 3

    .line 690
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 695
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 696
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 697
    invoke-direct {p0, v0, p2}, Lcom/ibm/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_1
    return-void

    .line 691
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
