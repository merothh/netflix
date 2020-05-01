.class synthetic Lo/nQ$13;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1433
    invoke-static {}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->values()[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/nQ$13;->c:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lo/nQ$13;->c:[I

    sget-object v2, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->c:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :catch_0
    invoke-static {}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->values()[Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lo/nQ$13;->e:[I

    :try_start_1
    sget-object v1, Lo/nQ$13;->e:[I

    sget-object v2, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x2

    :try_start_2
    sget-object v2, Lo/nQ$13;->e:[I

    sget-object v3, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->b:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v2, 0x3

    :try_start_3
    sget-object v3, Lo/nQ$13;->e:[I

    sget-object v4, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->d:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v3, 0x4

    :try_start_4
    sget-object v4, Lo/nQ$13;->e:[I

    sget-object v5, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lo/nQ$13;->e:[I

    sget-object v5, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->a:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 306
    :catch_5
    invoke-static {}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->values()[Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lo/nQ$13;->b:[I

    :try_start_6
    sget-object v4, Lo/nQ$13;->b:[I

    sget-object v5, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->b:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lo/nQ$13;->b:[I

    sget-object v4, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lo/nQ$13;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->d:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lo/nQ$13;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->c:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
