.class public final Lo/IG;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lo/IJ$ActionBar;

.field private final c:Lo/UpdateEngine;

.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final e:Lo/FI;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/UpdateEngine;)V
    .locals 11

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/IG;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/IG;->c:Lo/UpdateEngine;

    .line 20
    new-instance p1, Lo/FI;

    iget-object p2, p0, Lo/IG;->c:Lo/UpdateEngine;

    invoke-virtual {p2}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/FI;-><init>(Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/IG;->e:Lo/FI;

    .line 21
    new-instance p1, Lo/IJ$ActionBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lo/IJ$ActionBar;-><init>(ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILo/amc;)V

    iput-object p1, p0, Lo/IG;->a:Lo/IJ$ActionBar;

    return-void
.end method

.method public static final synthetic b(Lo/IG;)Lo/UpdateEngine;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/IG;->c:Lo/UpdateEngine;

    return-object p0
.end method

.method private final b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "AutoDispose"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lo/IG;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lo/IG$ActionBar;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/IG$ActionBar;-><init>(Lo/IG;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public static final synthetic c(Lo/IG;)Lo/FI;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/IG;->e:Lo/FI;

    return-object p0
.end method

.method private final c(Lo/AU;)V
    .locals 13

    .line 48
    invoke-interface {p1}, Lo/AU;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v1, p0, Lo/IG;->a:Lo/IJ$ActionBar;

    const/4 v2, 0x0

    sget-object p1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    move-object v3, p1

    check-cast v3, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lo/IJ$ActionBar;->a(Lo/IJ$ActionBar;ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lo/IJ$ActionBar;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/IG;->c(Lo/IJ$ActionBar;)V

    return-void

    .line 54
    :cond_0
    invoke-interface {p1}, Lo/AU;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AR;

    .line 57
    iget-object v2, p0, Lo/IG;->a:Lo/IJ$ActionBar;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 59
    invoke-interface {p1}, Lo/AU;->h()Ljava/util/List;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const/4 v12, 0x0

    move-object v5, p1

    move-object v6, v0

    .line 57
    invoke-static/range {v2 .. v12}, Lo/IJ$ActionBar;->a(Lo/IJ$ActionBar;ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lo/IJ$ActionBar;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lo/IG;->c(Lo/IJ$ActionBar;)V

    const-string p1, "recommendedVideo"

    .line 64
    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "recommendedVideo.id"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/AR;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    const-string v2, "recommendedVideo.type"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lo/IG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    return-void
.end method

.method public static final synthetic c(Lo/IG;Lo/IJ$ActionBar;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/IG;->c(Lo/IJ$ActionBar;)V

    return-void
.end method

.method private final c(Lo/IJ$ActionBar;)V
    .locals 2

    .line 24
    iput-object p1, p0, Lo/IG;->a:Lo/IJ$ActionBar;

    .line 25
    iget-object v0, p0, Lo/IG;->c:Lo/UpdateEngine;

    new-instance v1, Lo/IJ$TaskDescription;

    invoke-direct {v1, p1}, Lo/IJ$TaskDescription;-><init>(Lo/IJ$ActionBar;)V

    check-cast v1, Lo/VintfObject;

    .line 119
    const-class p1, Lo/IJ;

    invoke-virtual {v0, p1, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public static final synthetic d(Lo/IG;)Lo/IJ$ActionBar;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/IG;->a:Lo/IJ$ActionBar;

    return-object p0
.end method

.method public static final synthetic d(Lo/IG;Lo/AU;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/IG;->c(Lo/AU;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "AutoDispose"
        }
    .end annotation

    const-string v0, "characterId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lo/IJ$ActionBar;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfe

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lo/IJ$ActionBar;-><init>(ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILo/amc;)V

    invoke-direct {p0, v0}, Lo/IG;->c(Lo/IJ$ActionBar;)V

    .line 32
    iget-object v0, p0, Lo/IG;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lo/IG$Activity;

    invoke-direct {v1, p0, p1}, Lo/IG$Activity;-><init>(Lo/IG;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method
