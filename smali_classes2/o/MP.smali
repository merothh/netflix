.class public final Lo/MP;
.super Lo/MQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MP$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/MP$StateListAnimator;


# instance fields
.field private a:Z

.field private b:I

.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private e:Lo/zN;

.field private final j:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/MP$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/MP$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/MP;->c:Lo/MP$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netflixMdxController"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lo/MQ;-><init>()V

    iput-object p1, p0, Lo/MP;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/MP;->j:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lo/MP;->a:Z

    .line 36
    iget-object p1, p0, Lo/MP;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance p2, Lo/MP$1;

    invoke-direct {p2, p0}, Lo/MP$1;-><init>(Lo/MP;)V

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public static final synthetic d(Lo/MP;Lo/zN;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lo/MP;->e:Lo/zN;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lo/MP;->j:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->h()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Lo/AK;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/MP;->j:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->r()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public F()I
    .locals 1

    .line 70
    iget v0, p0, Lo/MP;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 73
    iput p1, p0, Lo/MP;->b:I

    return-void
.end method

.method public b(Lo/AS;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 82
    iget-object v0, p0, Lo/MP;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lo/MP;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 86
    :cond_0
    iget-object v0, p0, Lo/MP;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 87
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v1

    .line 88
    invoke-interface {p1}, Lo/AS;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lo/MP;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    .line 85
    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "episodeDetails is null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 97
    iget-object v0, p0, Lo/MP;->j:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->v()V

    return-void
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 2

    .line 94
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->j:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string v1, "PlayContextImp.NFLX_MDX_CONTEXT"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public v()Lo/Me;
    .locals 4

    .line 50
    new-instance v0, Lo/Me;

    iget-object v1, p0, Lo/MP;->e:Lo/zN;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lo/zN;->f()[Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lo/MP;->e:Lo/zN;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lo/zN;->h()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/Me;-><init>([Landroid/util/Pair;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public y()Lo/Mq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z()V
    .locals 0

    return-void
.end method
