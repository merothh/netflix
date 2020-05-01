.class public abstract Lo/Vf;
.super Lo/MenuInflater;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Vf$Activity;
    }
.end annotation


# static fields
.field public static final h:Lo/Vf$Activity;

.field private static final l:Landroid/view/animation/LinearInterpolator;


# instance fields
.field protected a:Lcom/netflix/model/leafs/originals/interactive/Moment;

.field private b:F

.field private c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field protected d:Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

.field private e:Lo/Xt;

.field protected f:Lo/ErrorCodes;

.field private g:Landroid/animation/Animator;

.field private i:Z

.field private final j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Vf$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Vf$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Vf;->h:Lo/Vf$Activity;

    .line 39
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lo/Vf;->l:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Vf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Vf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-class p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p1, p0, Lo/Vf;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 20
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Vf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic v()Landroid/view/animation/LinearInterpolator;
    .locals 1

    .line 19
    sget-object v0, Lo/Vf;->l:Landroid/view/animation/LinearInterpolator;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method protected final b(Lcom/netflix/model/leafs/originals/interactive/BaseLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lo/Vf;->d:Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    return-void
.end method

.method protected final c(Lo/ErrorCodes;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lo/Vf;->f:Lo/ErrorCodes;

    return-void
.end method

.method protected final d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/Vf;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-void
.end method

.method protected final d(Lo/Xt;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/Vf;->e:Lo/Xt;

    return-void
.end method

.method protected final e(Landroid/animation/Animator;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/Vf;->g:Landroid/animation/Animator;

    return-void
.end method

.method protected final e(Lcom/netflix/model/leafs/originals/interactive/Moment;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lo/Vf;->a:Lcom/netflix/model/leafs/originals/interactive/Moment;

    return-void
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public final p()Lcom/netflix/model/leafs/originals/interactive/Moment;
    .locals 2

    .line 24
    iget-object v0, p0, Lo/Vf;->a:Lcom/netflix/model/leafs/originals/interactive/Moment;

    if-nez v0, :cond_0

    const-string v1, "moment"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final q()Lo/ErrorCodes;
    .locals 2

    .line 27
    iget-object v0, p0, Lo/Vf;->f:Lo/ErrorCodes;

    if-nez v0, :cond_0

    const-string v1, "imageLoaderRepository"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final r()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/Vf;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-object v0
.end method

.method public final s()Lo/Xt;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/Vf;->e:Lo/Xt;

    return-object v0
.end method

.method public final setDebug(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lo/Vf;->i:Z

    return-void
.end method

.method public final setSubtitleY(F)V
    .locals 0

    .line 30
    iput p1, p0, Lo/Vf;->b:F

    return-void
.end method

.method protected final t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;
    .locals 2

    .line 25
    iget-object v0, p0, Lo/Vf;->d:Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    if-nez v0, :cond_0

    const-string v1, "baseLayout"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final u()Landroid/animation/Animator;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/Vf;->g:Landroid/animation/Animator;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lo/Vf;->i:Z

    return v0
.end method

.method public final x()F
    .locals 1

    .line 30
    iget v0, p0, Lo/Vf;->b:F

    return v0
.end method

.method protected final y()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/Vf;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method
