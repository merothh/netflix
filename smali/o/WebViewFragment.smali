.class public final Lo/WebViewFragment;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final d:Lo/WebViewFragment;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "Lo/WebViewFactory<",
            "*>;>;",
            "Lo/WebViewFactory<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lo/WebViewFragment;

    invoke-direct {v0}, Lo/WebViewFragment;-><init>()V

    sput-object v0, Lo/WebViewFragment;->d:Lo/WebViewFragment;

    .line 18
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    sput-object v1, Lo/WebViewFragment;->e:Ljava/util/Map;

    .line 24
    sget-object v1, Lo/WebViewLibraryLoader;->e:Lo/WebViewLibraryLoader;

    check-cast v1, Lo/WebViewFactory;

    invoke-direct {v0, v1}, Lo/WebViewFragment;->a(Lo/WebViewFactory;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "UserSessionDataManager"

    .line 16
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lo/WebViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/WebViewFactory<",
            "*>;>(",
            "Ljava/lang/Class<",
            "-TT;>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lo/WebViewFragment;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/WebViewFactory;

    if-eqz p0, :cond_0

    return-object p0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Please register your data class in UserSessionDataManager.init block"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private final a(Lo/WebViewFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WebViewFactory<",
            "*>;)V"
        }
    .end annotation

    .line 28
    sget-object v0, Lo/WebViewFragment;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
