.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;
.super Ljava/lang/Object;
.source "ConfigurationAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCastWhiteList()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1300(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getCastWhitelist()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getMdxBlackListTargets()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1300(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getMdxBlacklist()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public isDisableMdx()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isDisableMdx()Z

    move-result v0

    return v0
.end method

.method public isDisableWebsocket()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isDisableWebsocket()Z

    move-result v0

    return v0
.end method

.method public isEnableCast()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1300(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->getCastEnabled()Z

    move-result v0

    return v0
.end method

.method public isRemoteControlLockScreenEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isMdxRemoteControlLockScreenEnabled()Z

    move-result v0

    return v0
.end method

.method public isRemoteControlNotificationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$4;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$1200(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->isMdxRemoteControlNotificationEnabled()Z

    move-result v0

    return v0
.end method
