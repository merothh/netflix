.class final Lcom/netflix/mediaclient/ui/settings/StoragePreference$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/settings/StoragePreference;->a(Lo/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/settings/StoragePreference;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/StoragePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference$Activity;->b:Lcom/netflix/mediaclient/ui/settings/StoragePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference$Activity;->b:Lcom/netflix/mediaclient/ui/settings/StoragePreference;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->G()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference$Activity;->b:Lcom/netflix/mediaclient/ui/settings/StoragePreference;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->G()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_0

    .line 82
    invoke-static {p1}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->r()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/StoragePreference$Activity;->b:Lcom/netflix/mediaclient/ui/settings/StoragePreference;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/StoragePreference;->G()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/QU;->d:Lo/QU$TaskDescription;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v1, p1}, Lo/QU$TaskDescription;->d(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
