.class public final Lcom/ibm/icu/impl/UPropertyAliases;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;


# instance fields
.field private bytesTries:[B

.field private nameGroups:Ljava/lang/String;

.field private valueMaps:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    new-instance v0, Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UPropertyAliases$1;)V

    sput-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;

    .line 226
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UPropertyAliases;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Ljava/util/MissingResourceException;

    const-string v2, ""

    const-string v3, "Could not construct UPropertyAliases. Missing pnames.icu"

    invoke-direct {v1, v3, v2, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, v0}, Ljava/util/MissingResourceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 232
    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pnames.icu"

    .line 118
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UPropertyAliases;->load(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static asciiToLowercase(I)I
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    :cond_0
    return p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 339
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x5f

    const/16 v7, 0x2d

    const/16 v8, 0x20

    if-ge v1, v5, :cond_1

    .line 340
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_0

    if-eq v3, v7, :cond_0

    if-eq v3, v6, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :cond_0
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 351
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_2

    packed-switch v4, :pswitch_data_1

    goto :goto_2

    :cond_2
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v1, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 363
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v2, v7, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v5, :cond_7

    if-eqz v6, :cond_6

    return v0

    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_8

    const/4 v4, 0x0

    .line 371
    :cond_8
    :goto_5
    invoke-static {v3}, Lcom/ibm/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v5

    invoke-static {v4}, Lcom/ibm/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v5, :cond_9

    return v5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private containsName(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/CharSequence;)Z
    .locals 5

    .line 203
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 204
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 205
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0x9

    if-gt v4, v3, :cond_0

    const/16 v4, 0xd

    if-gt v3, v4, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    invoke-virtual {v2}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 213
    :cond_1
    invoke-static {v3}, Lcom/ibm/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v2

    .line 214
    invoke-virtual {p1, v2}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {v2}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result p1

    return p1
.end method

.method private findProperty(I)I
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMaps:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    :goto_0
    if-lez v0, :cond_2

    .line 126
    iget-object v3, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 127
    aget v3, v3, v5

    add-int/lit8 v2, v2, 0x2

    if-ge p1, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ge p1, v3, :cond_1

    sub-int/2addr p1, v4

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    return v2

    :cond_1
    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private getPropertyOrValueEnum(ILjava/lang/CharSequence;)I
    .locals 2

    .line 272
    new-instance v0, Lcom/ibm/icu/util/BytesTrie;

    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases;->bytesTries:[B

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/BytesTrie;-><init>([BI)V

    .line 273
    invoke-direct {p0, v0, p2}, Lcom/ibm/icu/impl/UPropertyAliases;->containsName(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private load(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 82
    sget-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/UPropertyAliases$IsAcceptable;

    const v1, 0x706e616d

    invoke-static {p1, v1, v0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 87
    new-array v1, v0, [I

    mul-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    .line 88
    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_0
    aget v0, v1, v3

    .line 95
    aget v2, v1, v2

    sub-int v0, v2, v0

    .line 96
    div-int/lit8 v0, v0, 0x4

    .line 97
    invoke-static {p1, v0, v3}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMaps:[I

    const/4 v0, 0x2

    .line 101
    aget v0, v1, v0

    sub-int v2, v0, v2

    .line 103
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases;->bytesTries:[B

    .line 104
    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases;->bytesTries:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    .line 108
    aget v1, v1, v2

    sub-int/2addr v1, v0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    if-ge v3, v1, :cond_1

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    return-void

    .line 85
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "pnames.icu: not enough indexes"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getPropertyEnum(Ljava/lang/CharSequence;)I
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .locals 3

    .line 293
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->findProperty(I)I

    move-result v0

    const-string v1, " (0x"

    if-eqz v0, :cond_1

    .line 298
    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    if-eqz v0, :cond_0

    .line 306
    aget p1, v2, v0

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    move-result p1

    return p1

    .line 300
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") does not have named values"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 295
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid property enum "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
