.class final Lo/GK$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GK;->e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/GK;


# direct methods
.method constructor <init>(Lo/GK;)V
    .locals 0

    iput-object p1, p0, Lo/GK$TaskDescription;->b:Lo/GK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 2

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lo/GK$TaskDescription;->b:Lo/GK;

    invoke-static {v0}, Lo/GK;->b(Lo/GK;)Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lo/GK$TaskDescription;->b:Lo/GK;

    invoke-virtual {p1}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object v1

    invoke-static {v0, v1}, Lo/GK;->c(Lo/GK;Lcom/netflix/mediaclient/servicemgr/PrepareManager;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lo/GK$TaskDescription;->b:Lo/GK;

    invoke-virtual {p1}, Lo/Am;->j()Lo/Ah;

    move-result-object p1

    invoke-interface {p1}, Lo/Ah;->e()Lo/Ab;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/GK;->c(Lo/Ab;)V

    return-void
.end method
