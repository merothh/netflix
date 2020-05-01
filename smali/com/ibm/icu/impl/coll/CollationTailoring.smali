.class public final Lcom/ibm/icu/impl/coll/CollationTailoring;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public actualLocale:Lcom/ibm/icu/util/ULocale;

.field public data:Lcom/ibm/icu/impl/coll/CollationData;

.field public maxExpansions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ownedData:Lcom/ibm/icu/impl/coll/CollationData;

.field private rules:Ljava/lang/String;

.field private rulesResource:Lcom/ibm/icu/util/UResourceBundle;

.field public settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/coll/SharedObject$Reference<",
            "Lcom/ibm/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field trie:Lcom/ibm/icu/impl/Trie2_32;

.field unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/coll/SharedObject$Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/coll/SharedObject$Reference<",
            "Lcom/ibm/icu/impl/coll/CollationSettings;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->actualLocale:Lcom/ibm/icu/util/ULocale;

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->version:I

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->clone()Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    new-instance v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-direct {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;-><init>()V

    invoke-direct {p1, v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;-><init>(Lcom/ibm/icu/impl/coll/SharedObject;)V

    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    :goto_0
    return-void
.end method


# virtual methods
.method ensureOwnedData()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->ownedData:Lcom/ibm/icu/impl/coll/CollationData;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 49
    new-instance v1, Lcom/ibm/icu/impl/coll/CollationData;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/coll/CollationData;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V

    iput-object v1, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->ownedData:Lcom/ibm/icu/impl/coll/CollationData;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->ownedData:Lcom/ibm/icu/impl/coll/CollationData;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    return-void
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->rulesResource:Lcom/ibm/icu/util/UResourceBundle;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method getUCAVersion()I
    .locals 2

    .line 95
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->version:I

    shr-int/lit8 v1, v0, 0xc

    and-int/lit16 v1, v1, 0xff0

    shr-int/lit8 v0, v0, 0xe

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, v1

    return v0
.end method

.method setRulesResource(Lcom/ibm/icu/util/UResourceBundle;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationTailoring;->rulesResource:Lcom/ibm/icu/util/UResourceBundle;

    return-void
.end method
