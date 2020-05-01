.class public final Lo/Mw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Mv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    .line 28
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/MD;

    invoke-direct {v1}, Lo/MD;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_AUDIOSUB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/MH;

    invoke-direct {v1}, Lo/MH;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_CAPABILITY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/ME;

    invoke-direct {v1}, Lo/ME;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_STATE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/Mo;

    invoke-direct {v1}, Lo/Mo;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_DIALOGCANCEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/Mt;

    invoke-direct {v1}, Lo/Mt;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_DIALOGSHOW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/Mu;

    invoke-direct {v1}, Lo/Mu;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_ERROR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/MB;

    invoke-direct {v1}, Lo/MB;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NETWORK_CONNECTIVITY_CHANGE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/MF;

    invoke-direct {v1}, Lo/MF;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_MOVIEMETADATA_AVAILABLE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/MJ;

    invoke-direct {v1}, Lo/MJ;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_MOVIEMETADA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/MC;

    invoke-direct {v1}, Lo/MC;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NOTREADY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/MA;

    invoke-direct {v1}, Lo/MA;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_READY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/MG;

    invoke-direct {v1}, Lo/MG;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_TARGETLIST"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/My;

    invoke-direct {v1}, Lo/My;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_CONSENT_DIALOG_SHOW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    new-instance v1, Lo/Mz;

    invoke-direct {v1}, Lo/Mz;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_CONSENT_DIALOG_CANCEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lo/Mv;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/Mw;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Mv;

    return-object p1
.end method
