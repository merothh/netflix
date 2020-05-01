.class synthetic Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic b:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 590
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->values()[Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->b:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->b:[I

    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->b:[I

    sget-object v3, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    :catch_1
    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->d:[I

    :try_start_2
    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->d:[I

    sget-object v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->d:[I

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->i:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
