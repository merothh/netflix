.class final Lo/Rr$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rr;->d(Landroid/view/Menu;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Rr;

.field final synthetic d:Landroid/view/Menu;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/Rr;ZLandroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lo/Rr$ActionBar;->a:Lo/Rr;

    iput-boolean p2, p0, Lo/Rr$ActionBar;->e:Z

    iput-object p3, p0, Lo/Rr$ActionBar;->d:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 408
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 409
    iget-object v0, p0, Lo/Rr$ActionBar;->a:Lo/Rr;

    invoke-virtual {v0}, Lo/Rr;->y()V

    .line 410
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 411
    iget-object p1, p0, Lo/Rr$ActionBar;->a:Lo/Rr;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Rr;->a(Z)V

    .line 413
    iget-object p1, p0, Lo/Rr$ActionBar;->a:Lo/Rr;

    invoke-static {p1}, Lo/Rr;->d(Lo/Rr;)V

    const/4 p1, 0x1

    return p1
.end method
