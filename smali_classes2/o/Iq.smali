.class public Lo/Iq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Iq$Application;
    }
.end annotation


# static fields
.field private static b:Lo/JM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    sput-object v0, Lo/Iq;->b:Lo/JM;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-static {p0}, Lo/Iq;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")",
            "Ljava/util/List<",
            "Lo/Iq$Application;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    const-string v2, "AppActions"

    if-nez v1, :cond_0

    const-string p0, "Service manager is null, no app section"

    .line 42
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "Service manager not ready, no app section"

    .line 47
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 51
    :cond_1
    invoke-static {p0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "Current profile is null, no app section"

    .line 52
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showSettingsInMenu()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    new-instance v1, Lo/Iq$5;

    invoke-direct {v1, p0}, Lo/Iq$5;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 63
    new-instance v2, Lo/Iq$Application;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->jQ:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lo/Iq$Application;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showAccountInMenu()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    new-instance v1, Lo/Iq$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->jP:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/Ip;

    invoke-direct {v3, p0}, Lo/Ip;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-direct {v1, v2, v3}, Lo/Iq$Application;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showContactUsInSlidingMenu()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->m()Lo/hF;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->m()Lo/hF;

    move-result-object v1

    invoke-interface {v1}, Lo/hF;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    new-instance v1, Lo/Iq$4;

    invoke-direct {v1, p0}, Lo/Iq$4;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 87
    new-instance v2, Lo/Iq$Application;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->eU:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lo/Iq$Application;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showSignOutInMenu()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 98
    new-instance v1, Lo/Iq$2;

    invoke-direct {v1, p0}, Lo/Iq$2;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 104
    new-instance v2, Lo/Iq$Application;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->jE:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lo/Iq$Application;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method private static synthetic e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .line 68
    new-instance v0, Lo/Ik;

    invoke-direct {v0, p0}, Lo/Ik;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0}, Lo/Ik;->d()Z

    return-void
.end method
