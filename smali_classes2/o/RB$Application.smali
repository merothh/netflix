.class public final Lo/RB$Application;
.super Lo/CO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RB$Application$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/RB$Application$TaskDescription;


# instance fields
.field private final d:Lcom/netflix/mediaclient/util/gfx/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/RB$Application$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RB$Application$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/RB$Application;->e:Lo/RB$Application$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 1

    const-string v0, "imageLoader"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lo/CO;-><init>()V

    iput-object p1, p0, Lo/RB$Application;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 237
    iget-object p1, p0, Lo/RB$Application;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-object v0, p0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 241
    iget-object v0, p0, Lo/RB$Application;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "downloads-latencyTracker"

    return-object v0
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 1

    .line 249
    instance-of v0, p1, Lo/QU;

    if-eqz v0, :cond_0

    .line 250
    check-cast p1, Lo/QU;

    invoke-virtual {p1}, Lo/QU;->getFragmentHelper()Lo/Ih;

    move-result-object p1

    const-string v0, "activity.fragmentHelper"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/Ih;->f()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object p1

    instance-of p1, p1, Lo/Rr;

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
