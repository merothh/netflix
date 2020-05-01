.class Lio/realm/RealmObjectSchema$FieldMetaData;
.super Ljava/lang/Object;
.source "RealmObjectSchema.java"


# instance fields
.field public final defaultNullable:Z

.field public final realmType:Lio/realm/RealmFieldType;


# direct methods
.method public constructor <init>(Lio/realm/RealmFieldType;Z)V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p1, p0, Lio/realm/RealmObjectSchema$FieldMetaData;->realmType:Lio/realm/RealmFieldType;

    .line 784
    iput-boolean p2, p0, Lio/realm/RealmObjectSchema$FieldMetaData;->defaultNullable:Z

    .line 785
    return-void
.end method
