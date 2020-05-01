.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z

    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {v0, p2}, Lo/FindActionModeCallback;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 383
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z

    return-void

    .line 386
    :cond_0
    invoke-static {}, Lo/aek;->j()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lo/aek;->n()Z

    move-result p2

    if-nez p2, :cond_1

    .line 387
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    sget-object v1, Lo/LegacyErrorStrings;->ao:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {p2, v1}, Lo/FindActionModeCallback;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 388
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z

    return-void

    .line 392
    :cond_1
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 397
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z

    .line 398
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 399
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$3;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {p1, p2}, Lo/FindActionModeCallback;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z

    return-void
.end method
