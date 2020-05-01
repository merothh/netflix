.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field private static final synthetic i:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/4 v2, 0x1

    const-string v3, "Creating"

    invoke-direct {v0, v3, v2, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/4 v3, 0x2

    const-string v4, "InProgress"

    invoke-direct {v0, v4, v3, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/4 v4, 0x3

    const-string v5, "Stopped"

    invoke-direct {v0, v5, v4, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/4 v5, 0x4

    const-string v6, "Complete"

    invoke-direct {v0, v6, v5, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/4 v6, 0x5

    const-string v7, "Deleted"

    invoke-direct {v0, v7, v6, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/4 v7, 0x6

    const-string v8, "DeleteComplete"

    invoke-direct {v0, v8, v7, v7}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/4 v8, 0x7

    const-string v9, "CreateFailed"

    invoke-direct {v0, v9, v8, v8}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 9
    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v9, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->i:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->h:I

    return-void
.end method

.method public static a(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)Z
    .locals 1

    .line 41
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne p0, v0, :cond_0

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

.method public static b(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 5

    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 33
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .line 9
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .line 9
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->i:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->h:I

    return v0
.end method
