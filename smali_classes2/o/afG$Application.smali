.class public final Lo/afG$Application;
.super Lo/adj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lo/adj;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2}, Lo/adj;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 48
    sget-object p2, Lo/afG;->a:Lo/afG;

    check-cast p2, Lo/MessagePdu;

    .line 50
    instance-of p2, p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p2, :cond_0

    .line 52
    instance-of p2, p1, Lcom/netflix/mediaclient/ui/launch/UIWebViewActivity;

    if-nez p2, :cond_0

    .line 53
    instance-of p2, p1, Lcom/netflix/mediaclient/ui/launch/UIWebViewTabletActivity;

    if-nez p2, :cond_0

    .line 54
    instance-of p2, p1, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-nez p2, :cond_0

    .line 55
    instance-of p1, p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    if-nez p1, :cond_0

    .line 61
    invoke-static {}, Lo/afG;->b()V

    .line 65
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/NetflixApplication;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
