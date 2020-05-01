.class synthetic Lo/Ye$3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic d:[I

.field static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 161
    invoke-static {}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->values()[Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/Ye$3;->d:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lo/Ye$3;->d:[I

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lo/Ye$3;->d:[I

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lo/Ye$3;->d:[I

    sget-object v4, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lo/Ye$3;->d:[I

    sget-object v5, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lo/Ye$3;->d:[I

    sget-object v6, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lo/Ye$3;->d:[I

    sget-object v6, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 134
    :catch_5
    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->values()[Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lo/Ye$3;->e:[I

    :try_start_6
    sget-object v5, Lo/Ye$3;->e:[I

    sget-object v6, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lo/Ye$3;->e:[I

    sget-object v5, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lo/Ye$3;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->c:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lo/Ye$3;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lo/Ye$3;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
