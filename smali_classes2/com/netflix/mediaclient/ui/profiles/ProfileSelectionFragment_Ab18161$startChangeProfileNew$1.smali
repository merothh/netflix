.class final Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b(Lo/BC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Zf$TaskDescription;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/BC;

.field final synthetic d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/BC;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->c:Lo/BC;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Zf$TaskDescription;)V
    .locals 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "requireNetflixActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1}, Lo/Zf$TaskDescription;->c()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    goto/16 :goto_0

    .line 557
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    .line 558
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    invoke-interface {p1, v1, v3}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V

    .line 560
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Z

    .line 561
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->exit()V

    goto :goto_0

    .line 544
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    .line 545
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->c:Lo/BC;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/BC;)V

    goto :goto_0

    .line 548
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast v1, Lo/MessagePdu;

    .line 549
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->c:Lo/BC;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/BC;)V

    .line 551
    invoke-virtual {p1}, Lo/Zf$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 553
    invoke-virtual {p1}, Lo/Zf$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    goto :goto_0

    .line 526
    :cond_3
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    .line 528
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    invoke-interface {p1, v1, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V

    .line 530
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 531
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    .line 532
    move-object p1, v0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 533
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 537
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->t()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    .line 535
    invoke-static {p1, v1, v3}, Lo/Jx;->d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x4000000

    .line 539
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 534
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Lo/Zf$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$1;->a(Lo/Zf$TaskDescription;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
