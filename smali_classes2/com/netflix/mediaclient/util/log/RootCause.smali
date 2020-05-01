.class public final enum Lcom/netflix/mediaclient/util/log/RootCause;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/util/log/RootCause;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum b:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum c:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum d:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum e:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum f:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum g:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum h:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum i:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum j:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum k:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum l:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum m:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum n:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum o:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum p:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum q:Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum r:Lcom/netflix/mediaclient/util/log/RootCause;

.field private static final synthetic s:[Lcom/netflix/mediaclient/util/log/RootCause;

.field public static final enum t:Lcom/netflix/mediaclient/util/log/RootCause;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/4 v1, 0x0

    const-string v2, "dnsTimeout"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->d:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/4 v2, 0x1

    const-string v3, "dnsLookupFailure"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->a:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/4 v3, 0x2

    const-string v4, "tcpConnectionTimeout"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->b:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/4 v4, 0x3

    const-string v5, "tcpNoRouteToHost"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->e:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/4 v5, 0x4

    const-string v6, "tcpConnectionRefusal"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->c:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/4 v6, 0x5

    const-string v7, "sslUntrustedCert"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->i:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/4 v7, 0x6

    const-string v8, "sslExpiredCert"

    invoke-direct {v0, v8, v7}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->j:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/4 v8, 0x7

    const-string v9, "sslNoCipher"

    invoke-direct {v0, v9, v8}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->f:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v9, 0x8

    const-string v10, "sslHandshakeFailure"

    invoke-direct {v0, v10, v9}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->h:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v10, 0x9

    const-string v11, "networkFailure"

    invoke-direct {v0, v11, v10}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->g:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v11, 0xa

    const-string v12, "http4xx"

    invoke-direct {v0, v12, v11}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->l:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v12, 0xb

    const-string v13, "http5xx"

    invoke-direct {v0, v13, v12}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->n:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v13, 0xc

    const-string v14, "clientRequestBad"

    invoke-direct {v0, v14, v13}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->o:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v14, 0xd

    const-string v15, "clientFailure"

    invoke-direct {v0, v15, v14}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->m:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v15, 0xe

    const-string v14, "serverResponseBad"

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->k:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const-string v14, "serverFailure"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->q:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const-string v14, "unknownFailure"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->r:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const-string v14, "handledException"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->p:Lcom/netflix/mediaclient/util/log/RootCause;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/util/log/RootCause;

    const-string v14, "unhandledException"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/util/log/RootCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->t:Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/netflix/mediaclient/util/log/RootCause;

    .line 6
    sget-object v14, Lcom/netflix/mediaclient/util/log/RootCause;->d:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v14, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->a:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->b:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->e:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->c:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->i:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->j:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->f:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->h:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->g:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->l:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->n:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->o:Lcom/netflix/mediaclient/util/log/RootCause;

    aput-object v1, v0, v13

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->m:Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->k:Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->q:Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->r:Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->p:Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->t:Lcom/netflix/mediaclient/util/log/RootCause;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->s:[Lcom/netflix/mediaclient/util/log/RootCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/log/RootCause;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/util/log/RootCause;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/log/RootCause;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->s:[Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/log/RootCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/log/RootCause;

    return-object v0
.end method
