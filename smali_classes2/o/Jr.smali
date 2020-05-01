.class public final Lo/Jr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajW<",
        "Lcom/netflix/mediaclient/ui/launch/LaunchActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public static c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    return-void
.end method

.method public static e(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Jp;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->profileGatePolicy:Lo/Jp;

    return-void
.end method
