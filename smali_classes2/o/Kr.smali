.class public Lo/Kr;
.super Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;
.source ""


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lolomoAdapterCallback"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchStrategy"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method private final j()Z
    .locals 5

    .line 25
    sget-object v0, Lo/dK;->c:Lo/dK$TaskDescription;

    invoke-virtual {v0}, Lo/dK$TaskDescription;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Kr;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Kr;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "downloadable"

    invoke-static {v0, v4, v1, v2, v3}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public e(I)I
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->e(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 30
    invoke-direct {p0}, Lo/Kr;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x9

    :cond_0
    return p1
.end method
