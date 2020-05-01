.class public final enum Lcom/netflix/mediaclient/service/net/NetworkType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/net/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum b:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum c:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum d:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum e:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum f:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum g:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum h:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum i:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum j:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum k:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum l:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum m:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum n:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum o:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum p:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum q:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum r:Lcom/netflix/mediaclient/service/net/NetworkType;

.field private static final synthetic w:[Lcom/netflix/mediaclient/service/net/NetworkType;


# instance fields
.field private s:I

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const/high16 v3, -0x80000000

    const-string v4, "NONE"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->a:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/4 v2, 0x1

    const-string v3, "UNKNOWN"

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->b:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/4 v3, 0x2

    const-string v4, "EDGE"

    const-string v5, "EDGE"

    invoke-direct {v0, v4, v3, v3, v5}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->c:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/4 v4, 0x3

    const-string v5, "UMTS"

    const-string v6, "UMTS"

    invoke-direct {v0, v5, v4, v4, v6}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->d:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/4 v5, 0x4

    const-string v6, "CDMA"

    const-string v7, "CDMA"

    invoke-direct {v0, v6, v5, v5, v7}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->e:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/4 v6, 0x5

    const-string v7, "EVDO_0"

    const-string v8, "EVDO_0"

    invoke-direct {v0, v7, v6, v6, v8}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->f:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/4 v7, 0x6

    const-string v8, "EVDO_A"

    const-string v9, "EVDO_A"

    invoke-direct {v0, v8, v7, v7, v9}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->i:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/4 v8, 0x7

    const-string v9, "_1xRTT"

    const-string v10, "1xRTT"

    invoke-direct {v0, v9, v8, v8, v10}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->j:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v9, 0x8

    const-string v10, "HSDPA"

    const-string v11, "HSDPA"

    invoke-direct {v0, v10, v9, v9, v11}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->h:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v10, 0x9

    const-string v11, "HSUPA"

    const-string v12, "HSUPA"

    invoke-direct {v0, v11, v10, v10, v12}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->g:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v11, 0xa

    const-string v12, "HSPA"

    const-string v13, "HSPA"

    invoke-direct {v0, v12, v11, v11, v13}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->m:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v12, 0xb

    const-string v13, "IDEN"

    const-string v14, "IDEN"

    invoke-direct {v0, v13, v12, v12, v14}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->k:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v13, 0xc

    const-string v14, "EVDO_B"

    const-string v15, "EVDO_B"

    invoke-direct {v0, v14, v13, v13, v15}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->o:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v14, 0xd

    const-string v15, "LTE"

    const-string v13, "LTE"

    invoke-direct {v0, v15, v14, v14, v13}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->n:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v13, 0xe

    const-string v15, "EHRPD"

    const-string v14, "EHRPD"

    invoke-direct {v0, v15, v13, v13, v14}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->l:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string v14, "GPRS"

    const/16 v15, 0xf

    const-string v13, "GPRS"

    invoke-direct {v0, v14, v15, v2, v13}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->q:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string v13, "HSPAP"

    const/16 v14, 0x10

    const-string v12, "HSPAP"

    invoke-direct {v0, v13, v14, v15, v12}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->r:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string v12, "NR"

    const/16 v13, 0x11

    const/16 v14, 0x14

    const-string v15, "NR"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->p:Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 19
    sget-object v12, Lcom/netflix/mediaclient/service/net/NetworkType;->a:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v12, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->b:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->c:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->d:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->e:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->f:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->i:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->j:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->h:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->g:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->m:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->k:Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->o:Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->n:Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->l:Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->q:Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->r:Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->p:Lcom/netflix/mediaclient/service/net/NetworkType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->w:[Lcom/netflix/mediaclient/service/net/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/netflix/mediaclient/service/net/NetworkType;->s:I

    .line 48
    iput-object p4, p0, Lcom/netflix/mediaclient/service/net/NetworkType;->t:Ljava/lang/String;

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/service/net/NetworkType;)Z
    .locals 1

    .line 127
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->c:Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->k:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 128
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->e:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 129
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->q:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 130
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static c(Lcom/netflix/mediaclient/service/net/NetworkType;)Z
    .locals 1

    .line 141
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->n:Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(I)Lcom/netflix/mediaclient/service/net/NetworkType;
    .locals 2

    const/4 v0, 0x0

    .line 68
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/service/net/NetworkType;->values()[Lcom/netflix/mediaclient/service/net/NetworkType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 70
    invoke-static {}, Lcom/netflix/mediaclient/service/net/NetworkType;->values()[Lcom/netflix/mediaclient/service/net/NetworkType;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Lcom/netflix/mediaclient/service/net/NetworkType;->s:I

    if-ne v1, p0, :cond_0

    .line 71
    invoke-static {}, Lcom/netflix/mediaclient/service/net/NetworkType;->values()[Lcom/netflix/mediaclient/service/net/NetworkType;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/service/net/NetworkType;->a:Lcom/netflix/mediaclient/service/net/NetworkType;

    return-object p0
.end method

.method public static d(Lcom/netflix/mediaclient/service/net/NetworkType;)Z
    .locals 1

    .line 152
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->p:Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Lcom/netflix/mediaclient/service/net/NetworkType;)Z
    .locals 1

    .line 106
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->d:Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->h:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 107
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->m:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 108
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->f:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 109
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->i:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 110
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->o:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 111
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->j:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 112
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->g:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 113
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->l:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 114
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->r:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 115
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/net/NetworkType;
    .locals 1

    .line 19
    const-class v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/net/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/net/NetworkType;
    .locals 1

    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->w:[Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/net/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/net/NetworkType;

    return-object v0
.end method
