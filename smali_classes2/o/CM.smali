.class public final Lo/CM;
.super Lo/CI;
.source ""


# instance fields
.field private a:I

.field private d:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

.field private final e:Lcom/google/android/play/core/appupdate/AppUpdateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "InAppUpdate"

    .line 22
    invoke-direct {p0, v0}, Lo/CI;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    const-string v0, "AppUpdateManagerFactory.\u2026ntext.applicationContext)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/CM;->e:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    return-void
.end method

.method private final a()V
    .locals 2

    .line 232
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 234
    iget-object v0, p0, Lo/CM;->e:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 235
    new-instance v1, Lo/CM$ActionBar;

    invoke-direct {v1, p0}, Lo/CM$ActionBar;-><init>(Lo/CM;)V

    check-cast v1, Lcom/google/android/play/core/tasks/OnSuccessListener;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 238
    new-instance v1, Lo/CM$Application;

    invoke-direct {v1, p0}, Lo/CM$Application;-><init>(Lo/CM;)V

    check-cast v1, Lcom/google/android/play/core/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 1

    .line 172
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 173
    iput-object p2, p0, Lo/CM;->d:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 174
    invoke-direct {p0, p1}, Lo/CM;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method private final a(Ljava/lang/Exception;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .line 204
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 209
    invoke-virtual {p0}, Lo/CM;->d()V

    .line 210
    invoke-virtual {p0}, Lo/CM;->c()V

    .line 211
    iget v0, p0, Lo/CM;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "inAppUpdate"

    invoke-virtual {p0, v1, v0, p1}, Lo/CM;->e(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 212
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lo/CM;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic a(Lo/CM;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lo/CM;->d:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    return-void
.end method

.method public static final synthetic a(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lo/CM;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method

.method public static final synthetic a(Lo/CM;Ljava/lang/Exception;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lo/CM;->a(Ljava/lang/Exception;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method private final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .line 132
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 133
    iget-object v0, p0, Lo/CM;->e:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 135
    new-instance v1, Lo/CM$FragmentManager;

    invoke-direct {v1, p0, p1}, Lo/CM$FragmentManager;-><init>(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Lcom/google/android/play/core/tasks/OnSuccessListener;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 157
    new-instance v1, Lo/CM$Dialog;

    invoke-direct {v1, p0, p1}, Lo/CM$Dialog;-><init>(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Lcom/google/android/play/core/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .line 96
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 98
    iget-object v0, p0, Lo/CM;->e:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 100
    new-instance v1, Lo/CM$LoaderManager;

    invoke-direct {v1, p0, p1}, Lo/CM$LoaderManager;-><init>(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Lcom/google/android/play/core/tasks/OnSuccessListener;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 124
    new-instance v1, Lo/CM$PendingIntent;

    invoke-direct {v1, p0, p1}, Lo/CM$PendingIntent;-><init>(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Lcom/google/android/play/core/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public static final synthetic c(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lo/CM;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method

.method public static final synthetic d(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lo/CM;->j(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method private final e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 5

    .line 178
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 179
    iget-object v0, p0, Lo/CM;->d:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 185
    invoke-direct {p0, p1}, Lo/CM;->j(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 188
    :cond_1
    :try_start_0
    iget-object v0, p0, Lo/CM;->e:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 189
    iget-object v1, p0, Lo/CM;->d:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 190
    iget v2, p0, Lo/CM;->a:I

    .line 191
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    const/16 v4, 0x17

    .line 188
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z

    .line 194
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 197
    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0, p1}, Lo/CM;->a(Ljava/lang/Exception;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :goto_0
    return-void
.end method

.method private final e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 1

    .line 166
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 167
    iput-object p2, p0, Lo/CM;->d:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 168
    invoke-direct {p0, p1}, Lo/CM;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method public static final synthetic e(Lo/CM;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/CM;->a()V

    return-void
.end method

.method private final j(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 4

    .line 216
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 217
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-eqz v0, :cond_0

    .line 218
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {p0, v0}, Lo/CM;->e(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 219
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pJ:I

    new-instance v2, Lo/CM$Activity;

    invoke-direct {v2, p0}, Lo/CM$Activity;-><init>(Lo/CM;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 222
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "snackBar.view"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->y:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 224
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x106001b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 225
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_0

    return-void

    .line 67
    :cond_0
    iget p2, p0, Lo/CM;->a:I

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "USER_CANCELED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "inAppUpdate"

    invoke-virtual {p0, v1, p2, v0}, Lo/CM;->e(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 77
    :cond_2
    iget p2, p0, Lo/CM;->a:I

    if-nez p2, :cond_3

    .line 78
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lo/CM;->a(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 248
    iget-object v0, p0, Lo/CM;->e:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 250
    new-instance v1, Lo/CM$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/CM$StateListAnimator;-><init>(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Lcom/google/android/play/core/tasks/OnSuccessListener;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    .line 257
    new-instance v0, Lo/CM$TaskDescription;

    invoke-direct {v0, p0}, Lo/CM$TaskDescription;-><init>(Lo/CM;)V

    check-cast v0, Lcom/google/android/play/core/tasks/OnFailureListener;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    const-string v0, "inAppUpdate"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 39
    iput v2, p0, Lo/CM;->a:I

    .line 40
    invoke-virtual {p0, v0, v1}, Lo/CM;->d(Ljava/lang/String;Z)V

    .line 41
    invoke-direct {p0, p1}, Lo/CM;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return v2

    .line 44
    :cond_0
    iput v1, p0, Lo/CM;->a:I

    .line 45
    invoke-virtual {p0}, Lo/CM;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 49
    move-object p2, p1

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p0, p2}, Lo/CM;->e(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, v0, v2}, Lo/CM;->d(Ljava/lang/String;Z)V

    .line 51
    invoke-direct {p0, p1}, Lo/CM;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return v2

    :cond_1
    return v1
.end method

.method public final e(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "activity.window"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 271
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->lR:I

    const/4 v1, -0x2

    .line 269
    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const-string v0, "Snackbar.make(\n         \u2026ackbar.LENGTH_INDEFINITE)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
