.class final Lcom/ibm/icu/text/CollatorServiceShim;
.super Lcom/ibm/icu/text/Collator$ServiceShim;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CollatorServiceShim$CService;
    }
.end annotation


# static fields
.field private static service:Lcom/ibm/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    new-instance v0, Lcom/ibm/icu/text/CollatorServiceShim$CService;

    invoke-direct {v0}, Lcom/ibm/icu/text/CollatorServiceShim$CService;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator$ServiceShim;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/ibm/icu/text/CollatorServiceShim;->makeInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method private static final makeInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
    .locals 2

    .line 182
    new-instance v0, Lcom/ibm/icu/util/Output;

    sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 184
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/coll/CollationLoader;->loadTailoring(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/impl/coll/CollationTailoring;

    move-result-object p0

    .line 185
    new-instance v1, Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v0, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;-><init>(Lcom/ibm/icu/impl/coll/CollationTailoring;Lcom/ibm/icu/util/ULocale;)V

    return-object v1
.end method


# virtual methods
.method getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/ibm/icu/util/ULocale;

    .line 39
    sget-object v2, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v2, p1, v1}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/Collator;

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/ibm/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/Collator;

    return-object p1

    .line 43
    :cond_0
    new-instance p1, Ljava/util/MissingResourceException;

    const-string v1, "Could not locate Collator data"

    invoke-direct {p1, v1, v0, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
