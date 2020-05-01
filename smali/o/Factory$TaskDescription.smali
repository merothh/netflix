.class Lo/Factory$TaskDescription;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# static fields
.field private static final d:Lo/Factory$TaskDescription;


# instance fields
.field private b:Lo/CharArrayReader$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$StateListAnimator<",
            "Lo/Factory$Application;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lo/Factory$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lo/Factory$TaskDescription;

    invoke-direct {v0}, Lo/Factory$TaskDescription;-><init>()V

    sput-object v0, Lo/Factory$TaskDescription;->d:Lo/Factory$TaskDescription;

    .line 164
    sget-object v0, Lo/Factory$TaskDescription;->d:Lo/Factory$TaskDescription;

    invoke-virtual {v0}, Lo/Factory$TaskDescription;->start()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lo/Factory$TaskDescription;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 172
    new-instance v0, Lo/CharArrayReader$StateListAnimator;

    invoke-direct {v0, v1}, Lo/CharArrayReader$StateListAnimator;-><init>(I)V

    iput-object v0, p0, Lo/Factory$TaskDescription;->b:Lo/CharArrayReader$StateListAnimator;

    return-void
.end method

.method public static a()Lo/Factory$TaskDescription;
    .locals 1

    .line 168
    sget-object v0, Lo/Factory$TaskDescription;->d:Lo/Factory$TaskDescription;

    return-object v0
.end method


# virtual methods
.method public b()Lo/Factory$Application;
    .locals 1

    .line 207
    iget-object v0, p0, Lo/Factory$TaskDescription;->b:Lo/CharArrayReader$StateListAnimator;

    invoke-virtual {v0}, Lo/CharArrayReader$StateListAnimator;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Factory$Application;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lo/Factory$Application;

    invoke-direct {v0}, Lo/Factory$Application;-><init>()V

    :cond_0
    return-object v0
.end method

.method public c()V
    .locals 6

    const-string v0, "AsyncLayoutInflater"

    .line 180
    :try_start_0
    iget-object v1, p0, Lo/Factory$TaskDescription;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Factory$Application;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 188
    :try_start_1
    iget-object v3, v1, Lo/Factory$Application;->e:Lo/Factory;

    iget-object v3, v3, Lo/Factory;->d:Landroid/view/LayoutInflater;

    iget v4, v1, Lo/Factory$Application;->d:I

    iget-object v5, v1, Lo/Factory$Application;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lo/Factory$Application;->c:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    .line 192
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    :goto_0
    iget-object v0, v1, Lo/Factory$Application;->e:Lo/Factory;

    iget-object v0, v0, Lo/Factory;->e:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_1
    move-exception v1

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public d(Lo/Factory$Application;)V
    .locals 2

    const/4 v0, 0x0

    .line 215
    iput-object v0, p1, Lo/Factory$Application;->a:Lo/Factory$StateListAnimator;

    .line 216
    iput-object v0, p1, Lo/Factory$Application;->e:Lo/Factory;

    .line 217
    iput-object v0, p1, Lo/Factory$Application;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 218
    iput v1, p1, Lo/Factory$Application;->d:I

    .line 219
    iput-object v0, p1, Lo/Factory$Application;->c:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lo/Factory$TaskDescription;->b:Lo/CharArrayReader$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/CharArrayReader$StateListAnimator;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Lo/Factory$Application;)V
    .locals 2

    .line 225
    :try_start_0
    iget-object v0, p0, Lo/Factory$TaskDescription;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to enqueue async inflate request"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public run()V
    .locals 0

    .line 202
    :goto_0
    invoke-virtual {p0}, Lo/Factory$TaskDescription;->c()V

    goto :goto_0
.end method
