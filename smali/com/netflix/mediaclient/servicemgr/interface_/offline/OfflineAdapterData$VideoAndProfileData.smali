.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;
.super Ljava/lang/Object;
.source "OfflineAdapterData.java"


# instance fields
.field public final numEpisodes:I

.field public final profile:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

.field public final type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

.field public final video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    iput p4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->numEpisodes:I

    return-void
.end method
