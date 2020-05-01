.class Lo/rt$1;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rt;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/rt;


# direct methods
.method constructor <init>(Lo/rt;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lo/rt$1;->a:Lo/rt;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lo/rt$1;->a:Lo/rt;

    invoke-static {v0, p1}, Lo/rt;->e(Lo/rt;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 150
    iget-object p1, p0, Lo/rt$1;->a:Lo/rt;

    invoke-static {p1}, Lo/rt;->b(Lo/rt;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 152
    iget-object p1, p0, Lo/rt$1;->a:Lo/rt;

    invoke-static {p1}, Lo/rt;->a(Lo/rt;)V

    return-void

    .line 155
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lo/rt$1;->a:Lo/rt;

    invoke-static {p1}, Lo/rt;->e(Lo/rt;)Lo/rn$StateListAnimator;

    move-result-object p1

    iget-object v0, p0, Lo/rt$1;->a:Lo/rt;

    invoke-static {v0}, Lo/rt;->c(Lo/rt;)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {p1, v0, v1}, Lo/rn$StateListAnimator;->b(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object p1, p0, Lo/rt$1;->a:Lo/rt;

    invoke-static {p1}, Lo/rt;->e(Lo/rt;)Lo/rn$StateListAnimator;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {p1, p2, v0}, Lo/rn$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    .line 163
    :goto_0
    instance-of p1, p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lo/rt$1;->a:Lo/rt;

    invoke-static {p1}, Lo/rt;->e(Lo/rt;)Lo/rn$StateListAnimator;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {p1, p2, v0}, Lo/rn$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    .line 165
    iget-object p1, p0, Lo/rt$1;->a:Lo/rt;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/rt;->b(Lo/rt;I)I

    :cond_2
    return-void
.end method
