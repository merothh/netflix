.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$VerifyLoginViaDynecomTask;
.super Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;
.source "ConfigurationAgent.java"


# instance fields
.field mEmail:Ljava/lang/String;

.field mPwd:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$VerifyLoginViaDynecomTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    .line 1379
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 1380
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$VerifyLoginViaDynecomTask;->mEmail:Ljava/lang/String;

    .line 1381
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$VerifyLoginViaDynecomTask;->mPwd:Ljava/lang/String;

    .line 1382
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$VerifyLoginViaDynecomTask;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$600(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$VerifyLoginViaDynecomTask;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$VerifyLoginViaDynecomTask;->mPwd:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$VerifyLoginViaDynecomTask;->getCallback()Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;->verifyLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 1387
    return-void
.end method
