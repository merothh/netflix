.class public final Lo/Zd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajW<",
        "Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lo/ViewSwitcher;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->uiLatencyTracker:Lo/ViewSwitcher;

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    return-void
.end method
