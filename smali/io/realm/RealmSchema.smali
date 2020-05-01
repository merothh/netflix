.class public final Lio/realm/RealmSchema;
.super Ljava/lang/Object;
.source "RealmSchema.java"


# static fields
.field private static final TABLE_PREFIX:Ljava/lang/String;


# instance fields
.field private final classToSchema:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/RealmObjectSchema;",
            ">;"
        }
    .end annotation
.end field

.field private final classToTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field

.field columnIndices:Lio/realm/internal/ColumnIndices;

.field private final dynamicClassToSchema:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/realm/RealmObjectSchema;",
            ">;"
        }
    .end annotation
.end field

.field private final dynamicClassToTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field

.field private nativePtr:J

.field private final realm:Lio/realm/BaseRealm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    sput-object v0, Lio/realm/RealmSchema;->TABLE_PREFIX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToTable:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/RealmSchema;->nativePtr:J

    .line 74
    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToTable:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/RealmSchema;->nativePtr:J

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lio/realm/RealmObjectSchema;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToTable:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 79
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->getNativePtr()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v2}, Lio/realm/RealmSchema;->nativeCreateFromList([J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmSchema;->nativePtr:J

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    .line 84
    return-void
.end method

.method private checkEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 254
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    return-void
.end method

.method static getSchemaForTable(Lio/realm/internal/Table;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isProxyClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 330
    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static native nativeClose(J)V
.end method

.method static native nativeCreateFromList([J)J
.end method

.method static native nativeGetAll(J)[J
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lio/realm/RealmSchema;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lio/realm/RealmSchema;->getAll()Ljava/util/Set;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    .line 94
    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->close()V

    goto :goto_0

    .line 96
    :cond_0
    iget-wide v0, p0, Lio/realm/RealmSchema;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/RealmSchema;->nativeClose(J)V

    .line 98
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 4

    .prologue
    .line 164
    const-string/jumbo v0, "Null or empty class names are not allowed"

    invoke-direct {p0, p1, v0}, Lio/realm/RealmSchema;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lio/realm/RealmObjectSchema;

    invoke-direct {v0, p1}, Lio/realm/RealmObjectSchema;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :goto_0
    return-object v0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/RealmSchema;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x38

    if-le v1, v2, :cond_1

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Class name is to long. Limit is 57 characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    iget-object v1, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v1, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Class already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    iget-object v1, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v1, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 178
    new-instance v2, Lio/realm/RealmObjectSchema$DynamicColumnMap;

    invoke-direct {v2, v1}, Lio/realm/RealmObjectSchema$DynamicColumnMap;-><init>(Lio/realm/internal/Table;)V

    .line 179
    new-instance v0, Lio/realm/RealmObjectSchema;

    iget-object v3, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Table;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 108
    const-string/jumbo v1, "Null or empty class names are not allowed"

    invoke-direct {p0, p1, v1}, Lio/realm/RealmSchema;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    if-nez v1, :cond_1

    .line 110
    invoke-virtual {p0, p1}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/realm/RealmSchema;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v2, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 119
    new-instance v2, Lio/realm/RealmObjectSchema$DynamicColumnMap;

    invoke-direct {v2, v1}, Lio/realm/RealmObjectSchema$DynamicColumnMap;-><init>(Lio/realm/internal/Table;)V

    .line 120
    new-instance v0, Lio/realm/RealmObjectSchema;

    iget-object v3, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Table;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public getAll()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lio/realm/RealmObjectSchema;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    if-nez v1, :cond_1

    .line 134
    iget-wide v2, p0, Lio/realm/RealmSchema;->nativePtr:J

    invoke-static {v2, v3}, Lio/realm/RealmSchema;->nativeGetAll(J)[J

    move-result-object v2

    .line 135
    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v3, v2

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 136
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 137
    new-instance v3, Lio/realm/RealmObjectSchema;

    aget-wide v4, v2, v0

    invoke-direct {v3, v4, v5}, Lio/realm/RealmObjectSchema;-><init>(J)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 152
    :goto_1
    return-object v0

    .line 141
    :cond_1
    iget-object v1, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/SharedRealm;->size()J

    move-result-wide v2

    long-to-int v2, v2

    .line 142
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 143
    :goto_2
    if-ge v0, v2, :cond_3

    .line 144
    iget-object v3, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v3, v0}, Lio/realm/internal/SharedRealm;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v3}, Lio/realm/internal/Table;->isModelTable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 148
    :cond_2
    iget-object v4, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v4, v4, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v4, v3}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    .line 149
    new-instance v4, Lio/realm/RealmObjectSchema$DynamicColumnMap;

    invoke-direct {v4, v3}, Lio/realm/RealmObjectSchema$DynamicColumnMap;-><init>(Lio/realm/internal/Table;)V

    .line 150
    new-instance v5, Lio/realm/RealmObjectSchema;

    iget-object v6, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-direct {v5, v6, v3, v4}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Table;Ljava/util/Map;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object v0, v1

    .line 152
    goto :goto_1
.end method

.method getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/internal/ColumnInfo;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    invoke-virtual {v0, p1}, Lio/realm/internal/ColumnIndices;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    .line 268
    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No validated schema information found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/internal/RealmProxyMediator;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lio/realm/RealmSchema;->nativePtr:J

    return-wide v0
.end method

.method getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    .line 309
    if-nez v0, :cond_2

    .line 310
    invoke-static {p1}, Lio/realm/internal/Util;->getOriginalModelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 311
    invoke-static {v1, p1}, Lio/realm/RealmSchema;->isProxyClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v0, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    .line 315
    :cond_0
    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 317
    new-instance v0, Lio/realm/RealmObjectSchema;

    iget-object v3, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v4, p0, Lio/realm/RealmSchema;->columnIndices:Lio/realm/internal/ColumnIndices;

    invoke-virtual {v4, v1}, Lio/realm/internal/ColumnIndices;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/internal/ColumnInfo;->getIndicesMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Table;Ljava/util/Map;)V

    .line 318
    iget-object v2, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_1
    invoke-static {v1, p1}, Lio/realm/RealmSchema;->isProxyClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lio/realm/RealmSchema;->classToSchema:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_2
    return-object v0
.end method

.method getTable(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    .line 289
    if-nez v0, :cond_2

    .line 290
    invoke-static {p1}, Lio/realm/internal/Util;->getOriginalModelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 291
    invoke-static {v1, p1}, Lio/realm/RealmSchema;->isProxyClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v0, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    .line 295
    :cond_0
    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/internal/RealmProxyMediator;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 297
    iget-object v2, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_1
    invoke-static {v1, p1}, Lio/realm/RealmSchema;->isProxyClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lio/realm/RealmSchema;->classToTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_2
    return-object v0
.end method

.method getTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 4

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    iget-object v0, p0, Lio/realm/RealmSchema;->dynamicClassToTable:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    .line 277
    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t exist in this Realm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lio/realm/RealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lio/realm/RealmSchema;->dynamicClassToTable:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1
    return-object v0
.end method
