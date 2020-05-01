.class final Lo/Dd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dd;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Dd;


# direct methods
.method constructor <init>(Lo/Dd;)V
    .locals 0

    iput-object p1, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p1}, Lo/Dd;->b(Lo/Dd;)Ljava/util/List;

    move-result-object v0

    iget-object p1, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p1}, Lo/Dd;->a(Lo/Dd;)Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;->d()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lo/akz;->e(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 65
    iget-object p1, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p1}, Lo/Dd;->a(Lo/Dd;)Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    move-result-object p1

    iget-object p2, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p2}, Lo/Dd;->b(Lo/Dd;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;->setPlaybackSpeed(F)V

    .line 67
    iget-object p1, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p1}, Lo/Dd;->e(Lo/Dd;)Lo/Dd$Activity;

    move-result-object p1

    invoke-virtual {p1}, Lo/Dd$Activity;->notifyDataSetChanged()V

    .line 68
    iget-object p1, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p1}, Lo/Dd;->d(Lo/Dd;)Lo/UpdateEngine;

    move-result-object p1

    .line 69
    const-class p2, Lo/UP;

    .line 70
    new-instance p4, Lo/UP$AssistContent;

    iget-object p5, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p5}, Lo/Dd;->b(Lo/Dd;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p5

    invoke-direct {p4, p5}, Lo/UP$AssistContent;-><init>(F)V

    check-cast p4, Lo/VintfObject;

    .line 68
    invoke-virtual {p1, p2, p4}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 72
    iget-object p1, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p1}, Lo/Dd;->d(Lo/Dd;)Lo/UpdateEngine;

    move-result-object p1

    .line 73
    const-class p2, Lo/UP;

    .line 74
    sget-object p4, Lo/UP$DialogInterface;->d:Lo/UP$DialogInterface;

    check-cast p4, Lo/VintfObject;

    .line 72
    invoke-virtual {p1, p2, p4}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 77
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    iget-object p4, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p4}, Lo/Dd;->b(Lo/Dd;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 78
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 79
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p2, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p2}, Lo/Dd;->c(Lo/Dd;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 81
    :cond_0
    iget-object p1, p0, Lo/Dd$1;->b:Lo/Dd;

    invoke-static {p1}, Lo/Dd;->f(Lo/Dd;)Lo/Dd$Application;

    move-result-object p1

    invoke-virtual {p1}, Lo/Dd$Application;->dismiss()V

    return-void
.end method
