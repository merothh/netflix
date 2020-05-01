.class public final Lo/QO;
.super Lo/QE;
.source ""


# instance fields
.field private final a:Lo/Rw;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lo/QE;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 14
    invoke-direct {p0}, Lo/QO;->c()Lo/Rw;

    move-result-object p1

    iput-object p1, p0, Lo/QO;->a:Lo/Rw;

    return-void
.end method

.method private final c()Lo/Rw;
    .locals 7

    .line 30
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lo/Rx;

    invoke-virtual {p0}, Lo/QO;->e()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/Rx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    check-cast v0, Lo/Rw;

    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lo/dM;->e:Lo/dM$ActionBar;

    invoke-virtual {v0}, Lo/dM$ActionBar;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lo/Ry;

    invoke-virtual {p0}, Lo/QO;->e()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/Ry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    check-cast v0, Lo/Rw;

    return-object v0

    .line 36
    :cond_1
    new-instance v0, Lo/Rw;

    invoke-virtual {p0}, Lo/QO;->e()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/Rw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-object v0
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 19
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const v3, 0x800003

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    check-cast v0, Lo/Fragment$StateListAnimator;

    .line 18
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Lo/Fragment$StateListAnimator;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 25
    iget-object v0, p0, Lo/QO;->a:Lo/Rw;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/view/View;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 26
    iget-object p1, p0, Lo/QO;->a:Lo/Rw;

    invoke-virtual {p1}, Lo/Rw;->c()V

    return-void
.end method
