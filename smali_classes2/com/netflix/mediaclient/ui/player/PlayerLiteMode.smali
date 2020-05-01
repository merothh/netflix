.class public abstract enum Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/player/PlayerLiteMode$NONE;,
        Lcom/netflix/mediaclient/ui/player/PlayerLiteMode$PLAYER_LITE;,
        Lcom/netflix/mediaclient/ui/player/PlayerLiteMode$PLAYER_LITE_WITH_MINI_PLAYER;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

.field private static final synthetic b:[Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

.field public static final enum d:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

.field public static final enum e:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode$NONE;

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode$NONE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->e:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode$PLAYER_LITE;

    const/4 v2, 0x1

    const-string v3, "PLAYER_LITE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode$PLAYER_LITE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->d:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode$PLAYER_LITE_WITH_MINI_PLAYER;

    const/4 v2, 0x2

    const-string v3, "PLAYER_LITE_WITH_MINI_PLAYER"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode$PLAYER_LITE_WITH_MINI_PLAYER;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->a:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->b:[Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILo/amc;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->b:[Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract c()Z
.end method
