.class public final enum Lcom/fasterxml/jackson/core/JsonParser$Feature;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum b:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum c:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum d:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum e:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum f:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum g:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum h:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum i:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum j:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum k:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum l:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum m:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum o:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field private static final synthetic q:[Lcom/fasterxml/jackson/core/JsonParser$Feature;


# instance fields
.field private final n:Z

.field private final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->a:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 77
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v3, "ALLOW_COMMENTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->d:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 91
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v3, 0x2

    const-string v4, "ALLOW_YAML_COMMENTS"

    invoke-direct {v0, v4, v3, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->c:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 102
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v4, 0x3

    const-string v5, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v5, v4, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->e:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 115
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v5, 0x4

    const-string v6, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v6, v5, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->b:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 128
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v6, 0x5

    const-string v7, "ALLOW_UNQUOTED_CONTROL_CHARS"

    invoke-direct {v0, v7, v6, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->f:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 139
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v7, 0x6

    const-string v8, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    invoke-direct {v0, v8, v7, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->i:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 151
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v8, 0x7

    const-string v9, "ALLOW_NUMERIC_LEADING_ZEROS"

    invoke-direct {v0, v9, v8, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->j:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 171
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/16 v9, 0x8

    const-string v10, "ALLOW_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v10, v9, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->g:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 189
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/16 v10, 0x9

    const-string v11, "ALLOW_MISSING_VALUES"

    invoke-direct {v0, v11, v10, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->h:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 212
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/16 v11, 0xa

    const-string v12, "ALLOW_TRAILING_COMMA"

    invoke-direct {v0, v12, v11, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->l:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 232
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/16 v12, 0xb

    const-string v13, "STRICT_DUPLICATE_DETECTION"

    invoke-direct {v0, v13, v12, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->m:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 256
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/16 v13, 0xc

    const-string v14, "IGNORE_UNDEFINED"

    invoke-direct {v0, v14, v13, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->k:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 279
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/16 v14, 0xd

    const-string v15, "INCLUDE_SOURCE_IN_LOCATION"

    invoke-direct {v0, v15, v14, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->o:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 45
    sget-object v15, Lcom/fasterxml/jackson/core/JsonParser$Feature;->a:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v15, v0, v2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->d:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v2, v0, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->c:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->e:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->b:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->f:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->i:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->j:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v8

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->g:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v9

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->h:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v10

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->l:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v11

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->m:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v12

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->k:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v13

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->o:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v14

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->q:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 306
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->s:I

    .line 307
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->n:Z

    return-void
.end method

.method public static a()I
    .locals 6

    .line 297
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->values()[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 298
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->d()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .locals 1

    .line 45
    const-class v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .locals 1

    .line 45
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->q:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonParser$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->s:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->n:Z

    return v0
.end method

.method public e(I)Z
    .locals 1

    .line 315
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->s:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
