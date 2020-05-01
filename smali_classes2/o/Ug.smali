.class public Lo/Ug;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private c:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

.field e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/Ug;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 42
    iput-object p2, p0, Lo/Ug;->c:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    return-void
.end method


# virtual methods
.method public d()Lcom/netflix/mediaclient/ui/player/PostPlay;
    .locals 3

    .line 50
    iget-object v0, p0, Lo/Ug;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lo/Ug;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->x()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->a:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-ne v0, v1, :cond_0

    .line 52
    new-instance v0, Lo/Tu;

    iget-object v1, p0, Lo/Ug;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    iget-object v2, p0, Lo/Ug;->c:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    invoke-direct {v0, v1, v2}, Lo/Tu;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lo/Tr;

    iget-object v1, p0, Lo/Ug;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    iget-object v2, p0, Lo/Ug;->c:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    invoke-direct {v0, v1, v2}, Lo/Tr;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    return-object v0

    .line 57
    :cond_1
    iget-object v0, p0, Lo/Ug;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->x()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->a:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-ne v0, v1, :cond_2

    .line 58
    new-instance v0, Lo/Um;

    iget-object v1, p0, Lo/Ug;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    iget-object v2, p0, Lo/Ug;->c:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    invoke-direct {v0, v1, v2}, Lo/Um;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    return-object v0

    .line 60
    :cond_2
    new-instance v0, Lo/Ul;

    iget-object v1, p0, Lo/Ug;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    iget-object v2, p0, Lo/Ug;->c:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    invoke-direct {v0, v1, v2}, Lo/Ul;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    return-object v0
.end method
