.class final enum Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;
.super Ljava/lang/Enum;
.source "KongInteractivePostPlayManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

.field public static final enum BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

.field public static final enum INIT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

.field public static final enum POWERUP:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

.field public static final enum RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

.field public static final enum UNLOCK:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    const-string/jumbo v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->INIT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    const-string/jumbo v1, "UNLOCK"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->UNLOCK:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    const-string/jumbo v1, "BATTLE"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    const-string/jumbo v1, "RESULT"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    const-string/jumbo v1, "POWERUP"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->POWERUP:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->INIT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->UNLOCK:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->POWERUP:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->$VALUES:[Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->$VALUES:[Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    return-object v0
.end method
