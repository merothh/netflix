.class public final enum Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

.field public static final enum b:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

.field public static final enum c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

.field public static final enum d:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

.field public static final enum e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

.field private static final synthetic i:[Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;


# instance fields
.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    const-string v3, "unknown"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->a:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const/4 v2, 0x1

    const-string v3, "SmartDownload"

    const-string v4, "smartdownload"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->b:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const/4 v3, 0x2

    const-string v4, "UserInitiated"

    const-string v5, "userinitiated"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->d:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const/4 v4, 0x3

    const-string v5, "Scheduled"

    const-string v6, "scheduled"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const/4 v5, 0x4

    const-string v6, "DownloadForYou"

    const-string v7, "downloadforyou"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    .line 25
    sget-object v6, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->a:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->b:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->d:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->i:[Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->j:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;
    .locals 5

    .line 45
    invoke-static {}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->values()[Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 46
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->a:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;
    .locals 1

    .line 25
    const-class v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;
    .locals 1

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->i:[Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->j:Ljava/lang/String;

    return-object v0
.end method
