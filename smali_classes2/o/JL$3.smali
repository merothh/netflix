.class Lo/JL$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JL;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/JL;


# direct methods
.method constructor <init>(Lo/JL;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lo/JL$3;->d:Lo/JL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 97
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/action/SignOut;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/action/SignOut;-><init>()V

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 98
    iget-object p2, p0, Lo/JL$3;->d:Lo/JL;

    invoke-static {p2}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 100
    iget-object p2, p0, Lo/JL$3;->d:Lo/JL;

    invoke-static {p2, p1}, Lo/JL;->d(Lo/JL;Ljava/lang/Long;)V

    .line 101
    new-instance p1, Lcom/netflix/cl/model/event/session/command/SignOutCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SignOutCommand;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method
