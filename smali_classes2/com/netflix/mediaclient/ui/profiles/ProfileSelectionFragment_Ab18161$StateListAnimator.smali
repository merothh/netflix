.class final Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 105
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->h:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;)V

    .line 106
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p3, p1, :cond_0

    .line 107
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    goto/16 :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p3, p1, :cond_1

    .line 109
    new-instance p1, Lo/YR;

    invoke-direct {p1}, Lo/YR;-><init>()V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    const-string p3, "requireNetflixActivity()"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lo/YR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 111
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BC;

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    sget-object p2, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->requireContext()Landroid/content/Context;

    move-result-object p2

    iget-object p4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {p4}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/BC;

    invoke-interface {p3}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lo/YU;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->U_()Lo/Am;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 118
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    const-string p4, "it"

    invoke-static {p1, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {p4}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/BC;

    invoke-static {p2, p1, p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/Am;Lo/BC;)V

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->i(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Lo/SharedElementCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/SharedElementCallback;->invalidateOptionsMenu()V

    :goto_0
    return-void
.end method
