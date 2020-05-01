.class Lo/Uh$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Uh;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Uh;


# direct methods
.method constructor <init>(Lo/Uh;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lo/Uh$4;->d:Lo/Uh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 329
    iget-object p1, p0, Lo/Uh$4;->d:Lo/Uh;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    invoke-static {p1, v0}, Lo/Uh;->b(Lo/Uh;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 330
    iget-object p1, p0, Lo/Uh$4;->d:Lo/Uh;

    invoke-virtual {p1}, Lo/Uh;->d()V

    return-void
.end method
