.class public final Lo/yl$TaskDescription;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/yl;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/aid;

.field final synthetic e:Lo/yl;


# direct methods
.method constructor <init>(Lo/yl;Ljava/lang/String;Lo/aid;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/aid;",
            ")V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lo/yl$TaskDescription;->e:Lo/yl;

    iput-object p2, p0, Lo/yl$TaskDescription;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/yl$TaskDescription;->d:Lo/aid;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lo/yl$TaskDescription;->e:Lo/yl;

    iget-object v1, p0, Lo/yl$TaskDescription;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/yl$TaskDescription;->d:Lo/aid;

    check-cast v2, Lo/aie;

    invoke-static {v0, v1, v2, p1, p2}, Lo/yl;->b(Lo/yl;Ljava/lang/String;Lo/aie;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 54
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "nf_user_fetchAllUserProfiles"

    const-string v0, "MSL failed to get profile user ID token - with statusCode=%s"

    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    iget-object p1, p0, Lo/yl$TaskDescription;->e:Lo/yl;

    sget-object p2, Lo/LegacyErrorStrings;->an:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v0, "CommonStatus.MSL_USER_ID_TOKEN_NOT_FOUND"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {p1, p2}, Lo/yl;->b(Lo/yl;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
