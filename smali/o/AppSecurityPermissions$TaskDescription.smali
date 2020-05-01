.class final Lo/AppSecurityPermissions$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AppSecurityPermissions;->b(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/AppSecurityPermissions;

.field final synthetic b:Lo/Serializable;

.field final synthetic d:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;


# direct methods
.method constructor <init>(Lo/AppSecurityPermissions;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/Serializable;)V
    .locals 0

    iput-object p1, p0, Lo/AppSecurityPermissions$TaskDescription;->a:Lo/AppSecurityPermissions;

    iput-object p2, p0, Lo/AppSecurityPermissions$TaskDescription;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iput-object p3, p0, Lo/AppSecurityPermissions$TaskDescription;->b:Lo/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lo/AppSecurityPermissions$TaskDescription;->d()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/content/Intent;
    .locals 6

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lo/AppSecurityPermissions$TaskDescription;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iget-object v2, p0, Lo/AppSecurityPermissions$TaskDescription;->a:Lo/AppSecurityPermissions;

    check-cast v2, Lo/AnalogClock;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->c(Lo/AnalogClock;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android.intent.extra.SUBJECT"

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 39
    :cond_0
    iget-object v1, p0, Lo/AppSecurityPermissions$TaskDescription;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iget-object v2, p0, Lo/AppSecurityPermissions$TaskDescription;->a:Lo/AppSecurityPermissions;

    check-cast v2, Lo/AnalogClock;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->e(Lo/AnalogClock;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 59
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->pW:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lookup.get<Context>().re\u2026String(R.string.share_to)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_1

    .line 45
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lo/AppSecurityPermissions$TaskDescription;->b:Lo/Serializable;

    check-cast v3, Landroid/content/Context;

    const-class v4, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    iget-object v3, p0, Lo/AppSecurityPermissions$TaskDescription;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iget-object v4, p0, Lo/AppSecurityPermissions$TaskDescription;->a:Lo/AppSecurityPermissions;

    check-cast v4, Lo/AnalogClock;

    invoke-interface {v3, v4}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->d(Lo/AnalogClock;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.netflix.mediaclient.android.sharing.impl.SHARE_URL"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Intent(netflixActivity, \u2026reable.getShareUrl(this))"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lo/AppSecurityPermissions$TaskDescription;->b:Lo/Serializable;

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 49
    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "shareReceiverIntent"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0
.end method
