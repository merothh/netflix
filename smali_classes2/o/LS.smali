.class public final Lo/LS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LS$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/LS$StateListAnimator;


# instance fields
.field private final a:Z

.field private b:Z

.field private d:Lo/LQ;

.field private e:I

.field private final f:Lo/LS$TaskDescription;

.field private final i:Lo/LS$Application;

.field private final j:Lo/UpdateEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/LS$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/LS$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/LS;->c:Lo/LS$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lo/LS;->e:I

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->h:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->a(Landroid/app/Activity;I)Z

    move-result v0

    iput-boolean v0, p0, Lo/LS;->a:Z

    .line 32
    new-instance v0, Lo/LQ;

    invoke-direct {v0, p1}, Lo/LQ;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lo/LS;->d:Lo/LQ;

    .line 34
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p1

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/LS;->j:Lo/UpdateEngine;

    .line 36
    new-instance v0, Lo/LS$TaskDescription;

    invoke-direct {v0, p0}, Lo/LS$TaskDescription;-><init>(Lo/LS;)V

    iput-object v0, p0, Lo/LS;->f:Lo/LS$TaskDescription;

    .line 53
    new-instance v0, Lo/LS$Application;

    invoke-direct {v0, p0, p1}, Lo/LS$Application;-><init>(Lo/LS;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lo/LS;->i:Lo/LS$Application;

    .line 82
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getKeyboardState()Lo/RecoverySystem;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lo/LS;->d:Lo/LQ;

    const-string v2, "keyboardState"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/RecoverySystem;->e()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lo/LQ;->a(Z)V

    .line 84
    new-instance v1, Lo/LS$Activity;

    invoke-direct {v1, p0}, Lo/LS$Activity;-><init>(Lo/LS;)V

    check-cast v1, Lo/RecoverySystem$ActionBar;

    invoke-virtual {v0, v1}, Lo/RecoverySystem;->d(Lo/RecoverySystem$ActionBar;)V

    .line 90
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requireMdxTargetCallback()Lo/Mh;

    move-result-object v0

    const-string v1, "activity.requireMdxTargetCallback()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lo/LS;->d:Lo/LQ;

    new-instance v2, Lo/LS$2;

    invoke-direct {v2, p1, v0}, Lo/LS$2;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lo/LQ;->d(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lo/LS;->d:Lo/LQ;

    invoke-virtual {v0, p1}, Lo/LQ;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 100
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->a()Lo/zN;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lo/zN;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    .line 102
    :cond_1
    invoke-direct {p0, v1}, Lo/LS;->e(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lo/LS$1;

    invoke-direct {v1, p0, p1}, Lo/LS$1;-><init>(Lo/LS;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$Activity;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$Activity;)V

    .line 108
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_TARGETLIST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NOTREADY"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lo/LS;->i:Lo/LS$Application;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 113
    iget-object v0, p0, Lo/LS;->f:Lo/LS$TaskDescription;

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_STATUS_SHOW_CAST_FRAG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static final synthetic c(Lo/LS;Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lo/LS;->b:Z

    return-void
.end method

.method public static final synthetic d(Lo/LS;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lo/LS;->b:Z

    return p0
.end method

.method public static final synthetic e(Lo/LS;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/LS;->e(Z)V

    return-void
.end method

.method private final e(Z)V
    .locals 3

    .line 128
    iget-object v0, p0, Lo/LS;->d:Lo/LQ;

    invoke-virtual {v0, p1}, Lo/LQ;->c(Z)V

    .line 129
    iget-object v0, p0, Lo/LS;->j:Lo/UpdateEngine;

    const-class v1, Lo/Mr;

    new-instance v2, Lo/Mr$ActionBar;

    invoke-direct {v2, p1}, Lo/Mr$ActionBar;-><init>(Z)V

    check-cast v2, Lo/VintfObject;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method


# virtual methods
.method public final d()Lo/LQ;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/LS;->d:Lo/LQ;

    return-object v0
.end method

.method public final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Lo/LS;->a:Z

    invoke-static {p1, v0}, Lo/Mn;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    .line 119
    iget v1, p0, Lo/LS;->e:I

    if-eq v0, v1, :cond_0

    .line 120
    iput v0, p0, Lo/LS;->e:I

    .line 121
    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lo/LS;->d:Lo/LQ;

    const-string v1, "drawable"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/LQ;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
