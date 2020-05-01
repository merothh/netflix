.class final Landroid/support/v7/media/RegisteredMediaRouteProvider;
.super Landroid/support/v7/media/MediaRouteProvider;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnectionReady:Z

.field private final mControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivateHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "MediaRouteProviderProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-direct {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Landroid/support/v7/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    .line 61
    iput-object p2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    .line 62
    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/support/v7/media/RegisteredMediaRouteProvider$1;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mPrivateHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

    .line 63
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->onControllerReleased(Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/media/RegisteredMediaRouteProvider;)Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mPrivateHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->onConnectionError(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->onConnectionDescriptorChanged(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->onConnectionReady(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->onConnectionDied(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    return v0
.end method

.method private attachControllersToConnection()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 277
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 278
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;

    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->attachConnection(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    .line 277
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method private bind()V
    .locals 4

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-nez v0, :cond_1

    .line 155
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.MediaRouteProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    .line 163
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 164
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Bind failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    sget-boolean v1, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 168
    const-string/jumbo v1, "MediaRouteProviderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Bind failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private detachControllersFromConnection()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 284
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 285
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->detachConnection()V

    .line 284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    .line 263
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->detachControllersFromConnection()V

    .line 264
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->dispose()V

    .line 265
    iput-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .line 267
    :cond_0
    return-void
.end method

.method private onConnectionDescriptorChanged(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 252
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 253
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Descriptor changed, descriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 257
    :cond_1
    return-void
.end method

.method private onConnectionDied(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 233
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 234
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service connection died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 238
    :cond_1
    return-void
.end method

.method private onConnectionError(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 242
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 243
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service connection error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->unbind()V

    .line 247
    :cond_1
    return-void
.end method

.method private onConnectionReady(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_0

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    .line 222
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->attachControllersToConnection()V

    .line 224
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getDiscoveryRequest()Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 229
    :cond_0
    return-void
.end method

.method private onControllerReleased(Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->detachConnection()V

    .line 272
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 273
    return-void
.end method

.method private shouldBind()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 138
    iget-boolean v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getDiscoveryRequest()Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unbind()V
    .locals 3

    .prologue
    .line 175
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-eqz v0, :cond_1

    .line 176
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 177
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Unbinding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    .line 181
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 182
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 184
    :cond_1
    return-void
.end method

.method private updateBinding()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->bind()V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->unbind()V

    goto :goto_0
.end method


# virtual methods
.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 72
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteDescriptor;

    .line 73
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-boolean v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->attachConnection(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    .line 79
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 84
    :goto_1
    return-object v0

    .line 71
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onDiscoveryRequestChanged(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 92
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 93
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 188
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 189
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 195
    if-eqz p2, :cond_2

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 196
    :goto_0
    invoke-static {v0}, Landroid/support/v7/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    new-instance v1, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/os/Messenger;)V

    .line 198
    invoke-virtual {v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->register()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    iput-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .line 209
    :cond_1
    :goto_1
    return-void

    .line 195
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_3
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 202
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Registration failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    :cond_4
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service returned invalid messenger binder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 213
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 214
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 217
    return-void
.end method

.method public rebindIfDisconnected()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->unbind()V

    .line 125
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->bind()V

    .line 127
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-nez v0, :cond_1

    .line 102
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 107
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 109
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 113
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 118
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 120
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
