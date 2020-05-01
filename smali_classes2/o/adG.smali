.class public final Lo/adG;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lo/adG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/adG;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 4

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 283
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static varargs a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 3

    if-eqz p4, :cond_3

    .line 66
    array-length p3, p4

    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    .line 70
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p3, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 76
    :cond_0
    array-length p2, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p4, v0

    .line 77
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {p3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {p0, p1, p3}, Lo/adG;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    move-result p0

    return p0

    .line 67
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No actions!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x3e7

    .line 48
    invoke-static {p0, p1, p2, v0, p3}, Lo/adG;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 110
    :try_start_0
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 113
    sget-object p1, Lo/adG;->b:Ljava/lang/String;

    const-string p2, "Failed to register "

    invoke-static {p1, p2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No filter!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Receiver is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 131
    sget-object p0, Lo/adG;->b:Ljava/lang/String;

    const-string p1, "Context is null"

    invoke-static {p0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 136
    sget-object p0, Lo/adG;->b:Ljava/lang/String;

    const-string p1, "Receiver is null"

    invoke-static {p0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 141
    :cond_1
    :try_start_0
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p0

    invoke-virtual {p0, p1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 145
    sget-object p1, Lo/adG;->b:Ljava/lang/String;

    const-string v1, "Failed to unregister "

    invoke-static {p1, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
