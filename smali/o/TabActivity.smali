.class public Lo/TabActivity;
.super Lo/VrStateCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VrStateCallback<",
        "Lo/UiAutomationConnection;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile d:Z

.field private final i:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lo/TabActivity$4;

    invoke-direct {v0}, Lo/TabActivity$4;-><init>()V

    sput-object v0, Lo/TabActivity;->a:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lo/SearchDialog;Landroid/content/Context;Lo/VrStateCallback$TaskDescription;)V
    .locals 7

    .line 51
    sget-object v5, Lo/TabActivity;->a:Ljava/util/Comparator;

    const-string v3, "/bugsnag-errors/"

    const/16 v4, 0x80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lo/VrStateCallback;-><init>(Lo/SearchDialog;Landroid/content/Context;Ljava/lang/String;ILjava/util/Comparator;Lo/VrStateCallback$TaskDescription;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lo/TabActivity;->d:Z

    .line 30
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lo/TabActivity;->i:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .line 140
    :try_start_0
    iget-object v0, p0, Lo/TabActivity;->c:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->t()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lo/DevicePolicyCache;

    iget-object v1, p0, Lo/TabActivity;->c:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/DevicePolicyCache;-><init>(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_1

    .line 143
    :cond_0
    iget-object v0, p0, Lo/TabActivity;->c:Lo/SearchDialog;

    invoke-static {v0, p1}, Lo/TimePickerDialog;->d(Lo/SearchDialog;Ljava/io/File;)Lo/UiAutomationConnection;

    move-result-object v0

    .line 144
    new-instance v1, Lo/DevicePolicyCache;

    iget-object v2, p0, Lo/TabActivity;->c:Lo/SearchDialog;

    invoke-virtual {v2}, Lo/SearchDialog;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lo/DevicePolicyCache;-><init>(Ljava/lang/String;Lo/UiAutomationConnection;)V

    .line 146
    iget-object v0, p0, Lo/TabActivity;->c:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->t()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ProfilerInfo;
    :try_end_0
    .catch Lcom/bugsnag/android/DeliveryFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :try_start_1
    invoke-interface {v2, v1}, Lo/ProfilerInfo;->b(Lo/DevicePolicyCache;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/TabActivity;->c(Ljava/util/Collection;)V

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting cancelled error file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/WallpaperColors;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "BeforeSend threw an Exception"

    .line 154
    invoke-static {v3, v2}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 159
    :goto_1
    iget-object v1, p0, Lo/TabActivity;->c:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->u()Lo/StatsManager;

    move-result-object v1

    iget-object v2, p0, Lo/TabActivity;->c:Lo/SearchDialog;

    invoke-interface {v1, v0, v2}, Lo/StatsManager;->a(Lo/DevicePolicyCache;Lo/SearchDialog;)V

    .line 161
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/TabActivity;->c(Ljava/util/Collection;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting sent error file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/WallpaperColors;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/bugsnag/android/DeliveryFailureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 170
    iget-object v1, p0, Lo/TabActivity;->j:Lo/VrStateCallback$TaskDescription;

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lo/TabActivity;->j:Lo/VrStateCallback$TaskDescription;

    const-string v2, "Crash Report Deserialization"

    invoke-interface {v1, v0, p1, v2}, Lo/VrStateCallback$TaskDescription;->c(Ljava/lang/Exception;Ljava/io/File;Ljava/lang/String;)V

    .line 173
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/TabActivity;->c(Ljava/util/Collection;)V

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v0, "Ignoring empty file - oldest report on disk was deleted"

    .line 168
    invoke-static {v0, p1}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 164
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/TabActivity;->a(Ljava/util/Collection;)V

    const-string p1, "Could not send previously saved error(s) to Bugsnag, will try again later"

    .line 165
    invoke-static {p1, v0}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private e(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 185
    invoke-virtual {p0, v1}, Lo/TabActivity;->c(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 197
    instance-of v0, p1, Lo/UiAutomationConnection;

    if-eqz v0, :cond_1

    .line 198
    check-cast p1, Lo/UiAutomationConnection;

    .line 200
    invoke-virtual {p1}, Lo/UiAutomationConnection;->c()Ljava/util/Map;

    move-result-object p1

    .line 201
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v0, "duration"

    .line 202
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 203
    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 204
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/TabActivity;->a(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_startupcrash"

    goto :goto_0

    :cond_0
    const-string p1, ""

    goto :goto_0

    :cond_1
    const-string p1, "not-jvm"

    .line 211
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 213
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lo/TabActivity;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 214
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const-string p1, "%s%d_%s%s.json"

    .line 213
    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 105
    iget-object v0, p0, Lo/TabActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    :try_start_0
    new-instance v0, Lo/TabActivity$2;

    invoke-direct {v0, p0}, Lo/TabActivity$2;-><init>(Lo/TabActivity;)V

    invoke-static {v0}, Lo/OnActivityPausedListener;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to flush all on-disk errors, retaining unsent errors for later."

    .line 117
    invoke-static {v0}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(J)Z
    .locals 3

    .line 218
    iget-object v0, p0, Lo/TabActivity;->c:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->q()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/TabActivity;->i:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Sending %d saved error(s) to Bugsnag"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 125
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 124
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/WallpaperColors;->c(Ljava/lang/String;)V

    .line 127
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 128
    invoke-direct {p0, v0}, Lo/TabActivity;->a(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lo/TabActivity;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/TabActivity;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method c(Ljava/io/File;)Z
    .locals 1

    .line 178
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_startupcrash.json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method d()V
    .locals 5

    .line 55
    iget-object v0, p0, Lo/TabActivity;->c:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {p0}, Lo/TabActivity;->b()Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lo/TabActivity;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 61
    invoke-virtual {p0, v0}, Lo/TabActivity;->a(Ljava/util/Collection;)V

    .line 63
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lo/TabActivity;->d:Z

    const-string v0, "Attempting to send launch crash reports"

    .line 69
    invoke-static {v0}, Lo/WallpaperColors;->c(Ljava/lang/String;)V

    .line 72
    :try_start_0
    new-instance v0, Lo/TabActivity$5;

    invoke-direct {v0, p0, v1}, Lo/TabActivity$5;-><init>(Lo/TabActivity;Ljava/util/List;)V

    invoke-static {v0}, Lo/OnActivityPausedListener;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to flush launch crash reports"

    .line 80
    invoke-static {v1, v0}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lo/TabActivity;->d:Z

    .line 86
    :goto_0
    iget-boolean v0, p0, Lo/TabActivity;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7d0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const-wide/16 v0, 0x32

    .line 88
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    add-long/2addr v2, v0

    goto :goto_0

    :catch_1
    const-string v0, "Interrupted while waiting for launch crash report request"

    .line 91
    invoke-static {v0}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Continuing with Bugsnag initialisation"

    .line 94
    invoke-static {v0}, Lo/WallpaperColors;->c(Ljava/lang/String;)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lo/TabActivity;->a()V

    return-void
.end method
