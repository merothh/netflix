.class public final enum Lcom/netflix/cl/model/CachedVideoPlayableStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/CachedVideoPlayableStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/CachedVideoPlayableStatus;

.field public static final enum downloading:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

.field public static final enum ready:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

.field public static final enum restrictedGeo:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

.field public static final enum staleLicense:Lcom/netflix/cl/model/CachedVideoPlayableStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    const/4 v1, 0x0

    const-string v2, "downloading"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/CachedVideoPlayableStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->downloading:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    .line 8
    new-instance v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    const/4 v2, 0x1

    const-string v3, "ready"

    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/CachedVideoPlayableStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->ready:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    .line 9
    new-instance v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    const/4 v3, 0x2

    const-string v4, "restrictedGeo"

    invoke-direct {v0, v4, v3}, Lcom/netflix/cl/model/CachedVideoPlayableStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->restrictedGeo:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    .line 10
    new-instance v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    const/4 v4, 0x3

    const-string v5, "staleLicense"

    invoke-direct {v0, v5, v4}, Lcom/netflix/cl/model/CachedVideoPlayableStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->staleLicense:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    .line 6
    sget-object v5, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->downloading:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->ready:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->restrictedGeo:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->staleLicense:Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->$VALUES:[Lcom/netflix/cl/model/CachedVideoPlayableStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/CachedVideoPlayableStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/CachedVideoPlayableStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/cl/model/CachedVideoPlayableStatus;->$VALUES:[Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/CachedVideoPlayableStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    return-object v0
.end method
