.class Lo/rb$4$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rb$4;->b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/rb$4;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lo/rb$4;ZLorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lo/rb$4$4;->a:Lo/rb$4;

    iput-boolean p2, p0, Lo/rb$4$4;->d:Z

    iput-object p3, p0, Lo/rb$4$4;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lo/rb$4$4;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "NfDrmManager_MediaDrmController"

    .line 420
    :try_start_0
    iget-object v1, p0, Lo/rb$4$4;->a:Lo/rb$4;

    iget-object v1, v1, Lo/rb$4;->a:Lo/rb;

    iget-object v2, p0, Lo/rb$4$4;->a:Lo/rb$4;

    iget-object v2, v2, Lo/rb$4;->c:Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lo/rb;->d(Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)Lo/rp;

    move-result-object v1
    :try_end_0
    .catch Lcom/netflix/mediaclient/service/player/drm/NfDrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    invoke-interface {v1}, Lo/rp;->i()V

    .line 429
    iget-boolean v2, p0, Lo/rb$4$4;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/rb$4$4;->b:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-interface {v1}, Lo/rp;->c()Lo/rf;

    move-result-object v0

    .line 437
    iget-object v2, p0, Lo/rb$4$4;->b:Lorg/json/JSONObject;

    invoke-interface {v0, v2}, Lo/rf;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 438
    invoke-interface {v1}, Lo/rp;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    invoke-interface {v0}, Lo/rf;->i()[B

    move-result-object v0

    .line 442
    invoke-interface {v1, v0}, Lo/rp;->b([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "fetchStreamingLicense failed"

    .line 430
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lo/rb$4$4;->c:Lcom/netflix/mediaclient/android/app/Status;

    iget-object v2, p0, Lo/rb$4$4;->a:Lo/rb$4;

    iget-boolean v2, v2, Lo/rb$4;->e:Z

    invoke-interface {v1, v0, v2}, Lo/rp;->e(Lcom/netflix/mediaclient/android/app/Status;Z)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    const-string v1, "fetchStreamingLicense returned, no matching session"

    .line 425
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
