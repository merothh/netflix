.class final Lcom/netflix/mediaclient/ui/player/PlayerLiteMode$PLAYER_LITE_WITH_MINI_PLAYER;
.super Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PLAYER_LITE_WITH_MINI_PLAYER"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;-><init>(Ljava/lang/String;ILo/amc;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
