.class public final enum Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

.field private static final synthetic b:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

.field public static final enum e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    const/4 v1, 0x0

    const-string v2, "USER"

    invoke-direct {v0, v2, v1, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    const/4 v2, 0x1

    const-string v3, "MAINTENANCE"

    invoke-direct {v0, v3, v2, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    .line 3
    sget-object v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->b:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;
    .locals 1

    .line 3
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;
    .locals 1

    .line 3
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->b:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->d:I

    return v0
.end method
