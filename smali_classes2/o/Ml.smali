.class public Lo/Ml;
.super Lo/Ms;
.source ""


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/Ms;-><init>()V

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_REMOTE_LOGIN_CONSENT"

    .line 20
    iput-object v0, p0, Lo/Ml;->d:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lo/Ml;
    .locals 4

    .line 37
    new-instance v0, Lo/Ml;

    invoke-direct {v0}, Lo/Ml;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "friendlyName"

    .line 41
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-virtual {v0, v1}, Lo/Ml;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 24
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hz:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lo/Ml;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lo/Ml;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/Ml;->e(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 2

    .line 28
    invoke-virtual {p0}, Lo/Ml;->dismissAllowingStateLoss()V

    .line 29
    invoke-virtual {p0}, Lo/Ml;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    move-result-object v0

    invoke-virtual {v0}, Lo/UnsupportedEncodingException;->b()I

    .line 30
    invoke-virtual {p0}, Lo/Ml;->getActivity()Lo/Serializable;

    move-result-object v0

    .line 31
    instance-of v1, v0, Lo/Ms$ActionBar;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Lo/Ms$ActionBar;

    iget-object v1, p0, Lo/Ml;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/Ms$ActionBar;->onMdxDialogResponse(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 51
    invoke-direct {p0}, Lo/Ml;->c()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lo/Ml;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "friendlyName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lo/Ml;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Ml;->getActivity()Lo/Serializable;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v1, v2, v3}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    const-string v2, "mdxui"

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {v1, p1}, Lo/PendingIntent$Activity;->d(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    goto :goto_0

    :cond_0
    const-string p1, "No title..."

    .line 61
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v1, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    goto :goto_1

    :cond_1
    const-string p1, "No message..."

    .line 68
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jF:I

    invoke-virtual {p0, p1}, Lo/Ml;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lo/Ml$2;

    invoke-direct {v0, p0}, Lo/Ml$2;-><init>(Lo/Ml;)V

    invoke-virtual {v1, p1, v0}, Lo/PendingIntent$Activity;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 86
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {p0, p1}, Lo/Ml;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lo/Ml$3;

    invoke-direct {v0, p0}, Lo/Ml$3;-><init>(Lo/Ml;)V

    invoke-virtual {v1, p1, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 101
    new-instance p1, Lo/Ml$1;

    invoke-direct {p1, p0}, Lo/Ml$1;-><init>(Lo/Ml;)V

    invoke-virtual {p0, p1}, Lo/Ml;->e(Lo/WebChromeClient$Application;)V

    .line 114
    invoke-virtual {v1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    return-object p1
.end method
