.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    .line 2051
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 2055
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z

    move-result v0

    .line 2056
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 2057
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const-string v0, "nf_service_useragent"

    if-nez p2, :cond_1

    .line 2058
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    .line 2059
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "onProfileDataFetched language changed, changeUser "

    .line 2060
    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;[Ljava/lang/String;)V

    .line 2063
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 2064
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    goto :goto_0

    :cond_1
    const-string p1, "onProfileDataFetched nothing changed ignore.. "

    .line 2066
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
