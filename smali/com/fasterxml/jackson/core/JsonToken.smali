.class public final enum Lcom/fasterxml/jackson/core/JsonToken;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum b:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum c:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum d:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum e:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum f:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum g:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum h:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum i:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum j:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum m:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum n:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum o:Lcom/fasterxml/jackson/core/JsonToken;

.field private static final synthetic w:[Lcom/fasterxml/jackson/core/JsonToken;


# instance fields
.field final k:[C

.field final l:Ljava/lang/String;

.field final p:Z

.field final q:I

.field final r:Z

.field final s:[B

.field final t:Z

.field final x:Z

.field final y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 31
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "NOT_AVAILABLE"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->a:Lcom/fasterxml/jackson/core/JsonToken;

    .line 37
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v3, 0x1

    const-string v4, "START_OBJECT"

    const-string v5, "{"

    invoke-direct {v0, v4, v3, v5, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    .line 43
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v4, 0x2

    const-string v5, "END_OBJECT"

    const-string v6, "}"

    invoke-direct {v0, v5, v4, v6, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v5, 0x3

    const-string v6, "START_ARRAY"

    const-string v7, "["

    invoke-direct {v0, v6, v5, v7, v5}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v6, 0x4

    const-string v7, "END_ARRAY"

    const-string v8, "]"

    invoke-direct {v0, v7, v6, v8, v6}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v7, 0x5

    const-string v8, "FIELD_NAME"

    invoke-direct {v0, v8, v7, v2, v7}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->f:Lcom/fasterxml/jackson/core/JsonToken;

    .line 73
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v8, 0xc

    const/4 v9, 0x6

    const-string v10, "VALUE_EMBEDDED_OBJECT"

    invoke-direct {v0, v10, v9, v2, v8}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 80
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v10, 0x7

    const-string v11, "VALUE_STRING"

    invoke-direct {v0, v11, v10, v2, v9}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    .line 90
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v11, 0x8

    const-string v12, "VALUE_NUMBER_INT"

    invoke-direct {v0, v12, v11, v2, v10}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->g:Lcom/fasterxml/jackson/core/JsonToken;

    .line 99
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v12, 0x9

    const-string v13, "VALUE_NUMBER_FLOAT"

    invoke-direct {v0, v13, v12, v2, v11}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->j:Lcom/fasterxml/jackson/core/JsonToken;

    .line 105
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v2, 0xa

    const-string v13, "VALUE_TRUE"

    const-string v14, "true"

    invoke-direct {v0, v13, v2, v14, v12}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->m:Lcom/fasterxml/jackson/core/JsonToken;

    .line 111
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v13, 0xb

    const-string v14, "VALUE_FALSE"

    const-string v15, "false"

    invoke-direct {v0, v14, v13, v15, v2}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->o:Lcom/fasterxml/jackson/core/JsonToken;

    .line 117
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v14, "VALUE_NULL"

    const-string v15, "null"

    invoke-direct {v0, v14, v8, v15, v13}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->n:Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonToken;

    .line 12
    sget-object v14, Lcom/fasterxml/jackson/core/JsonToken;->a:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v14, v0, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->f:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v9

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v10

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->g:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v11

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->j:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v12

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->m:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->o:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v13

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->n:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v8

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->w:[Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 143
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->l:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->k:[C

    .line 145
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->s:[B

    goto :goto_1

    .line 147
    :cond_0
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->l:Ljava/lang/String;

    .line 148
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->k:[C

    .line 150
    iget-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->k:[C

    array-length p2, p2

    .line 151
    new-array p3, p2, [B

    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->s:[B

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->s:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonToken;->k:[C

    aget-char v1, v1, p3

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    :goto_1
    iput p4, p0, Lcom/fasterxml/jackson/core/JsonToken;->q:I

    const/16 p2, 0xa

    const/4 p3, 0x1

    if-eq p4, p2, :cond_3

    const/16 p2, 0x9

    if-ne p4, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    .line 158
    :goto_3
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->y:Z

    const/4 p2, 0x7

    if-eq p4, p2, :cond_5

    const/16 p2, 0x8

    if-ne p4, p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p2, 0x1

    .line 159
    :goto_5
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->t:Z

    if-eq p4, p3, :cond_7

    const/4 p2, 0x3

    if-ne p4, p2, :cond_6

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 p2, 0x1

    .line 161
    :goto_7
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->p:Z

    const/4 p2, 0x2

    if-eq p4, p2, :cond_9

    const/4 p2, 0x4

    if-ne p4, p2, :cond_8

    goto :goto_8

    :cond_8
    const/4 p2, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 p2, 0x1

    .line 162
    :goto_9
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->r:Z

    .line 164
    iget-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->p:Z

    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->r:Z

    if-nez p2, :cond_a

    const/4 p2, 0x5

    if-eq p4, p2, :cond_a

    const/4 p2, -0x1

    if-eq p4, p2, :cond_a

    const/4 p1, 0x1

    :cond_a
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/JsonToken;->x:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 12
    const-class v0, Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 12
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->w:[Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->t:Z

    return v0
.end method
