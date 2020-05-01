.class public Lo/cL;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "nf_config_nrm"


# instance fields
.field public c:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

.field public d:Landroid/content/Context;

.field public e:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/cL;->d:Landroid/content/Context;

    .line 31
    iget-object p1, p0, Lo/cL;->d:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "nrmLanguages"

    invoke-static {p1, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    iget-object v1, p0, Lo/cL;->d:Landroid/content/Context;

    const-string v2, "nrmInfo"

    invoke-static {v1, v2, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    move-result-object p1

    iput-object p1, p0, Lo/cL;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    .line 35
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object p1

    .line 36
    invoke-static {}, Lo/afP;->e()Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    invoke-direct {p0}, Lo/cL;->c()Z

    move-result v3

    invoke-static {v1, v3}, Lo/afP;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lo/cL;->c()Z

    move-result v4

    invoke-static {v1, v4}, Lo/afP;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iput-object v2, p0, Lo/cL;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    .line 41
    invoke-direct {p0}, Lo/cL;->d()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    invoke-direct {p0}, Lo/cL;->c()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lo/afP;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    iput-object p1, p0, Lo/cL;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    .line 46
    invoke-direct {p0}, Lo/cL;->d()V

    goto :goto_0

    .line 49
    :cond_1
    iput-object v0, p0, Lo/cL;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    .line 51
    :goto_0
    sget-object p1, Lo/cL;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/cL;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    aput-object v2, v0, v1

    const-string v1, "%s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "nrmLanguages"

    const/4 v1, 0x0

    .line 122
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private c()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lo/cL;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/cI;->e(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->a()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 2

    .line 79
    sget-object v0, Lo/cL;->a:Ljava/lang/String;

    const-string v1, "clearing preference nrm cookies"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lo/cL;->d:Landroid/content/Context;

    const-string v1, "nrmInfo"

    invoke-static {v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "nrmLanguages"

    .line 59
    invoke-static {p0, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;->tags:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 63
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;->tags:[Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lo/cL;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    sget-object p1, Lo/cL;->a:Ljava/lang/String;

    const-string v0, "ignore write of same cookies"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_1
    iget-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    invoke-direct {p0}, Lo/cL;->c()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lo/afP;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 101
    iput-object p1, p0, Lo/cL;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    .line 102
    sget-object p1, Lo/cL;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "updated nrm %s"

    invoke-static {p1, v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 90
    :cond_2
    :goto_0
    sget-object p1, Lo/cL;->a:Ljava/lang/String;

    const-string v0, "nonMemberData object is null or invalid - ignore overwrite"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;)V
    .locals 3

    if-nez p1, :cond_0

    .line 112
    sget-object p1, Lo/cL;->a:Ljava/lang/String;

    const-string v0, "nrmLanguagesData object is null - ignore overwrite"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lo/cL;->d:Landroid/content/Context;

    const-string v2, "nrmLanguages"

    invoke-static {v1, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lo/cL;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    return-void
.end method

.method public e()V
    .locals 2

    .line 73
    sget-object v0, Lo/cL;->a:Ljava/lang/String;

    const-string v1, "clearing nrm cookies"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lo/cL;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    .line 75
    invoke-direct {p0}, Lo/cL;->c()Z

    move-result v0

    invoke-static {v0}, Lo/afP;->c(Z)V

    return-void
.end method
