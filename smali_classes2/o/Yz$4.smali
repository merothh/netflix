.class public final Lo/Yz$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultReceiver$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yz;-><init>(Landroid/view/ViewGroup;Lo/alB;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Yz;


# direct methods
.method constructor <init>(Lo/Yz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lo/Yz$4;->c:Lo/Yz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/ResultReceiver;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lo/Yz$4;->c:Lo/Yz;

    new-instance v0, Lo/YB$TaskDescription;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lo/YB$TaskDescription;-><init>(I)V

    invoke-virtual {p1, v0}, Lo/Yz;->e(Ljava/lang/Object;)V

    .line 218
    iget-object p1, p0, Lo/Yz$4;->c:Lo/Yz;

    sget-object v0, Lo/YB$Application;->c:Lo/YB$Application;

    invoke-virtual {p1, v0}, Lo/Yz;->e(Ljava/lang/Object;)V

    .line 219
    iget-object p1, p0, Lo/Yz$4;->c:Lo/Yz;

    invoke-virtual {p1}, Lo/Yz;->j()V

    return-void
.end method

.method public b(Lo/ResultReceiver;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p0, p1}, Lo/ResultReceiver$TaskDescription$TaskDescription;->c(Lo/ResultReceiver$TaskDescription;Lo/ResultReceiver;)V

    return-void
.end method

.method public c(Lo/ResultReceiver;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lo/Yz$4;->c:Lo/Yz;

    invoke-static {p1}, Lo/Yz;->a(Lo/Yz;)Lo/Yt;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Yt;->setDragging(Z)V

    .line 224
    iget-object p1, p0, Lo/Yz$4;->c:Lo/Yz;

    const/4 v0, 0x1

    const-string v1, "onDragCancelEnded"

    invoke-virtual {p1, v0, v1}, Lo/Yz;->e(ZLjava/lang/String;)V

    return-void
.end method

.method public d(Lo/ResultReceiver;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lo/Yz$4;->c:Lo/Yz;

    invoke-static {p1}, Lo/Yz;->a(Lo/Yz;)Lo/Yt;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/Yt;->setDragging(Z)V

    .line 213
    iget-object p1, p0, Lo/Yz$4;->c:Lo/Yz;

    const/4 v0, 0x0

    const-string v1, "onDragStarted"

    invoke-virtual {p1, v0, v1}, Lo/Yz;->e(ZLjava/lang/String;)V

    return-void
.end method

.method public e(Lo/ResultReceiver;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p0, p1}, Lo/ResultReceiver$TaskDescription$TaskDescription;->b(Lo/ResultReceiver$TaskDescription;Lo/ResultReceiver;)V

    return-void
.end method
