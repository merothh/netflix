.class public final Lio/realm/RealmObjectSchema;
.super Ljava/lang/Object;
.source "RealmObjectSchema.java"


# static fields
.field private static final SUPPORTED_LINKED_FIELDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/realm/RealmObjectSchema$FieldMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/realm/RealmObjectSchema$FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final columnIndices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final nativePtr:J

.field private final realm:Lio/realm/BaseRealm;

.field final table:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    .line 42
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    const-class v1, [B

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_LINKED_FIELDS:Ljava/util/Map;

    .line 64
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_LINKED_FIELDS:Ljava/util/Map;

    const-class v1, Lio/realm/RealmObject;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_LINKED_FIELDS:Ljava/util/Map;

    const-class v1, Lio/realm/RealmList;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    .line 103
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    .line 104
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->columnIndices:Ljava/util/Map;

    .line 105
    iput-wide p1, p0, Lio/realm/RealmObjectSchema;->nativePtr:J

    .line 106
    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/Table;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/Table;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    .line 82
    iput-object p2, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    .line 83
    iput-object p3, p0, Lio/realm/RealmObjectSchema;->columnIndices:Ljava/util/Map;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/RealmObjectSchema;->nativePtr:J

    .line 85
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    .line 96
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    .line 97
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->columnIndices:Ljava/util/Map;

    .line 98
    invoke-static {p1}, Lio/realm/RealmObjectSchema;->nativeCreateRealmObjectSchema(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmObjectSchema;->nativePtr:J

    .line 99
    return-void
.end method

.method private getProperties()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lio/realm/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    if-nez v0, :cond_0

    .line 274
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/RealmObjectSchema;->nativeGetProperties(J)[J

    move-result-object v1

    .line 275
    new-instance v2, Ljava/util/LinkedHashSet;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 276
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 277
    new-instance v3, Lio/realm/Property;

    aget-wide v4, v1, v0

    invoke-direct {v3, v4, v5}, Lio/realm/Property;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not possible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    return-object v2
.end method

.method private isValidType(Lio/realm/RealmFieldType;[Lio/realm/RealmFieldType;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 725
    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 726
    aget-object v2, p2, v0

    if-ne v2, p1, :cond_1

    .line 727
    const/4 v1, 0x1

    .line 730
    :cond_0
    return v1

    .line 725
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static native nativeAddProperty(JJ)V
.end method

.method static native nativeClose(J)V
.end method

.method static native nativeCreateRealmObjectSchema(Ljava/lang/String;)J
.end method

.method static native nativeGetClassName(J)Ljava/lang/String;
.end method

.method static native nativeGetProperties(J)[J
.end method


# virtual methods
.method protected add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Don\'t use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/Property;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/RealmObjectSchema;->nativeAddProperty(JJ)V

    .line 269
    return-object p0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 114
    invoke-direct {p0}, Lio/realm/RealmObjectSchema;->getProperties()Ljava/util/Set;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/Property;

    .line 116
    invoke-virtual {v0}, Lio/realm/Property;->close()V

    goto :goto_0

    .line 118
    :cond_0
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/RealmObjectSchema;->nativeClose(J)V

    .line 120
    :cond_1
    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    if-nez v0, :cond_0

    .line 139
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/RealmObjectSchema;->nativeGetClassName(J)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method varargs getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J
    .locals 10

    .prologue
    .line 673
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-empty fieldname must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_1
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal field name. It cannot start or end with a \'.\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_3
    iget-object v2, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    .line 680
    if-eqz p2, :cond_4

    array-length v0, p2

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 681
    :goto_0
    const-string/jumbo v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 683
    const-string/jumbo v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 684
    array-length v1, v4

    new-array v3, v1, [J

    .line 685
    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    .line 686
    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v6

    .line 687
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 688
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not refer to a class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 690
    :cond_5
    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v5

    .line 691
    sget-object v8, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v5, v8, :cond_6

    sget-object v8, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v5, v8, :cond_7

    .line 692
    :cond_6
    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v2

    .line 693
    aput-wide v6, v3, v1

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 695
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not refer to a class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_8
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    .line 701
    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v6

    .line 702
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aput-wide v6, v3, v5

    .line 703
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_9

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " is not a field name in class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/realm/RealmObjectSchema;->isValidType(Lio/realm/RealmFieldType;[Lio/realm/RealmFieldType;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Field \'%s\': type mismatch."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v0, v3

    .line 720
    :goto_2
    return-object v0

    .line 711
    :cond_b
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->getFieldIndex(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 712
    if-nez v1, :cond_c

    .line 713
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Field \'%s\' does not exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 716
    if-eqz v0, :cond_d

    invoke-direct {p0, v2, p2}, Lio/realm/RealmObjectSchema;->isValidType(Lio/realm/RealmFieldType;[Lio/realm/RealmFieldType;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Field \'%s\': type mismatch. Was %s, expected %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    .line 718
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 717
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    goto :goto_2
.end method

.method getFieldIndex(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->columnIndices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method protected getNativePtr()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->nativePtr:J

    return-wide v0
.end method
