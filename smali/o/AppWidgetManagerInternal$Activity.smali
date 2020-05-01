.class final Lo/AppWidgetManagerInternal$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppWidgetManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# instance fields
.field private a:I

.field final b:Z

.field final c:Lo/AppWidgetManagerInternal$StateListAnimator;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/AppWidgetManagerInternal$StateListAnimator;Z)V
    .locals 0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Lo/AppWidgetManagerInternal$Activity;->e:Ljava/lang/String;

    .line 427
    iput-object p2, p0, Lo/AppWidgetManagerInternal$Activity;->c:Lo/AppWidgetManagerInternal$StateListAnimator;

    .line 428
    iput-boolean p3, p0, Lo/AppWidgetManagerInternal$Activity;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    monitor-enter p0

    .line 433
    :try_start_0
    new-instance v0, Lo/AppWidgetManagerInternal$Activity$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glide-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/AppWidgetManagerInternal$Activity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/AppWidgetManagerInternal$Activity;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lo/AppWidgetManagerInternal$Activity$3;-><init>(Lo/AppWidgetManagerInternal$Activity;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 452
    iget p1, p0, Lo/AppWidgetManagerInternal$Activity;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/AppWidgetManagerInternal$Activity;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
