.class public final Lo/SelectionSessionLogger;
.super Lo/SerializablePermission$Activity;
.source ""


# instance fields
.field private a:Ljava/lang/Long;

.field private final b:Lo/TextClassificationManager;


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lo/SerializablePermission$Activity;-><init>()V

    iput-object p1, p0, Lo/SelectionSessionLogger;->b:Lo/TextClassificationManager;

    return-void
.end method


# virtual methods
.method public c(Lo/SerializablePermission;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "f"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of p1, p2, Lo/Crossfade;

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    check-cast p2, Lo/Crossfade;

    invoke-virtual {p2}, Lo/Crossfade;->h()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    new-instance v0, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-virtual {p2}, Lo/Crossfade;->l()Lcom/netflix/cl/model/AppView;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 37
    iget-object p1, p0, Lo/SelectionSessionLogger;->b:Lo/TextClassificationManager;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v0}, Lo/TextClassificationManager;->b(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/SelectionSessionLogger;->a:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method public d(Lo/SerializablePermission;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "f"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of p1, p2, Lo/Crossfade;

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lo/SelectionSessionLogger;->a:Ljava/lang/Long;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 47
    iget-object v0, p0, Lo/SelectionSessionLogger;->b:Lo/TextClassificationManager;

    invoke-virtual {v0, p1, p2}, Lo/TextClassificationManager;->b(J)Z

    :cond_1
    return-void
.end method

.method public d(Lo/SerializablePermission;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p4, "fm"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "f"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "v"

    invoke-static {p3, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of p1, p2, Lo/Crossfade;

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    check-cast p2, Lo/Crossfade;

    invoke-virtual {p2}, Lo/Crossfade;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 26
    iget-object p3, p0, Lo/SelectionSessionLogger;->b:Lo/TextClassificationManager;

    invoke-virtual {p2}, Lo/Crossfade;->f()Z

    move-result p2

    invoke-virtual {p3, p1, p2}, Lo/TextClassificationManager;->d(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
