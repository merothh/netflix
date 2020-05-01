.class public final Lo/Scroller;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lo/Scroller;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lo/Scroller;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lo/Scroller;->c:Landroid/content/Context;

    return-void
.end method

.method public static c(Landroid/content/Context;)Lo/Scroller;
    .locals 3

    .line 62
    sget-object v0, Lo/Scroller;->b:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lo/Scroller;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Scroller;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lo/Scroller;

    invoke-direct {v1, p0}, Lo/Scroller;-><init>(Landroid/content/Context;)V

    .line 66
    sget-object v2, Lo/Scroller;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
