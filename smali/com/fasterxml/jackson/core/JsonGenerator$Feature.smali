.class public final enum Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/JsonGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum b:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum c:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum d:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum e:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum f:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum g:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum h:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum i:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum j:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field private static final synthetic l:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;


# instance fields
.field private final k:I

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 51
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->b:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 63
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v3, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v3, v1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->d:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 76
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v3, 0x2

    const-string v4, "FLUSH_PASSED_TO_STREAM"

    invoke-direct {v0, v4, v3, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->e:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 89
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v4, 0x3

    const-string v5, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v5, v4, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->c:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 103
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v5, 0x4

    const-string v6, "QUOTE_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v6, v5, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->a:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 120
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v6, 0x5

    const-string v7, "WRITE_NUMBERS_AS_STRINGS"

    invoke-direct {v0, v7, v6, v2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->j:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 132
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v7, 0x6

    const-string v8, "WRITE_BIGDECIMAL_AS_PLAIN"

    invoke-direct {v0, v8, v7, v2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->g:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 149
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v8, 0x7

    const-string v9, "ESCAPE_NON_ASCII"

    invoke-direct {v0, v9, v8, v2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->i:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 192
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/16 v9, 0x8

    const-string v10, "STRICT_DUPLICATE_DETECTION"

    invoke-direct {v0, v10, v9, v2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->h:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 214
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/16 v10, 0x9

    const-string v11, "IGNORE_UNKNOWN"

    invoke-direct {v0, v11, v10, v2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->f:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 35
    sget-object v11, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->b:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v11, v0, v2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->d:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v2, v0, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->e:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->c:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->a:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->j:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->g:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->i:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v8

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->h:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v9

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->f:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v10

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->l:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 236
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->n:Z

    .line 237
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->k:I

    return-void
.end method

.method public static a()I
    .locals 6

    .line 227
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->values()[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 228
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->d()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .locals 1

    .line 35
    const-class v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .locals 1

    .line 35
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->l:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->n:Z

    return v0
.end method

.method public c(I)Z
    .locals 1

    .line 245
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->k:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->k:I

    return v0
.end method
