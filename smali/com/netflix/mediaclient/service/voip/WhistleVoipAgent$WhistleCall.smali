.class Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;
.super Ljava/lang/Object;
.source "WhistleVoipAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IVoip$Call;


# instance fields
.field private line:I

.field private state:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1117
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->CONNECTING:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->state:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    .line 1120
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->line:I

    .line 1121
    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I
    .locals 1

    .prologue
    .line 1114
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->line:I

    return v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 1125
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->line:I

    return v0
.end method

.method public getState()Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->state:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    return-object v0
.end method
