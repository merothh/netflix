.class Lcom/netflix/mediaclient/ui/search/SearchResultView$Activity;
.super Lo/ResourceCursorAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/search/SearchResultView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultView;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$Activity;->e:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    .line 74
    invoke-direct {p0, p2, p3}, Lo/ResourceCursorAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    const-string v0, "SearchResultsClickListener"

    .line 78
    invoke-static {p1, p2, p3, v0}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    return-void
.end method
