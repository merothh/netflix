.class public final enum Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;
.super Ljava/lang/Enum;
.source "InteractivePostplayModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

.field public static final enum KONG_POST_PLAY:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    const-string/jumbo v1, "KONG_POST_PLAY"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;->KONG_POST_PLAY:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;->UNKNOWN:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;->KONG_POST_PLAY:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;->UNKNOWN:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;->$VALUES:[Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;->$VALUES:[Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel$INTERACTIVE_POST_PLAY_TYPE;

    return-object v0
.end method
