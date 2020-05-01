.class abstract Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;
.super Ljava/lang/Object;
.source "ConfigurationAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final callback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;->callback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    .line 748
    return-void
.end method


# virtual methods
.method protected getCallback()Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$FetchTask;->callback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    return-object v0
.end method
