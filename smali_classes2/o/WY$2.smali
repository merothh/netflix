.class final Lo/WY$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WY;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/WY;


# direct methods
.method constructor <init>(Lo/WY;)V
    .locals 0

    iput-object p1, p0, Lo/WY$2;->a:Lo/WY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 53
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/LockUiCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/LockUiCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lo/WY$2;->a:Lo/WY;

    new-instance v1, Lo/UU$Dialog;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lo/UU$Dialog;-><init>(Z)V

    invoke-virtual {v0, v1}, Lo/WY;->e(Ljava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method
