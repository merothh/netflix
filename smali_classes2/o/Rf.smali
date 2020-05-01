.class public Lo/Rf;
.super Lo/Re;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Rf$TaskDescription;
    }
.end annotation


# static fields
.field public static final j:Lo/Rf$TaskDescription;

.field private static o:Lo/SY$ActionBar;


# instance fields
.field private final h:Lo/SY;

.field private l:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/Rf$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Rf$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Rf;->j:Lo/Rf$TaskDescription;

    .line 20
    new-instance v0, Lo/SY$ActionBar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/SY$ActionBar;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lo/Rf;->o:Lo/SY$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lo/Re;-><init>()V

    .line 18
    new-instance v0, Lo/SY;

    invoke-direct {v0}, Lo/SY;-><init>()V

    iput-object v0, p0, Lo/Rf;->h:Lo/SY;

    return-void
.end method

.method private final c(Ljava/lang/String;)Lo/PendingIntent$Activity;
    .locals 3

    .line 103
    iget-object v0, p0, Lo/Rf;->h:Lo/SY;

    invoke-virtual {p0}, Lo/Rf;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const-string v2, "requireNetflixActivity()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lo/Rf;->o:Lo/SY$ActionBar;

    invoke-virtual {v2}, Lo/SY$ActionBar;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lo/SY;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/SY$TaskDescription;

    move-result-object p1

    .line 104
    new-instance v0, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Rf;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 105
    invoke-virtual {p1}, Lo/SY$TaskDescription;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->d(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lo/SY$TaskDescription;->c()Landroid/text/Spanned;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(requ\u2026.setMessage(data.message)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic d(Lo/Rf;Ljava/lang/String;ILjava/lang/Object;)Lo/PendingIntent$Activity;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 102
    check-cast p1, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1}, Lo/Rf;->c(Ljava/lang/String;)Lo/PendingIntent$Activity;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getErrorDialogBuilderByCode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic d(Lo/SY$ActionBar;)V
    .locals 0

    .line 17
    sput-object p0, Lo/Rf;->o:Lo/SY$ActionBar;

    return-void
.end method

.method public static final synthetic e()Lo/SY$ActionBar;
    .locals 1

    .line 17
    sget-object v0, Lo/Rf;->o:Lo/SY$ActionBar;

    return-object v0
.end method


# virtual methods
.method protected a()Lo/PendingIntent;
    .locals 2

    .line 78
    invoke-super {p0}, Lo/Re;->a()Lo/PendingIntent;

    move-result-object v0

    .line 79
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aX:I

    invoke-virtual {v0, v1}, Lo/PendingIntent;->setTitle(I)V

    .line 80
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aO:I

    invoke-virtual {p0, v1}, Lo/Rf;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/PendingIntent;->e(Ljava/lang/CharSequence;)V

    const-string v1, "dialog"

    .line 81
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected b()Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-static {p0, v0, v1, v0}, Lo/Rf;->d(Lo/Rf;Ljava/lang/String;ILjava/lang/Object;)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 57
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    iget-object v2, p0, Lo/Rf;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object v0

    const-string v1, "getErrorDialogBuilderByC\u2026on)\n            .create()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method protected c(Z)Lo/PendingIntent;
    .locals 4

    .line 85
    invoke-super {p0, p1}, Lo/Re;->c(Z)Lo/PendingIntent;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lo/Rf;->h:Lo/SY;

    iget-object v1, p0, Lo/Rf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/SY;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lo/Rf;->h:Lo/SY;

    .line 88
    invoke-virtual {p0}, Lo/Rf;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const-string v2, "requireNetflixActivity()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    .line 89
    iget-object v2, p0, Lo/Rf;->e:Ljava/lang/String;

    .line 90
    sget-object v3, Lo/Rf;->o:Lo/SY$ActionBar;

    invoke-virtual {v3}, Lo/SY$ActionBar;->b()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Lo/SY;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/SY$TaskDescription;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lo/SY$TaskDescription;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lo/PendingIntent;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v0}, Lo/SY$TaskDescription;->c()Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/PendingIntent;->e(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    iget v0, p0, Lo/Rf;->b:I

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->da:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 97
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ba:I

    invoke-virtual {p1, v0}, Lo/PendingIntent;->setTitle(I)V

    :cond_1
    const-string v0, "dialog"

    .line 99
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lo/Rf;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;ZZ)Landroid/app/Dialog;
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lo/Rf;->c(Ljava/lang/String;)Lo/PendingIntent$Activity;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lo/Rf;->d()I

    move-result p2

    iget-object v0, p0, Lo/Rf;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    :cond_0
    if-eqz p3, :cond_1

    .line 71
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mj:I

    iget-object p3, p0, Lo/Rf;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, p3}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 73
    :cond_1
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    iget-object p3, p0, Lo/Rf;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, p3}, Lo/PendingIntent$Activity;->c(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 74
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    const-string p2, "builder.create()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/Re;->onDestroyView()V

    invoke-virtual {p0}, Lo/Rf;->c()V

    return-void
.end method
