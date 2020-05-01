.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$26$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl$26;->e(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic b:Lcom/netflix/model/survey/Survey;

.field final synthetic e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$26;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$26;Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 2501
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$26$2;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$26;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$26$2;->b:Lcom/netflix/model/survey/Survey;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$26$2;->a:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2504
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$26$2;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$26;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$26;->d:Lo/ym;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$26$2;->b:Lcom/netflix/model/survey/Survey;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$26$2;->a:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ym;->a(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
