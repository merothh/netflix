.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum i:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum k:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum l:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum m:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum n:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field private static final synthetic q:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;


# instance fields
.field private final r:Z

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/4 v2, 0x1

    const-string v3, "WaitingToBeStarted"

    invoke-direct {v0, v3, v2, v2, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/4 v3, 0x2

    const-string v4, "NetworkError"

    invoke-direct {v0, v4, v3, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/4 v4, 0x3

    const-string v5, "StorageError"

    invoke-direct {v0, v5, v4, v4, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/4 v5, 0x4

    const-string v6, "NotEnoughSpace"

    invoke-direct {v0, v6, v5, v5, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/4 v6, 0x5

    const-string v7, "StoppedFromAgentAPI"

    invoke-direct {v0, v7, v6, v6, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/4 v7, 0x6

    const-string v8, "NotAllowedOnCurrentNetwork"

    invoke-direct {v0, v8, v7, v7, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/4 v8, 0x7

    const-string v9, "NoNetworkConnectivity"

    invoke-direct {v0, v9, v8, v8, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->i:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/16 v9, 0x8

    const/16 v10, 0xa

    const-string v11, "PlayerStreaming"

    invoke-direct {v0, v11, v9, v10, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/16 v11, 0x9

    const/16 v12, 0xb

    const-string v13, "AccountInActive"

    invoke-direct {v0, v13, v11, v12, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string v13, "EncodesAreNotAvailableAnyMore"

    const/16 v14, 0x65

    invoke-direct {v0, v13, v10, v14, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->n:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string v13, "ManifestError"

    const/16 v14, 0x66

    invoke-direct {v0, v13, v12, v14, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/16 v13, 0xc

    const-string v14, "GeoCheckError"

    const/16 v15, 0x67

    invoke-direct {v0, v14, v13, v15, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->k:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/16 v14, 0xd

    const-string v15, "DownloadLimitRequiresManualResume"

    const/16 v13, 0x68

    invoke-direct {v0, v15, v14, v13, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->l:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/16 v13, 0xe

    const-string v15, "EncodesRevoked"

    const/16 v14, 0x69

    invoke-direct {v0, v15, v13, v14, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->m:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 9
    sget-object v14, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v14, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->i:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->n:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->k:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->l:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->m:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v13

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->q:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->t:I

    .line 53
    iput-boolean p4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->r:Z

    return-void
.end method

.method public static c(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 5

    .line 62
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .line 9
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .line 9
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->q:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->t:I

    return v0
.end method

.method public b()Z
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->r:Z

    return v0
.end method
