.class final Lo/Rr$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rr;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Rr;


# direct methods
.method constructor <init>(Lo/Rr;)V
    .locals 0

    iput-object p1, p0, Lo/Rr$Dialog;->a:Lo/Rr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lo/Rr$Dialog;->a:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 219
    iget-object p1, p0, Lo/Rr$Dialog;->a:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->z()V

    .line 220
    iget-object p1, p0, Lo/Rr$Dialog;->a:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->D()V

    .line 221
    iget-object p1, p0, Lo/Rr$Dialog;->a:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateActionBar()Z

    :cond_0
    return-void
.end method
