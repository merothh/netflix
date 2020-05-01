.class final Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$6;
.super Ljava/lang/Object;
.source "ConfigurationAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;
    .locals 1

    .prologue
    .line 1163
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->KUBRICK_HERO_IMAGES:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    return-object v0
.end method
