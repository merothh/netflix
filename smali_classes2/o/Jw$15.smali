.class Lo/Jw$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lo/Jw$15;->c:Lo/Jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 357
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewHelpCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewHelpCommand;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 358
    iget-object p1, p0, Lo/Jw$15;->c:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->h(Lo/Jw;)V

    return-void
.end method
