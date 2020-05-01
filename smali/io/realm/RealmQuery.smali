.class public final Lio/realm/RealmQuery;
.super Ljava/lang/Object;
.source "RealmQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INVALID_NATIVE_POINTER:Ljava/lang/Long;


# instance fields
.field private argumentsHolder:Lio/realm/internal/async/ArgumentsHolder;

.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private linkView:Lio/realm/internal/LinkView;

.field private query:Lio/realm/internal/TableQuery;

.field private realm:Lio/realm/BaseRealm;

.field private schema:Lio/realm/RealmObjectSchema;

.field private table:Lio/realm/internal/TableOrView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lio/realm/RealmQuery;->INVALID_NATIVE_POINTER:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lio/realm/Realm;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iput-object p2, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    iget-object v0, p1, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    iget-object v0, v0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    iput-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/TableOrView;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmQuery;->linkView:Lio/realm/internal/LinkView;

    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/TableOrView;

    invoke-interface {v0}, Lio/realm/internal/TableOrView;->where()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    return-void
.end method

.method private checkQueryIsNotReused()V
    .locals 2

    iget-object v0, p0, Lio/realm/RealmQuery;->argumentsHolder:Lio/realm/internal/async/ArgumentsHolder;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This RealmQuery is already used by a find* query, please create a new query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static createQuery(Lio/realm/Realm;Ljava/lang/Class;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lio/realm/RealmQuery;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/Realm;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getSourceRowIndexForFirstObject()J
    .locals 2

    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->find()J

    move-result-wide v0

    return-wide v0
.end method

.method private isDynamicQuery()Z
    .locals 1

    iget-object v0, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public count()J
    .locals 2

    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    if-nez p2, :cond_0

    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0}, Lio/realm/internal/TableQuery;->isNull([J)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lio/realm/internal/TableQuery;->equalTo([JJ)Lio/realm/internal/TableQuery;

    goto :goto_0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0, p2, p3}, Lio/realm/internal/TableQuery;->equalTo([JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public findAll()Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lio/realm/RealmQuery;->checkQueryIsNotReused()V

    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1}, Lio/realm/internal/TableQuery;->findAll()Lio/realm/internal/TableView;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/realm/RealmResults;->createFromDynamicTableOrView(Lio/realm/BaseRealm;Lio/realm/internal/TableOrView;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1}, Lio/realm/internal/TableQuery;->findAll()Lio/realm/internal/TableView;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lio/realm/RealmResults;->createFromTableOrView(Lio/realm/BaseRealm;Lio/realm/internal/TableOrView;Ljava/lang/Class;)Lio/realm/RealmResults;

    move-result-object v0

    goto :goto_0
.end method

.method public findFirst()Lio/realm/RealmModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lio/realm/RealmQuery;->checkQueryIsNotReused()V

    invoke-direct {p0}, Lio/realm/RealmQuery;->getSourceRowIndexForFirstObject()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArgument()Lio/realm/internal/async/ArgumentsHolder;
    .locals 1

    iget-object v0, p0, Lio/realm/RealmQuery;->argumentsHolder:Lio/realm/internal/async/ArgumentsHolder;

    return-object v0
.end method

.method handoverQueryPointer()J
    .locals 2

    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, v1}, Lio/realm/internal/TableQuery;->handoverQuery(Lio/realm/internal/SharedRealm;)J

    move-result-wide v0

    return-wide v0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    if-nez p2, :cond_0

    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0}, Lio/realm/internal/TableQuery;->isNotNull([J)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lio/realm/internal/TableQuery;->notEqualTo([JJ)Lio/realm/internal/TableQuery;

    goto :goto_0
.end method
