.class public final enum Lcom/netflix/cl/model/DownloadType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/DownloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/DownloadType;

.field public static final enum downloadedForYou:Lcom/netflix/cl/model/DownloadType;

.field public static final enum scheduled:Lcom/netflix/cl/model/DownloadType;

.field public static final enum smartDownload:Lcom/netflix/cl/model/DownloadType;

.field public static final enum unknown:Lcom/netflix/cl/model/DownloadType;

.field public static final enum userInitiated:Lcom/netflix/cl/model/DownloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/netflix/cl/model/DownloadType;

    const/4 v1, 0x0

    const-string v2, "downloadedForYou"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/DownloadType;->downloadedForYou:Lcom/netflix/cl/model/DownloadType;

    .line 8
    new-instance v0, Lcom/netflix/cl/model/DownloadType;

    const/4 v2, 0x1

    const-string v3, "scheduled"

    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/DownloadType;->scheduled:Lcom/netflix/cl/model/DownloadType;

    .line 9
    new-instance v0, Lcom/netflix/cl/model/DownloadType;

    const/4 v3, 0x2

    const-string v4, "smartDownload"

    invoke-direct {v0, v4, v3}, Lcom/netflix/cl/model/DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/DownloadType;->smartDownload:Lcom/netflix/cl/model/DownloadType;

    .line 10
    new-instance v0, Lcom/netflix/cl/model/DownloadType;

    const/4 v4, 0x3

    const-string v5, "unknown"

    invoke-direct {v0, v5, v4}, Lcom/netflix/cl/model/DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/DownloadType;->unknown:Lcom/netflix/cl/model/DownloadType;

    .line 11
    new-instance v0, Lcom/netflix/cl/model/DownloadType;

    const/4 v5, 0x4

    const-string v6, "userInitiated"

    invoke-direct {v0, v6, v5}, Lcom/netflix/cl/model/DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/DownloadType;->userInitiated:Lcom/netflix/cl/model/DownloadType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/cl/model/DownloadType;

    .line 6
    sget-object v6, Lcom/netflix/cl/model/DownloadType;->downloadedForYou:Lcom/netflix/cl/model/DownloadType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/cl/model/DownloadType;->scheduled:Lcom/netflix/cl/model/DownloadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/cl/model/DownloadType;->smartDownload:Lcom/netflix/cl/model/DownloadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/cl/model/DownloadType;->unknown:Lcom/netflix/cl/model/DownloadType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/cl/model/DownloadType;->userInitiated:Lcom/netflix/cl/model/DownloadType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/cl/model/DownloadType;->$VALUES:[Lcom/netflix/cl/model/DownloadType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/DownloadType;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/cl/model/DownloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/DownloadType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/DownloadType;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/cl/model/DownloadType;->$VALUES:[Lcom/netflix/cl/model/DownloadType;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/DownloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/DownloadType;

    return-object v0
.end method
