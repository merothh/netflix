.class final Lo/Dd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lo/Dd$3;->e:Lo/Dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lo/Dd$3;->e:Lo/Dd;

    invoke-static {p1}, Lo/Dd;->c(Lo/Dd;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/cl/model/event/session/Session;->doesSessionExist(Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/Dd$3;->e:Lo/Dd;

    invoke-static {v0}, Lo/Dd;->c(Lo/Dd;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    :cond_0
    return-void
.end method
