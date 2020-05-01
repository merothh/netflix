.class public final enum Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

.field private static final synthetic b:[Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

.field public static final enum c:Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

.field public static final enum e:Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    new-instance v2, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "WiFiOrWired"

    .line 4
    invoke-direct {v2, v5, v3, v4}, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->e:Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    aput-object v2, v1, v3

    new-instance v2, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    const/4 v3, 0x2

    const-string v5, "Mobile"

    .line 5
    invoke-direct {v2, v5, v4, v3}, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->c:Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    aput-object v2, v1, v4

    new-instance v2, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    const-string v4, "Other"

    .line 6
    invoke-direct {v2, v4, v3, v0}, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->a:Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    aput-object v2, v1, v3

    sput-object v1, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->b:[Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->b:[Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->d:I

    return v0
.end method
