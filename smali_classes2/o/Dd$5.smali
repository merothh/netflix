.class final Lo/Dd$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dd;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Dd;


# direct methods
.method constructor <init>(Lo/Dd;)V
    .locals 0

    iput-object p1, p0, Lo/Dd$5;->e:Lo/Dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 87
    iget-object p1, p0, Lo/Dd$5;->e:Lo/Dd;

    invoke-static {p1}, Lo/Dd;->c(Lo/Dd;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/cl/model/event/session/Session;->doesSessionExist(Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p2, p0, Lo/Dd$5;->e:Lo/Dd;

    invoke-static {p2}, Lo/Dd;->c(Lo/Dd;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 90
    :cond_0
    iget-object p1, p0, Lo/Dd$5;->e:Lo/Dd;

    invoke-static {p1}, Lo/Dd;->f(Lo/Dd;)Lo/Dd$Application;

    move-result-object p1

    invoke-virtual {p1}, Lo/Dd$Application;->dismiss()V

    return-void
.end method
