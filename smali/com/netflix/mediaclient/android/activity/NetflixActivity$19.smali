.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$19;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialogIfExist(Lo/Am;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/hR;

.field final synthetic b:Lo/Am;

.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/hR;)V
    .locals 0

    .line 3730
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$19;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$19;->b:Lo/Am;

    iput-object p3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$19;->a:Lo/hR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3733
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$19;->b:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->s()Lo/zF;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$19;->a:Lo/hR;

    invoke-interface {v0, v1}, Lo/zF;->e(Lo/hR;)V

    return-void
.end method
