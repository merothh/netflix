.class Lo/TC$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 2238
    iput-object p1, p0, Lo/TC$2;->e:Lo/TC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 2242
    iget-object p1, p0, Lo/TC$2;->e:Lo/TC;

    iget-object p1, p1, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/TC$2;->e:Lo/TC;

    iget-object p1, p1, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2246
    :cond_0
    iget-object p1, p0, Lo/TC$2;->e:Lo/TC;

    iget-object p1, p1, Lo/TC;->j:Lo/Uc;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/Uc;->d(J)V

    .line 2247
    iget-object p1, p0, Lo/TC$2;->e:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->Z()V

    .line 2248
    iget-object p1, p0, Lo/TC$2;->e:Lo/TC;

    invoke-static {p1}, Lo/TC;->f(Lo/TC;)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const-string v2, "KEYCODE_BUTTON_A"

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 2249
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v4, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v5, Lcom/netflix/cl/model/AppView;->pauseButton:Lcom/netflix/cl/model/AppView;

    invoke-direct {v4, v5, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v3, Lcom/netflix/cl/model/event/session/command/PauseCommand;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/command/PauseCommand;-><init>()V

    new-instance v5, Lcom/netflix/cl/model/context/KeyboardInput;

    .line 2253
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2254
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v5, v2, v1, v0}, Lcom/netflix/cl/model/context/KeyboardInput;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Float;)V

    .line 2249
    invoke-virtual {p1, v4, v3, v5}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/context/CLContext;)V

    .line 2255
    iget-object p1, p0, Lo/TC$2;->e:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->a()V

    goto :goto_0

    .line 2258
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v4, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v5, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    invoke-direct {v4, v5, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v3, Lcom/netflix/cl/model/event/session/command/UnpauseCommand;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/command/UnpauseCommand;-><init>()V

    new-instance v5, Lcom/netflix/cl/model/context/KeyboardInput;

    .line 2262
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2263
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v5, v2, v1, v0}, Lcom/netflix/cl/model/context/KeyboardInput;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Float;)V

    .line 2258
    invoke-virtual {p1, v4, v3, v5}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/context/CLContext;)V

    .line 2264
    iget-object p1, p0, Lo/TC$2;->e:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->j()V

    :cond_2
    :goto_0
    return-void
.end method
