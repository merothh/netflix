.class public Lcom/google/android/gcm/GCMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMBroadcastReceiver.java"


# static fields
.field private static mReceiverSet:Z


# instance fields
.field private final mLogger:Lcom/google/android/gcm/GCMLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gcm/GCMBroadcastReceiver;->mReceiverSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/google/android/gcm/GCMLogger;

    const-string/jumbo v1, "GCMBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gcm/GCMLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gcm/GCMBroadcastReceiver;->mLogger:Lcom/google/android/gcm/GCMLogger;

    return-void
.end method

.method static final getDefaultIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".GCMIntentService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gcm/GCMBroadcastReceiver;->getDefaultIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/gcm/GCMBroadcastReceiver;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const-string/jumbo v1, "onReceive: %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, Lcom/google/android/gcm/GCMBroadcastReceiver;->mReceiverSet:Z

    if-nez v0, :cond_0

    sput-boolean v4, Lcom/google/android/gcm/GCMBroadcastReceiver;->mReceiverSet:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gcm/GCMRegistrar;->setRetryReceiverClassName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gcm/GCMBroadcastReceiver;->getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gcm/GCMBroadcastReceiver;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const-string/jumbo v2, "GCM IntentService class: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v6, v2, v3}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2, v0}, Lcom/google/android/gcm/GCMBaseIntentService;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v7, v7}, Lcom/google/android/gcm/GCMBroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
