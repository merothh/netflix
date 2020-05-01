.class Lo/abu$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/abu;


# direct methods
.method constructor <init>(Lo/abu;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lo/abu$7;->c:Lo/abu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const-string p1, "SignupActivity"

    const-string v0, "User tapped sign-in button"

    .line 440
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object p1, p0, Lo/abu$7;->c:Lo/abu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/abu;->e(Lo/abu;Z)Z

    .line 449
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/SignIn;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/action/SignIn;-><init>()V

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 450
    iget-object p1, p0, Lo/abu$7;->c:Lo/abu;

    invoke-static {p1}, Lo/JG;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/abu;->d(Landroid/content/Intent;)V

    return v0
.end method
