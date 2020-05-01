.class public final enum Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/offline/download/DownloadableType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field public static final enum b:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field public static final enum d:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field public static final enum e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field private static final synthetic j:[Lcom/netflix/mediaclient/service/offline/download/DownloadableType;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    const/4 v1, 0x0

    const-string v2, "Audio"

    const-string v3, "nfa"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->d:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    const/4 v2, 0x1

    const-string v3, "Video"

    const-string v4, "nfv"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->a:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    const/4 v3, 0x2

    const-string v4, "Subtitle"

    const-string v5, "nfs"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->b:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    const/4 v4, 0x3

    const-string v5, "TrickPlay"

    const-string v6, "nfi"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 10
    sget-object v5, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->d:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->a:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->b:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->j:[Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .line 10
    const-class v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .line 10
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->j:[Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->c:Ljava/lang/String;

    return-object v0
.end method
