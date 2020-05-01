.class public final Lo/yl$Activity;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/yl;->d(Ljava/lang/String;Lo/aie;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/yl;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/yl;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lo/yl$Activity;->a:Lo/yl;

    iput-object p2, p0, Lo/yl$Activity;->c:Ljava/lang/String;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    const-string v0, "nf_user_fetchAllUserProfiles"

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "MSL got userID token AND cookies"

    .line 70
    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p2, p0, Lo/yl$Activity;->a:Lo/yl;

    invoke-static {p2}, Lo/yl;->e(Lo/yl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getUserCredentialProvider()Lo/Ar;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    iget-object v0, p0, Lo/yl$Activity;->c:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lo/Ar;->b(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 72
    iget-object p1, p0, Lo/yl$Activity;->a:Lo/yl;

    invoke-static {p1}, Lo/yl;->d(Lo/yl;)Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p2, p0, Lo/yl$Activity;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lo/yl$Activity;->a:Lo/yl;

    invoke-static {p1}, Lo/yl;->a(Lo/yl;)V

    goto :goto_0

    :cond_1
    const-string p1, "MSL got userID token but can\'t get cookies. call failed."

    .line 75
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lo/yl$Activity;->a:Lo/yl;

    sget-object p2, Lo/LegacyErrorStrings;->ar:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v0, "CommonStatus.MSL_SWITCH_PROFILE_BIND_FAIL"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {p1, p2}, Lo/yl;->b(Lo/yl;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
