.class public final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic showError$default(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 166
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;->showError(Landroid/app/Activity;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final createStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v0}, Lo/abD$StateListAnimator;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/acquisition/SignupNativeTabletActivity;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    .line 162
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v1
.end method

.method public final showError(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;->showError$default(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final showError(Landroid/app/Activity;Ljava/lang/String;Z)Z
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 170
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v1, v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 171
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 172
    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 173
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion$showError$dialogBuilder$1;

    invoke-direct {v1, p1, p3}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion$showError$dialogBuilder$1;-><init>(Landroid/app/Activity;Z)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
