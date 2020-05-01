.class public final Lo/SSLCertificateSocketFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/view/View;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 162
    invoke-static {p0, v0}, Lo/ScoredNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lo/UidRange;

    invoke-direct {v0, p0}, Lo/UidRange;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static b(Landroid/view/View;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 77
    invoke-static {p0, v0}, Lo/ScoredNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lo/VpnService;

    invoke-direct {v0, p0}, Lo/VpnService;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static c(Landroid/view/View;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 317
    invoke-static {p0, v0}, Lo/ScoredNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    new-instance v0, Lo/StringNetworkSpecifier;

    invoke-direct {v0, p0}, Lo/StringNetworkSpecifier;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static d(Landroid/view/View;)Lo/SntpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lo/SntpClient<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 145
    invoke-static {p0, v0}, Lo/ScoredNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lo/UrlQuerySanitizer;

    invoke-direct {v0, p0}, Lo/UrlQuerySanitizer;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static e(Landroid/view/View;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 61
    invoke-static {p0, v0}, Lo/ScoredNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lo/TrafficStats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/TrafficStats;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method
