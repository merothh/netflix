.class public final enum Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;
.super Ljava/lang/Enum;
.source "QueryUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

.field public static final enum COMPLETE_ASYNC_OBJECT:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

.field public static final enum COMPLETE_ASYNC_RESULTS:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

.field public static final enum COMPLETE_UPDATE_ASYNC_QUERIES:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

.field public static final enum THROW_BACKGROUND_EXCEPTION:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    const-string/jumbo v1, "COMPLETE_ASYNC_RESULTS"

    invoke-direct {v0, v1, v2}, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_ASYNC_RESULTS:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    .line 41
    new-instance v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    const-string/jumbo v1, "COMPLETE_ASYNC_OBJECT"

    invoke-direct {v0, v1, v3}, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_ASYNC_OBJECT:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    .line 42
    new-instance v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    const-string/jumbo v1, "COMPLETE_UPDATE_ASYNC_QUERIES"

    invoke-direct {v0, v1, v4}, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_UPDATE_ASYNC_QUERIES:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    .line 43
    new-instance v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    const-string/jumbo v1, "THROW_BACKGROUND_EXCEPTION"

    invoke-direct {v0, v1, v5}, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->THROW_BACKGROUND_EXCEPTION:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    sget-object v1, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_ASYNC_RESULTS:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_ASYNC_OBJECT:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_UPDATE_ASYNC_QUERIES:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->THROW_BACKGROUND_EXCEPTION:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    aput-object v1, v0, v5

    sput-object v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->$VALUES:[Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->$VALUES:[Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    invoke-virtual {v0}, [Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    return-object v0
.end method
