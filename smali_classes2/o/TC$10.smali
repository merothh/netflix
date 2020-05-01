.class Lo/TC$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CT$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 2290
    iput-object p1, p0, Lo/TC$10;->d:Lo/TC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2294
    iget-object v0, p0, Lo/TC$10;->d:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->j()V

    .line 2295
    iget-object v0, p0, Lo/TC$10;->d:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->R()V

    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .locals 1

    .line 2302
    iget-object v0, p0, Lo/TC$10;->d:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateVisibleDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/media/Language;Z)V
    .locals 0

    .line 2307
    iget-object p2, p0, Lo/TC$10;->d:Lo/TC;

    invoke-static {p2, p1}, Lo/TC;->c(Lo/TC;Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 2313
    iget-object v0, p0, Lo/TC$10;->d:Lo/TC;

    invoke-static {v0}, Lo/TC;->f(Lo/TC;)Z

    move-result v0

    return v0
.end method
