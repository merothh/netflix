.class public final Lo/afG$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/JavascriptInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/Plugin;)V
    .locals 1

    const-string v0, "userInputManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lo/Plugin;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "userInputTracker"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lo/Plugin;)V
    .locals 4

    const-string v0, "userInputTracker"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object p1, Lo/afG;->a:Lo/afG;

    check-cast p1, Lo/MessagePdu;

    .line 163
    sget-object p1, Lo/afG;->a:Lo/afG;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/afG;->c(Z)V

    .line 164
    sget-object p1, Lo/afG;->a:Lo/afG;

    new-instance v0, Lcom/netflix/cl/model/context/ProcessState;

    sget-object v1, Lcom/netflix/cl/model/AllocationMode;->reduced:Lcom/netflix/cl/model/AllocationMode;

    sget-object v2, Lcom/netflix/cl/model/InteractionMode;->none:Lcom/netflix/cl/model/InteractionMode;

    sget-object v3, Lcom/netflix/cl/model/ComputationMode;->normal:Lcom/netflix/cl/model/ComputationMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/cl/model/context/ProcessState;-><init>(Lcom/netflix/cl/model/AllocationMode;Lcom/netflix/cl/model/InteractionMode;Lcom/netflix/cl/model/ComputationMode;)V

    invoke-static {p1, v0}, Lo/afG;->a(Lo/afG;Lcom/netflix/cl/model/context/ProcessState;)V

    .line 165
    sget-object p1, Lo/afG;->a:Lo/afG;

    invoke-static {p1}, Lo/afG;->e(Lo/afG;)V

    .line 166
    invoke-static {}, Lo/afG;->b()V

    return-void
.end method

.method public c(Lo/Plugin;)V
    .locals 1

    const-string v0, "userInputManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lo/Plugin;)V
    .locals 1

    const-string v0, "userInputManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lo/Plugin;)V
    .locals 1

    const-string v0, "userInputManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
