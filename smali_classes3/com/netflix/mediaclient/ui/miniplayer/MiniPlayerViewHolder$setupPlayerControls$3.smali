.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/akj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Nl;


# direct methods
.method public constructor <init>(Lo/Nl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$3;->d:Lo/Nl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/akj;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$3;->d:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object p1

    invoke-virtual {p1}, Lo/HZ;->c()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 354
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$3;->d:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lo/Nh;->e(I)V

    .line 355
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 359
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$3;->d:Lo/Nl;

    invoke-static {v3}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lo/Nh;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    :cond_1
    invoke-direct {v1, v2, v0}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 360
    new-instance v0, Lcom/netflix/cl/model/event/session/command/PauseCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/PauseCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    .line 355
    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    goto :goto_1

    .line 363
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$3;->d:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Lo/Nh;->e(I)V

    .line 364
    :cond_3
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 365
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$3;->d:Lo/Nl;

    invoke-static {v3}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lo/Nh;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v0

    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 366
    new-instance v2, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    .line 364
    invoke-virtual {p1, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$3;->e(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
