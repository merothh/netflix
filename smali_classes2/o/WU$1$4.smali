.class final Lo/WU$1$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WU$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/WU$1;


# direct methods
.method constructor <init>(Lo/WU$1;)V
    .locals 0

    iput-object p1, p0, Lo/WU$1$4;->e:Lo/WU$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 35
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/UnlockUiCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/UnlockUiCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lo/WU$1$4;->e:Lo/WU$1;

    iget-object v0, v0, Lo/WU$1;->b:Lo/WU;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/WU;->b(Lo/WU;Z)V

    .line 37
    iget-object v0, p0, Lo/WU$1$4;->e:Lo/WU$1;

    iget-object v0, v0, Lo/WU$1;->b:Lo/WU;

    invoke-virtual {v0}, Lo/WU;->b()V

    .line 38
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method
