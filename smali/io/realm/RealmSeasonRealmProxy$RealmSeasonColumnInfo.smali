.class final Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmSeasonRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public labelIndex:J

.field public numberIndex:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    invoke-direct {p0}, Lio/realm/internal/ColumnInfo;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "RealmSeason"

    const-string/jumbo v2, "number"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->numberIndex:J

    const-string/jumbo v1, "number"

    iget-wide v2, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->numberIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "RealmSeason"

    const-string/jumbo v2, "label"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->labelIndex:J

    const-string/jumbo v1, "label"

    iget-wide v2, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->labelIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final clone()Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;
    .locals 1

    invoke-super {p0}, Lio/realm/internal/ColumnInfo;->clone()Lio/realm/internal/ColumnInfo;

    move-result-object v0

    check-cast v0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/realm/internal/ColumnInfo;
    .locals 1

    invoke-virtual {p0}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->clone()Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->clone()Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public final copyColumnInfoFrom(Lio/realm/internal/ColumnInfo;)V
    .locals 2

    check-cast p1, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;

    iget-wide v0, p1, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->numberIndex:J

    iput-wide v0, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->numberIndex:J

    iget-wide v0, p1, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->labelIndex:J

    iput-wide v0, p0, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->labelIndex:J

    invoke-virtual {p1}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->getIndicesMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/RealmSeasonRealmProxy$RealmSeasonColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    return-void
.end method
