.class public final enum Lcom/ibm/icu/impl/StandardPlural;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/StandardPlural;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/StandardPlural;

.field public static final COUNT:I

.field public static final enum FEW:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum MANY:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum ONE:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum OTHER:Lcom/ibm/icu/impl/StandardPlural;

.field public static final OTHER_INDEX:I

.field public static final enum TWO:Lcom/ibm/icu/impl/StandardPlural;

.field public static final VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/StandardPlural;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ZERO:Lcom/ibm/icu/impl/StandardPlural;


# instance fields
.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const/4 v1, 0x0

    const-string v2, "ZERO"

    const-string v3, "zero"

    invoke-direct {v0, v2, v1, v3}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->ZERO:Lcom/ibm/icu/impl/StandardPlural;

    .line 21
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const/4 v2, 0x1

    const-string v3, "ONE"

    const-string v4, "one"

    invoke-direct {v0, v3, v2, v4}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->ONE:Lcom/ibm/icu/impl/StandardPlural;

    .line 22
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const/4 v3, 0x2

    const-string v4, "TWO"

    const-string v5, "two"

    invoke-direct {v0, v4, v3, v5}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->TWO:Lcom/ibm/icu/impl/StandardPlural;

    .line 23
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const/4 v4, 0x3

    const-string v5, "FEW"

    const-string v6, "few"

    invoke-direct {v0, v5, v4, v6}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->FEW:Lcom/ibm/icu/impl/StandardPlural;

    .line 24
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const/4 v5, 0x4

    const-string v6, "MANY"

    const-string v7, "many"

    invoke-direct {v0, v6, v5, v7}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->MANY:Lcom/ibm/icu/impl/StandardPlural;

    .line 25
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const/4 v6, 0x5

    const-string v7, "OTHER"

    const-string v8, "other"

    invoke-direct {v0, v7, v6, v8}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ibm/icu/impl/StandardPlural;

    .line 19
    sget-object v7, Lcom/ibm/icu/impl/StandardPlural;->ZERO:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v7, v0, v1

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->ONE:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->TWO:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->FEW:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->MANY:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->$VALUES:[Lcom/ibm/icu/impl/StandardPlural;

    .line 30
    invoke-virtual {v1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    .line 37
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    .line 42
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/ibm/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    return-void
.end method

.method public static final fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .line 105
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final indexFromString(Ljava/lang/CharSequence;)I
    .locals 1

    .line 137
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p0

    return p0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 2

    .line 62
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "other"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 81
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_1
    const-string v0, "many"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->MANY:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_2
    const-string v0, "zero"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 76
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->ZERO:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_3
    const-string v0, "one"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->ONE:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_4
    const-string v0, "two"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->TWO:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_5
    const-string v0, "few"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 69
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->FEW:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final orOtherFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .line 19
    const-class v0, Lcom/ibm/icu/impl/StandardPlural;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/StandardPlural;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .line 19
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->$VALUES:[Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/StandardPlural;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/StandardPlural;

    return-object v0
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ibm/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    return-object v0
.end method
