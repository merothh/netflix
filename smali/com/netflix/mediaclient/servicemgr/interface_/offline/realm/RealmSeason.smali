.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;
.super Lio/realm/RealmObject;
.source "RealmSeason.java"

# interfaces
.implements Lio/realm/RealmSeasonRealmProxyInterface;


# instance fields
.field private label:Ljava/lang/String;

.field private number:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->realmGet$label()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->realmGet$number()I

    move-result v0

    return v0
.end method

.method public realmGet$label()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->label:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$number()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->number:I

    return v0
.end method

.method public realmSet$label(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->label:Ljava/lang/String;

    return-void
.end method

.method public realmSet$number(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->number:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->realmSet$label(Ljava/lang/String;)V

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->realmSet$number(I)V

    return-void
.end method
