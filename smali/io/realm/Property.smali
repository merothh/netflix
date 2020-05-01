.class public Lio/realm/Property;
.super Ljava/lang/Object;
.source "Property.java"


# static fields
.field public static INDEXED:Z

.field public static PRIMARY_KEY:Z

.field public static REQUIRED:Z


# instance fields
.field private final nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lio/realm/Property;->PRIMARY_KEY:Z

    sput-boolean v0, Lio/realm/Property;->REQUIRED:Z

    sput-boolean v0, Lio/realm/Property;->INDEXED:Z

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/realm/Property;->nativePtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v1

    invoke-static {p1, v1, v0}, Lio/realm/Property;->nativeCreateProperty(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/Property;->nativePtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v1

    if-nez p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v1, p3, p4, v0}, Lio/realm/Property;->nativeCreateProperty(Ljava/lang/String;IZZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/Property;->nativePtr:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCreateProperty(Ljava/lang/String;ILjava/lang/String;)J
.end method

.method private static native nativeCreateProperty(Ljava/lang/String;IZZZ)J
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-wide v0, p0, Lio/realm/Property;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/realm/Property;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/Property;->nativeClose(J)V

    :cond_0
    return-void
.end method

.method protected getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/Property;->nativePtr:J

    return-wide v0
.end method
