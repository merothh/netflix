.class public final Lo/WebResourceResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajW<",
        "Lcom/netflix/mediaclient/android/fragment/NetflixFrag;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/fragment/NetflixFrag;",
            "Ldagger/Lazy<",
            "Lo/ViewSwitcher;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->uiLatencyTrackerFluent:Ldagger/Lazy;

    return-void
.end method
