.class public final enum Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;
.super Ljava/lang/Enum;
.source "ClientActionFromLase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

.field public static final enum ACQUIRE_NEW_LICENSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

.field public static final enum DELETE_LICENSES:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

.field public static final enum MARK_PLAYABLE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

.field public static final enum NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;


# instance fields
.field private mAction:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    const-string/jumbo v1, "NO_ACTION"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    const-string/jumbo v1, "ACQUIRE_NEW_LICENSE"

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ACQUIRE_NEW_LICENSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    const-string/jumbo v1, "DELETE_LICENSES"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->DELETE_LICENSES:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    const-string/jumbo v1, "MARK_PLAYABLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->MARK_PLAYABLE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ACQUIRE_NEW_LICENSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->DELETE_LICENSES:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->MARK_PLAYABLE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->mAction:I

    return-void
.end method

.method public static create(I)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->mAction:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    goto :goto_1
.end method

.method private isActionAcquireNewLicense()Z
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->mAction:I

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->DELETE_LICENSES:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    return-object v0
.end method


# virtual methods
.method public getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->isActionAcquireNewLicense()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_FETCH_NEW:Lcom/netflix/mediaclient/StatusCode;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->mAction:I

    return v0
.end method

.method public isRecoverable()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->isActionAcquireNewLicense()Z

    move-result v0

    return v0
.end method
