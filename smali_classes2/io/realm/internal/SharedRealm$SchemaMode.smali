.class public final enum Lio/realm/internal/SharedRealm$SchemaMode;
.super Ljava/lang/Enum;
.source "SharedRealm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/internal/SharedRealm$SchemaMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/SharedRealm$SchemaMode;

.field public static final enum SCHEMA_MODE_ADDITIVE:Lio/realm/internal/SharedRealm$SchemaMode;

.field public static final enum SCHEMA_MODE_AUTOMATIC:Lio/realm/internal/SharedRealm$SchemaMode;

.field public static final enum SCHEMA_MODE_MANUAL:Lio/realm/internal/SharedRealm$SchemaMode;

.field public static final enum SCHEMA_MODE_READONLY:Lio/realm/internal/SharedRealm$SchemaMode;

.field public static final enum SCHEMA_MODE_RESET_FILE:Lio/realm/internal/SharedRealm$SchemaMode;


# instance fields
.field final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/realm/internal/SharedRealm$SchemaMode;

    const-string/jumbo v1, "SCHEMA_MODE_AUTOMATIC"

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/SharedRealm$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_AUTOMATIC:Lio/realm/internal/SharedRealm$SchemaMode;

    new-instance v0, Lio/realm/internal/SharedRealm$SchemaMode;

    const-string/jumbo v1, "SCHEMA_MODE_READONLY"

    invoke-direct {v0, v1, v3, v3}, Lio/realm/internal/SharedRealm$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_READONLY:Lio/realm/internal/SharedRealm$SchemaMode;

    new-instance v0, Lio/realm/internal/SharedRealm$SchemaMode;

    const-string/jumbo v1, "SCHEMA_MODE_RESET_FILE"

    invoke-direct {v0, v1, v4, v4}, Lio/realm/internal/SharedRealm$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_RESET_FILE:Lio/realm/internal/SharedRealm$SchemaMode;

    new-instance v0, Lio/realm/internal/SharedRealm$SchemaMode;

    const-string/jumbo v1, "SCHEMA_MODE_ADDITIVE"

    invoke-direct {v0, v1, v5, v5}, Lio/realm/internal/SharedRealm$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_ADDITIVE:Lio/realm/internal/SharedRealm$SchemaMode;

    new-instance v0, Lio/realm/internal/SharedRealm$SchemaMode;

    const-string/jumbo v1, "SCHEMA_MODE_MANUAL"

    invoke-direct {v0, v1, v6, v6}, Lio/realm/internal/SharedRealm$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/SharedRealm$SchemaMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/realm/internal/SharedRealm$SchemaMode;

    sget-object v1, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_AUTOMATIC:Lio/realm/internal/SharedRealm$SchemaMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_READONLY:Lio/realm/internal/SharedRealm$SchemaMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_RESET_FILE:Lio/realm/internal/SharedRealm$SchemaMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_ADDITIVE:Lio/realm/internal/SharedRealm$SchemaMode;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/SharedRealm$SchemaMode;

    aput-object v1, v0, v6

    sput-object v0, Lio/realm/internal/SharedRealm$SchemaMode;->$VALUES:[Lio/realm/internal/SharedRealm$SchemaMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lio/realm/internal/SharedRealm$SchemaMode;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/SharedRealm$SchemaMode;
    .locals 1

    const-class v0, Lio/realm/internal/SharedRealm$SchemaMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/SharedRealm$SchemaMode;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/SharedRealm$SchemaMode;
    .locals 1

    sget-object v0, Lio/realm/internal/SharedRealm$SchemaMode;->$VALUES:[Lio/realm/internal/SharedRealm$SchemaMode;

    invoke-virtual {v0}, [Lio/realm/internal/SharedRealm$SchemaMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/SharedRealm$SchemaMode;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()B
    .locals 1

    iget-byte v0, p0, Lio/realm/internal/SharedRealm$SchemaMode;->value:B

    return v0
.end method
