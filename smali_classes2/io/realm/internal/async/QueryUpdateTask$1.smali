.class synthetic Lio/realm/internal/async/QueryUpdateTask$1;
.super Ljava/lang/Object;
.source "QueryUpdateTask.java"


# static fields
.field static final synthetic $SwitchMap$io$realm$internal$async$QueryUpdateTask$NotifyEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->values()[Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/realm/internal/async/QueryUpdateTask$1;->$SwitchMap$io$realm$internal$async$QueryUpdateTask$NotifyEvent:[I

    :try_start_0
    sget-object v0, Lio/realm/internal/async/QueryUpdateTask$1;->$SwitchMap$io$realm$internal$async$QueryUpdateTask$NotifyEvent:[I

    sget-object v1, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_ASYNC_RESULTS:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    invoke-virtual {v1}, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lio/realm/internal/async/QueryUpdateTask$1;->$SwitchMap$io$realm$internal$async$QueryUpdateTask$NotifyEvent:[I

    sget-object v1, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_ASYNC_OBJECT:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    invoke-virtual {v1}, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lio/realm/internal/async/QueryUpdateTask$1;->$SwitchMap$io$realm$internal$async$QueryUpdateTask$NotifyEvent:[I

    sget-object v1, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->COMPLETE_UPDATE_ASYNC_QUERIES:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    invoke-virtual {v1}, Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
