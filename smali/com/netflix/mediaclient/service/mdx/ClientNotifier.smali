.class public final Lcom/netflix/mediaclient/service/mdx/ClientNotifier;
.super Ljava/lang/Object;
.source "ClientNotifier.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/NotifierInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdx"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSharedStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/mdx/MdxSharedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    .line 20
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Creating client notifier"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method private addSharedState(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public abortPinVerification(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PIN_VERIFICATION_NOT_REQUIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 239
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isPinVerified"

    .line 240
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method public audiosub(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_AUDIOSUB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 85
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "stringBlob"

    .line 86
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_AUDIOSUB sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public capability(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_CAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "stringBlob"

    .line 67
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_CAPABILITY sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public commandPlayReceived(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    monitor-enter v1

    .line 29
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->addSharedState(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->notifyPlayCommandReceived()V

    .line 31
    monitor-exit v1

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dialogCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGCANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "stringBlob"

    .line 104
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_DIALOGCANCEL sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public dialogShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGSHOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 94
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "stringBlob"

    .line 95
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_DIALOGSHOW sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public error(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "errorCode"

    .line 115
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "errorDesc"

    .line 116
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_ERROR sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public getSharedState(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/MdxSharedState;
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public metaData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_METADATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 76
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "stringBlob"

    .line 77
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_METADATA sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public movieMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 162
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "catalogId"

    .line 163
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "episodeId"

    .line 164
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "duration"

    .line 165
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_MOVIEDATA sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public movieMetaDataAvailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADATA_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 192
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MOVIEMETADATA_AVAILABLE sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public notready()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_NOTREADY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent NOTREADY sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public playbackEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->notifyPlaybackEnd()V

    .line 129
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 133
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    const-string/jumbo v1, "postplayState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_PLAYBACKEND sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public playbackStart(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    monitor-enter v1

    .line 146
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->addSharedState(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->notifyPlaybackStart()V

    .line 148
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 152
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_PLAYBACKSTART sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postplayState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->notifyPostplayState(Ljava/lang/String;)V

    .line 213
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 215
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "postplayState"

    .line 216
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public ready()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent READY sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public requestPinVerification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PIN_VERIFICATION_SHOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 227
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    .line 228
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ancestorVideoType"

    .line 229
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "videoId"

    .line 230
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ancestorVideoId"

    .line 231
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method public simplePlaybackState(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_SIMPLE_PLAYBACKSTATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 202
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "paused"

    .line 203
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "transitioning"

    .line 204
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "postplayState"

    .line 205
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method public state(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mSharedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    invoke-virtual {v0, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->notifyPlaybackState(Ljava/lang/String;II)V

    .line 176
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    .line 180
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "currentState"

    .line 181
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "time"

    .line 182
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "volume"

    .line 183
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_STATE sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public targetList()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_TARGETLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Intent MDXUPDATE_TARGETLISTY sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
