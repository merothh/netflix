.class public Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;
.super Lcom/ibm/icu/impl/number/Modifier$BaseModifier;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final compiledPattern:Ljava/lang/String;

.field private final field:Lcom/ibm/icu/text/NumberFormat$Field;

.field private final strong:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Modifier$BaseModifier;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "\u0001\u0000"

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->compiledPattern:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 24
    iput-boolean p3, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->strong:Z

    return-void
.end method

.method public static formatAsPrefixSuffix(Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;IILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit16 v2, v2, -0x100

    if-eqz p1, :cond_0

    const/4 v6, 0x2

    add-int/lit8 v7, v2, 0x2

    move-object v3, p1

    move v4, p2

    move-object v5, p0

    move-object v8, p4

    .line 84
    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;IILcom/ibm/icu/text/NumberFormat$Field;)I

    :cond_0
    add-int/2addr v0, v2

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 89
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v2, p2, :cond_3

    .line 90
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit16 p2, p2, -0x100

    if-eqz p1, :cond_2

    add-int v4, p3, v0

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v2, p2

    add-int/lit8 v7, v2, 0x1

    move-object v3, p1

    move-object v5, p0

    move-object v8, p4

    .line 92
    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;IILcom/ibm/icu/text/NumberFormat$Field;)I

    :cond_2
    add-int/2addr v0, p2

    :cond_3
    return v0
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->compiledPattern:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->formatAsPrefixSuffix(Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    return p1
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 0

    .line 128
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isStrong()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->strong:Z

    return v0
.end method

.method public length()I
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->compiledPattern:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v2, v1}, Lcom/ibm/icu/impl/number/modifiers/SimpleModifier;->formatAsPrefixSuffix(Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    return v0
.end method
