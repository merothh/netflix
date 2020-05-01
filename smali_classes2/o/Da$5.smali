.class Lo/Da$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Da;


# direct methods
.method constructor <init>(Lo/Da;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/Da$5;->c:Lo/Da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 136
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "https://help.netflix.com/en/node/13590"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lo/Da$5;->c:Lo/Da;

    invoke-static {p2}, Lo/Da;->c(Lo/Da;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lo/Da$5;->c:Lo/Da;

    invoke-static {p2}, Lo/Da;->c(Lo/Da;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 139
    iget-object p2, p0, Lo/Da$5;->c:Lo/Da;

    invoke-static {p2}, Lo/Da;->c(Lo/Da;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lo/Da$5;->c:Lo/Da;

    invoke-static {p1}, Lo/Da;->e(Lo/Da;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unable to launchHelp"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
