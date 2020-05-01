.class public Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier$PositiveNegativePluralModifier;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mods:[Lcom/ibm/icu/impl/number/Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    .line 29
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/impl/number/Modifier;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    return-void
.end method


# virtual methods
.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
    .locals 0

    .line 66
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/text/PluralRules;)V
    .locals 0

    .line 61
    invoke-interface {p1, p3}, Lcom/ibm/icu/impl/number/FormatQuantity;->getStandardPlural(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p3

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->isNegative()Z

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->getModifier(Lcom/ibm/icu/impl/StandardPlural;Z)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/number/ModifierHolder;->add(Lcom/ibm/icu/impl/number/Modifier;)V

    return-void
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 3

    .line 72
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->getModifier(Lcom/ibm/icu/impl/StandardPlural;Z)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->getModifier(Lcom/ibm/icu/impl/StandardPlural;Z)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object v1

    .line 74
    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;->exportPositiveNegative(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)V

    return-void
.end method

.method public getModifier(Lcom/ibm/icu/impl/StandardPlural;Z)Lcom/ibm/icu/impl/number/Modifier;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    aget-object p1, p1, v0

    :cond_0
    if-eqz p1, :cond_1

    return-object p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public put(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p2}, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->put(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)V

    return-void
.end method

.method public put(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    aput-object p2, v0, v1

    .line 44
    iget-object p2, p0, Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-object p3, p2, p1

    return-void
.end method
