.class public final enum Lfi/iki/elonen/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum b:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum c:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum d:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum e:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum f:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum g:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum h:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum i:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum j:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum k:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum l:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum m:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum n:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum o:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum r:Lfi/iki/elonen/NanoHTTPD$Method;

.field private static final synthetic t:[Lfi/iki/elonen/NanoHTTPD$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1294
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->e:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1295
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v2, 0x1

    const-string v3, "PUT"

    invoke-direct {v0, v3, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->a:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1296
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v3, 0x2

    const-string v4, "POST"

    invoke-direct {v0, v4, v3}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->d:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1297
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v4, 0x3

    const-string v5, "DELETE"

    invoke-direct {v0, v5, v4}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->b:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1298
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v5, 0x4

    const-string v6, "HEAD"

    invoke-direct {v0, v6, v5}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->c:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1299
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v6, 0x5

    const-string v7, "OPTIONS"

    invoke-direct {v0, v7, v6}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->i:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1300
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v7, 0x6

    const-string v8, "TRACE"

    invoke-direct {v0, v8, v7}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->h:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1301
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v8, 0x7

    const-string v9, "CONNECT"

    invoke-direct {v0, v9, v8}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->f:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1302
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v9, 0x8

    const-string v10, "PATCH"

    invoke-direct {v0, v10, v9}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->g:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1303
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v10, 0x9

    const-string v11, "PROPFIND"

    invoke-direct {v0, v11, v10}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->j:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1304
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v11, 0xa

    const-string v12, "PROPPATCH"

    invoke-direct {v0, v12, v11}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->o:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1305
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v12, 0xb

    const-string v13, "MKCOL"

    invoke-direct {v0, v13, v12}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->n:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1306
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v13, 0xc

    const-string v14, "MOVE"

    invoke-direct {v0, v14, v13}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->m:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1307
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v14, 0xd

    const-string v15, "COPY"

    invoke-direct {v0, v15, v14}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->k:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1308
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v15, 0xe

    const-string v14, "LOCK"

    invoke-direct {v0, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->l:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1309
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v14, "UNLOCK"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->r:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v0, 0x10

    new-array v0, v0, [Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1293
    sget-object v14, Lfi/iki/elonen/NanoHTTPD$Method;->e:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v14, v0, v1

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->a:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->d:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v3

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->b:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v4

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->c:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v5

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->i:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v6

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->h:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v7

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->f:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v8

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->g:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v9

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->j:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v10

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->o:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v11

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->n:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v12

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->m:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v13

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->k:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->l:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->r:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->t:[Lfi/iki/elonen/NanoHTTPD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static d(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1316
    :cond_0
    :try_start_0
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD$Method;->valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .line 1293
    const-class v0, Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoHTTPD$Method;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .line 1293
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->t:[Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method
