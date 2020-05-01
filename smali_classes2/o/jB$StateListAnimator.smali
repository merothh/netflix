.class public final Lo/jB$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/util/SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndSession(Lcom/netflix/cl/model/event/session/Session;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    instance-of v0, p1, Lcom/netflix/cl/model/event/session/NavigationLevel;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->INSTANCE:Lcom/netflix/cl/util/NavigationLevelCollector;

    invoke-virtual {v0}, Lcom/netflix/cl/util/NavigationLevelCollector;->getAppViews()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->removeLastOccurrence(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onStartSession(Lcom/netflix/cl/model/event/session/Session;)V
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    instance-of v0, p1, Lcom/netflix/cl/model/event/session/NavigationLevel;

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    check-cast p1, Lcom/netflix/cl/model/event/session/NavigationLevel;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/NavigationLevel;->getView()Lcom/netflix/cl/model/AppView;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    sget-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->INSTANCE:Lcom/netflix/cl/util/NavigationLevelCollector;

    invoke-virtual {v0}, Lcom/netflix/cl/util/NavigationLevelCollector;->buildNavigationLevelsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "navigationLevelLastTenAsc"

    invoke-interface {p1, v1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
