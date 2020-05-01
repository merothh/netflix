.class Lo/rb$4;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rb;->a(Ljava/lang/Long;Z)Lo/qc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/rb;

.field final synthetic c:Ljava/lang/Long;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/rb;Ljava/lang/Long;Z)V
    .locals 0

    .line 410
    iput-object p1, p0, Lo/rb$4;->a:Lo/rb;

    iput-object p2, p0, Lo/rb$4;->c:Ljava/lang/Long;

    iput-boolean p3, p0, Lo/rb$4;->e:Z

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 413
    iget-object v1, p0, Lo/rb$4;->c:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "NfDrmManager_MediaDrmController"

    const-string v2, "fetchStreamingLicense movie %d, result %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 414
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    .line 415
    iget-object v1, p0, Lo/rb$4;->a:Lo/rb;

    iget-object v1, v1, Lo/rb;->e:Landroid/os/Handler;

    new-instance v2, Lo/rb$4$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lo/rb$4$4;-><init>(Lo/rb$4;ZLorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
