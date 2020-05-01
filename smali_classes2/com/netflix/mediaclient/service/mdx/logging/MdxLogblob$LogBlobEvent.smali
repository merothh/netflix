.class public final enum Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogBlobEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum b:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum c:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum d:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum e:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum f:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum g:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum h:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum i:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum j:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum k:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum l:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum n:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum o:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field private static final synthetic r:[Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;


# instance fields
.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/4 v1, 0x0

    const-string v2, "START_MDX"

    const-string v3, "startMdx"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/4 v2, 0x1

    const-string v3, "STOP_MDX"

    const-string v4, "stopMdx"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->e:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/4 v3, 0x2

    const-string v4, "FAIL_TO_SEND_MESSAGE"

    const-string v5, "failToSendMsg"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->d:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/4 v4, 0x3

    const-string v5, "APPLICATION_STOPPED"

    const-string v6, "appStopped"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/4 v5, 0x4

    const-string v6, "FAIL_TO_LAUNCH"

    const-string v7, "failToLaunch"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->c:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/4 v6, 0x5

    const-string v7, "FAIL_TO_CONNECT"

    const-string v8, "failToConnect"

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->g:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/4 v7, 0x6

    const-string v8, "NETFLIX_MDX_DEVICE_FOUND"

    const-string v9, "netflixDeviceFound"

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->j:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/4 v8, 0x7

    const-string v9, "NETFLIX_MDX_DEVICE_LOST"

    const-string v10, "netflixDeviceLost"

    invoke-direct {v0, v9, v8, v10}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->f:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/16 v9, 0x8

    const-string v10, "CAST_DEVICE_FOUND"

    const-string v11, "castDeviceFound"

    invoke-direct {v0, v10, v9, v11}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->i:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/16 v10, 0x9

    const-string v11, "CAST_DEVICE_LOST"

    const-string v12, "castDeviceLost"

    invoke-direct {v0, v11, v10, v12}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->h:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/16 v11, 0xa

    const-string v12, "PAIRING_FAILED"

    const-string v13, "pairingFailed"

    invoke-direct {v0, v12, v11, v13}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->k:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/16 v12, 0xb

    const-string v13, "ERROR_DISPLAYED"

    const-string v14, "errorDisplayed"

    invoke-direct {v0, v13, v12, v14}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->n:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/16 v13, 0xc

    const-string v14, "FAIL_TO_START_SERVER"

    const-string v15, "failToStartServer"

    invoke-direct {v0, v14, v13, v15}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->l:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/16 v14, 0xd

    const-string v15, "SESSION_MDX_TARGET_ERROR"

    const-string v13, "sessionMdxError"

    invoke-direct {v0, v15, v14, v13}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->o:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 29
    sget-object v13, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v13, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->e:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->d:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->c:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->g:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->j:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->f:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->i:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->h:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->k:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->n:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->l:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->o:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v14

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->r:[Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->m:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;
    .locals 1

    .line 29
    const-class v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;
    .locals 1

    .line 29
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->r:[Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->m:Ljava/lang/String;

    return-object v0
.end method
