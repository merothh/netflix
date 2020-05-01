.class public Lo/VideoView2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lo/VideoView2;

.field public static d:Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/icu/text/MessageFormat;

.field private e:Lcom/ibm/icu/text/MessageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lo/VideoView2;

    const-string v1, "{EMPTY}"

    invoke-direct {v0, v1}, Lo/VideoView2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/VideoView2;->b:Lo/VideoView2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/VideoView2;->a:Ljava/util/HashMap;

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 52
    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-direct {v0, p1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/VideoView2;->c:Landroid/icu/text/MessageFormat;

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/VideoView2;->e:Lcom/ibm/icu/text/MessageFormat;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lo/VideoView2$5;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lo/VideoView2;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    .line 39
    invoke-static {}, Lo/VideoView2;->b()V

    return-void
.end method

.method private static b()V
    .locals 2

    .line 70
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lo/VideoView2$5;

    invoke-direct {v1}, Lo/VideoView2$5;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static d()V
    .locals 0

    .line 62
    invoke-static {}, Lo/VideoView2;->e()V

    return-void
.end method

.method public static e(I)Lo/VideoView2;
    .locals 2

    .line 84
    invoke-static {p0}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing ICU string... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICUMessageFormat"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_0
    new-instance v0, Lo/VideoView2;

    invoke-direct {v0, p0}, Lo/VideoView2;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 92
    :catch_0
    sget-object p0, Lo/VideoView2;->b:Lo/VideoView2;

    return-object p0
.end method

.method private static declared-synchronized e()V
    .locals 5

    const-class v0, Lo/VideoView2;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lo/VideoView2;->d:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lo/VideoView2$4;

    invoke-direct {v1}, Lo/VideoView2$4;-><init>()V

    sput-object v1, Lo/VideoView2;->d:Landroid/content/BroadcastReceiver;

    .line 146
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    sget-object v2, Lo/VideoView2;->d:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/VideoView2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b(I)Lo/VideoView2;
    .locals 2

    .line 101
    iget-object v0, p0, Lo/VideoView2;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "quantity"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 118
    :try_start_0
    iget-object v0, p0, Lo/VideoView2;->c:Landroid/icu/text/MessageFormat;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lo/VideoView2;->c:Landroid/icu/text/MessageFormat;

    iget-object v1, p0, Lo/VideoView2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lo/VideoView2;->e:Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, p0, Lo/VideoView2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
