.class public final Lo/ZN$Activity;
.super Lo/CO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZN$Activity$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/ZN$Activity$StateListAnimator;


# instance fields
.field private final d:Lcom/netflix/mediaclient/util/gfx/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ZN$Activity$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZN$Activity$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZN$Activity;->e:Lo/ZN$Activity$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 1

    const-string v0, "imageLoader"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lo/CO;-><init>()V

    iput-object p1, p0, Lo/ZN$Activity;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 234
    iget-object p1, p0, Lo/ZN$Activity;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-object v0, p0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 238
    iget-object v0, p0, Lo/ZN$Activity;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "search-prequery-latencyTracker"

    return-object v0
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 1

    .line 246
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    if-eqz v0, :cond_0

    .line 247
    check-cast p1, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    const-string v0, "PRE_QUERY_LIST"

    invoke-virtual {p1, v0}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 248
    instance-of p1, p1, Lo/ZN;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
