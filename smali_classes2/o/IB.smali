.class public final Lo/IB;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z

.field private static b:Z

.field public static final d:Lo/IB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/IB;

    invoke-direct {v0}, Lo/IB;-><init>()V

    sput-object v0, Lo/IB;->d:Lo/IB;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lo/adq;->k(Landroid/content/Context;)Z

    move-result v0

    .line 25
    invoke-static {p1}, Lcom/google/android/play/core/missingsplits/MissingSplitsManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/missingsplits/MissingSplitsManager;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/google/android/play/core/missingsplits/MissingSplitsManager;->disableAppIfMissingRequiredSplits()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 28
    sput-boolean p1, Lo/IB;->b:Z

    const-string p1, "SPY-18449 disable split missing"

    const-string v0, "BadInstallHandler"

    .line 30
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object v0, Lo/jy;->a:Lo/jy;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lo/jy;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v0, "missingInstallFactory"

    .line 35
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/play/core/missingsplits/MissingSplitsManager;->isMissingRequiredSplits()Z

    move-result p1

    sput-boolean p1, Lo/IB;->b:Z

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lo/IB;->a:Z

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lo/aek;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ef:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hc:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "if (PlatformUtils.isAmaz\u2026.label_google_play_store)"

    .line 48
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v1, Lo/PendingIntent$Activity;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v2}, Lo/PendingIntent$Activity;->a(Z)Lo/PendingIntent$Activity;

    move-result-object v1

    .line 55
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qo:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 56
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v2, Lo/IB$Activity;

    invoke-direct {v2, p1}, Lo/IB$Activity;-><init>(Landroid/app/Activity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->e()Lo/PendingIntent;

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 44
    sget-boolean v0, Lo/IB;->a:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lo/IB;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
