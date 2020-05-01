.class Lo/Re$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Re;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Re;


# direct methods
.method constructor <init>(Lo/Re;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lo/Re$8;->a:Lo/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 194
    iget-object p1, p0, Lo/Re$8;->a:Lo/Re;

    invoke-virtual {p1}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    .line 195
    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 197
    iget-object p2, p0, Lo/Re$8;->a:Lo/Re;

    invoke-static {p2}, Lo/Re;->e(Lo/Re;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 198
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/Re$8;->a:Lo/Re;

    invoke-static {v0}, Lo/Re;->e(Lo/Re;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 199
    iget-object p2, p0, Lo/Re$8;->a:Lo/Re;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lo/Re;->b(Lo/Re;Ljava/lang/Long;)Ljava/lang/Long;

    .line 203
    :cond_0
    iget-object p2, p0, Lo/Re$8;->a:Lo/Re;

    invoke-virtual {p2}, Lo/Re;->dismissAllowingStateLoss()V

    .line 204
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p2

    invoke-virtual {p2}, Lo/SerializablePermission;->b()Z

    .line 207
    iget-object p2, p0, Lo/Re$8;->a:Lo/Re;

    invoke-static {p2, p1}, Lo/Re;->b(Lo/Re;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 209
    sget-object v0, Lo/Tn;->d:Lo/Tn$Application;

    iget-object v1, p0, Lo/Re$8;->a:Lo/Re;

    invoke-static {v1}, Lo/Re;->b(Lo/Re;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lo/Tn$Application;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Lo/Tn;

    move-result-object p2

    .line 210
    iget-object v0, p0, Lo/Re$8;->a:Lo/Re;

    invoke-virtual {v0}, Lo/Re;->n()Lo/Am;

    move-result-object v0

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p2, v0, v1}, Lo/Tn;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p2, v0}, Lo/Tn;->setCancelable(Z)V

    .line 212
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    :cond_1
    return-void
.end method
