.class public Lcom/netflix/mediaclient/android/app/BackgroundTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/app/BackgroundTask$Activity;,
        Lcom/netflix/mediaclient/android/app/BackgroundTask$BackgroundTaskException;
    }
.end annotation


# instance fields
.field private final c:Lcom/netflix/mediaclient/android/app/BackgroundTask$Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask$Activity;-><init>(Lcom/netflix/mediaclient/android/app/BackgroundTask$4;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/BackgroundTask;->c:Lcom/netflix/mediaclient/android/app/BackgroundTask$Activity;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BackgroundTask;->c:Lcom/netflix/mediaclient/android/app/BackgroundTask$Activity;

    sget-object v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->a:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask$Activity;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    return-void
.end method
