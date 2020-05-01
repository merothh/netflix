.class public final Lo/ak$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/util/SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ak;-><init>(ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/ak;


# direct methods
.method constructor <init>(Lo/ak;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lo/ak$ActionBar;->d:Lo/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndSession(Lcom/netflix/cl/model/event/session/Session;)V
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    instance-of v0, p1, Lcom/netflix/cl/model/event/session/NavigationLevel;

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lo/ak;->c:Lo/ak$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 93
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    check-cast p1, Lcom/netflix/cl/model/event/session/NavigationLevel;

    invoke-virtual {v0}, Lo/ak;->n()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lo/ak;->e(Lcom/netflix/cl/model/event/session/NavigationLevel;Z)V

    .line 96
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    sget-object v1, Lcom/netflix/cl/util/NavigationLevelCollector;->INSTANCE:Lcom/netflix/cl/util/NavigationLevelCollector;

    invoke-virtual {v1}, Lcom/netflix/cl/util/NavigationLevelCollector;->getCurrentNavigationLevel()Lcom/netflix/cl/model/event/session/NavigationLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ak;->d(Lcom/netflix/cl/model/event/session/NavigationLevel;)V

    .line 98
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/NavigationLevel;->getView()Lcom/netflix/cl/model/AppView;

    move-result-object p1

    iget-object v1, p0, Lo/ak$ActionBar;->d:Lo/ak;

    invoke-virtual {v1}, Lo/ak;->g()Lcom/netflix/cl/model/event/session/NavigationLevel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/cl/model/event/session/NavigationLevel;->getView()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lo/ak;->b(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/AppView;)V

    :cond_1
    return-void
.end method

.method public onStartSession(Lcom/netflix/cl/model/event/session/Session;)V
    .locals 3

    const-string v0, "session"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    instance-of v0, p1, Lcom/netflix/cl/model/event/session/NavigationLevel;

    if-eqz v0, :cond_3

    .line 68
    sget-object v0, Lo/ak;->c:Lo/ak$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 71
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    invoke-virtual {v0}, Lo/ak;->g()Lcom/netflix/cl/model/event/session/NavigationLevel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    move-object v1, p1

    check-cast v1, Lcom/netflix/cl/model/event/session/NavigationLevel;

    invoke-virtual {v0, v1}, Lo/ak;->d(Lcom/netflix/cl/model/event/session/NavigationLevel;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    invoke-virtual {v0}, Lo/ak;->g()Lcom/netflix/cl/model/event/session/NavigationLevel;

    move-result-object v1

    iget-object v2, p0, Lo/ak$ActionBar;->d:Lo/ak;

    invoke-virtual {v2}, Lo/ak;->n()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/ak;->e(Lcom/netflix/cl/model/event/session/NavigationLevel;Z)V

    .line 76
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    invoke-virtual {v0}, Lo/ak;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    invoke-virtual {v0}, Lo/ak;->e()V

    .line 78
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ak;->b(Z)V

    .line 81
    :cond_1
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    invoke-virtual {v0}, Lo/ak;->g()Lcom/netflix/cl/model/event/session/NavigationLevel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/cl/model/event/session/NavigationLevel;->getView()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast p1, Lcom/netflix/cl/model/event/session/NavigationLevel;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/NavigationLevel;->getView()Lcom/netflix/cl/model/AppView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ak;->b(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/AppView;)V

    .line 84
    iget-object v0, p0, Lo/ak$ActionBar;->d:Lo/ak;

    invoke-virtual {v0, p1}, Lo/ak;->d(Lcom/netflix/cl/model/event/session/NavigationLevel;)V

    :cond_3
    return-void
.end method
