.class final Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmProfileRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public iconUrlIndex:J

.field public idIndex:J

.field public kidsIndex:J

.field public nameIndex:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    invoke-direct {p0}, Lio/realm/internal/ColumnInfo;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "RealmProfile"

    const-string/jumbo v2, "id"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->idIndex:J

    const-string/jumbo v1, "id"

    iget-wide v2, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->idIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "RealmProfile"

    const-string/jumbo v2, "name"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->nameIndex:J

    const-string/jumbo v1, "name"

    iget-wide v2, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->nameIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "RealmProfile"

    const-string/jumbo v2, "kids"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->kidsIndex:J

    const-string/jumbo v1, "kids"

    iget-wide v2, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->kidsIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "RealmProfile"

    const-string/jumbo v2, "iconUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->iconUrlIndex:J

    const-string/jumbo v1, "iconUrl"

    iget-wide v2, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->iconUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final clone()Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;
    .locals 1

    invoke-super {p0}, Lio/realm/internal/ColumnInfo;->clone()Lio/realm/internal/ColumnInfo;

    move-result-object v0

    check-cast v0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/realm/internal/ColumnInfo;
    .locals 1

    invoke-virtual {p0}, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->clone()Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->clone()Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public final copyColumnInfoFrom(Lio/realm/internal/ColumnInfo;)V
    .locals 2

    check-cast p1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;

    iget-wide v0, p1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->idIndex:J

    iput-wide v0, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->idIndex:J

    iget-wide v0, p1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->nameIndex:J

    iput-wide v0, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->nameIndex:J

    iget-wide v0, p1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->kidsIndex:J

    iput-wide v0, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->kidsIndex:J

    iget-wide v0, p1, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->iconUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->iconUrlIndex:J

    invoke-virtual {p1}, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->getIndicesMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/RealmProfileRealmProxy$RealmProfileColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    return-void
.end method
