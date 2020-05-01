.class Lo/Uh$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Uh;->e()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Uh;


# direct methods
.method constructor <init>(Lo/Uh;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lo/Uh$5;->e:Lo/Uh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lo/Uh$5;->e:Lo/Uh;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    invoke-static {p1, v0}, Lo/Uh;->b(Lo/Uh;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 233
    iget-object p1, p0, Lo/Uh$5;->e:Lo/Uh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Uh;->c(Z)V

    .line 234
    iget-object p1, p0, Lo/Uh$5;->e:Lo/Uh;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/Uh;->b(Z)V

    return-void
.end method
