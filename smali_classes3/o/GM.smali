.class public final Lo/GM;
.super Lo/GH;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GM$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/GM$StateListAnimator;


# instance fields
.field private a:Z

.field private final b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GM$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GM$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/GM;->d:Lo/GM$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/GH;-><init>()V

    .line 153
    new-instance v0, Lo/GM$Application;

    invoke-direct {v0, p0}, Lo/GM$Application;-><init>(Lo/GM;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lo/GM;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private final a(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extras_post_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0}, Lo/GM;->m()Lo/GT;

    move-result-object v0

    const-string v1, "postId"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/GT;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    move-object p1, p0

    check-cast p1, Lo/GM;

    .line 101
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "postId is mandatory"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lo/GM;->finish()V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lo/GM;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/GM;->o()V

    return-void
.end method

.method public static final synthetic b(Lo/GM;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/GM;->a:Z

    return-void
.end method

.method private final k()V
    .locals 2

    .line 146
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lo/GM;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    return-void
.end method

.method private final m()Lo/GT;
    .locals 2

    .line 47
    invoke-virtual {p0}, Lo/GM;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/GT;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.extras.ExtrasPostFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final n()V
    .locals 4

    .line 139
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 140
    iget-object v1, p0, Lo/GM;->b:Landroid/content/BroadcastReceiver;

    const-string v2, "com.netflix.mediaclient.intent.action.HANDLER_RESULT"

    .line 142
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalIntentNflxUi"

    .line 138
    invoke-static {v0, v1, v3, v2}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private final o()V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lo/GM;->a:Z

    if-eqz v0, :cond_0

    .line 165
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lo/GM;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lo/GM;->l()Lo/GT;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public contentViewSetup()V
    .locals 0

    return-void
.end method

.method protected f()I
    .locals 1

    .line 113
    sget v0, Lo/GS$FragmentManager;->m:I

    return v0
.end method

.method public finish()V
    .locals 2

    .line 107
    invoke-super {p0}, Lo/GH;->finish()V

    .line 108
    sget v0, Lo/GS$Activity;->a:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lo/GM;->overridePendingTransition(II)V

    return-void
.end method

.method public synthetic j()Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lo/GM;->l()Lo/GT;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    return-object v0
.end method

.method protected l()Lo/GT;
    .locals 1

    .line 111
    new-instance v0, Lo/GT;

    invoke-direct {v0}, Lo/GT;-><init>()V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lo/GH;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance p1, Lo/GM$TaskDescription;

    invoke-direct {p1, p0}, Lo/GM$TaskDescription;-><init>(Lo/GM;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    .line 57
    sget v0, Lo/GS$Dialog;->c:I

    invoke-virtual {p0, v0}, Lo/GM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lo/GS$Dialog;->e:I

    invoke-virtual {p0, v0}, Lo/GM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget p1, Lo/GS$Dialog;->r:I

    invoke-virtual {p0, p1}, Lo/GM;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById<View>(R.id.primary_fragment)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 61
    invoke-direct {p0}, Lo/GM;->n()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 65
    invoke-super {p0}, Lo/GH;->onDestroy()V

    .line 66
    invoke-direct {p0}, Lo/GM;->k()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lo/GH;->onNewIntent(Landroid/content/Intent;)V

    .line 91
    invoke-direct {p0, p1}, Lo/GM;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lo/GH;->onPostCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lo/GM;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/GM;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 70
    invoke-super {p0}, Lo/GH;->onStop()V

    .line 74
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->c(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lo/GM;->finish()V

    return-void
.end method

.method public overridePendingTransitionAnimationOnFinish()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTheme()V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lo/GM;->shouldShowKidsTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget v0, Lo/GS$LoaderManager;->e:I

    invoke-virtual {p0, v0}, Lo/GM;->setTheme(I)V

    goto :goto_0

    .line 121
    :cond_0
    sget v0, Lo/GS$LoaderManager;->d:I

    invoke-virtual {p0, v0}, Lo/GM;->setTheme(I)V

    :goto_0
    return-void
.end method

.method public setupWindow()V
    .locals 0

    return-void
.end method

.method public shouldAddSystemBarBackgroundViews()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAttachToolbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
