.class public final Lio/realm/BaseRealm$RealmObjectContext;
.super Ljava/lang/Object;
.source "BaseRealm.java"


# instance fields
.field private acceptDefaultValue:Z

.field private columnInfo:Lio/realm/internal/ColumnInfo;

.field private excludeFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private realm:Lio/realm/BaseRealm;

.field private row:Lio/realm/internal/Row;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lio/realm/BaseRealm$RealmObjectContext;->realm:Lio/realm/BaseRealm;

    iput-object v1, p0, Lio/realm/BaseRealm$RealmObjectContext;->row:Lio/realm/internal/Row;

    iput-object v1, p0, Lio/realm/BaseRealm$RealmObjectContext;->columnInfo:Lio/realm/internal/ColumnInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->acceptDefaultValue:Z

    iput-object v1, p0, Lio/realm/BaseRealm$RealmObjectContext;->excludeFields:Ljava/util/List;

    return-void
.end method

.method public getAcceptDefaultValue()Z
    .locals 1

    iget-boolean v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->acceptDefaultValue:Z

    return v0
.end method

.method public getColumnInfo()Lio/realm/internal/ColumnInfo;
    .locals 1

    iget-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->columnInfo:Lio/realm/internal/ColumnInfo;

    return-object v0
.end method

.method public getExcludeFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->excludeFields:Ljava/util/List;

    return-object v0
.end method

.method public getRealm()Lio/realm/BaseRealm;
    .locals 1

    iget-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->realm:Lio/realm/BaseRealm;

    return-object v0
.end method

.method public getRow()Lio/realm/internal/Row;
    .locals 1

    iget-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->row:Lio/realm/internal/Row;

    return-object v0
.end method

.method public set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/Row;",
            "Lio/realm/internal/ColumnInfo;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/realm/BaseRealm$RealmObjectContext;->realm:Lio/realm/BaseRealm;

    iput-object p2, p0, Lio/realm/BaseRealm$RealmObjectContext;->row:Lio/realm/internal/Row;

    iput-object p3, p0, Lio/realm/BaseRealm$RealmObjectContext;->columnInfo:Lio/realm/internal/ColumnInfo;

    iput-boolean p4, p0, Lio/realm/BaseRealm$RealmObjectContext;->acceptDefaultValue:Z

    iput-object p5, p0, Lio/realm/BaseRealm$RealmObjectContext;->excludeFields:Ljava/util/List;

    return-void
.end method
