.class public Lcom/netflix/mediaclient/ui/home/AccountHandler;
.super Ljava/lang/Object;
.source "AccountHandler.java"


# static fields
.field public static final ACCOUNT_URL:Ljava/lang/String; = "https://www.netflix.com/youraccount"

.field public static final AUTOLOGIN_TOKEN_EXPIRATION_IN_MS:J = 0x36ee80L

.field public static final AUTOLOGIN_TOKEN_TIMEOUT_IN_MS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "AccountHandler"

.field public static final TOKEN_PARAMETER_NAME:Ljava/lang/String; = "nftoken"


# instance fields
.field private mCompleted:Z

.field private final mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/home/AccountHandler;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public static createLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?nftoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "https://www.netflix.com/youraccount"

    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mCompleted:Z

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v0, "AccountHandler"

    const-string/jumbo v1, "Account handler already executed because of timeout. Do nothing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mCompleted:Z

    .line 42
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-static {p3, p1}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->createLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string/jumbo v1, "AccountHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Autologin token created urlWithToken: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/util/LaunchBrowser;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/util/LaunchBrowser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 53
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    const-string/jumbo v0, "AccountHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create autologin token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/AccountHandler;->mContext:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/home/AccountHandler$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/AccountHandler$1;-><init>(Lcom/netflix/mediaclient/ui/home/AccountHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
