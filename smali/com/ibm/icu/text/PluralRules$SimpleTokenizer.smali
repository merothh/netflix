.class Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleTokenizer"
.end annotation


# static fields
.field static final BREAK_AND_IGNORE:Lcom/ibm/icu/text/UnicodeSet;

.field static final BREAK_AND_KEEP:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1243
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_IGNORE:Lcom/ibm/icu/text/UnicodeSet;

    .line 1244
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_KEEP:Lcom/ibm/icu/text/UnicodeSet;

    return-void

    :array_0
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x21
        0x21
        0x25
        0x25
        0x2c
        0x2c
        0x2e
        0x2e
        0x3d
        0x3d
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1248
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1249
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1250
    sget-object v5, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_IGNORE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v5, v4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ltz v3, :cond_3

    .line 1252
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v3, -0x1

    goto :goto_2

    .line 1255
    :cond_0
    sget-object v5, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_KEEP:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v5, v4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ltz v3, :cond_1

    .line 1257
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 1259
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-gez v3, :cond_3

    move v3, v2

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ltz v3, :cond_5

    .line 1266
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
