.class public Lo/CameraManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final c:Lo/CompatibilityInfo$Application;


# direct methods
.method public constructor <init>(Lo/GetCommand;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lo/CameraManager$5;

    invoke-direct {v0, p0, p1}, Lo/CameraManager$5;-><init>(Lo/CameraManager;Lo/GetCommand;)V

    iput-object v0, p0, Lo/CameraManager;->c:Lo/CompatibilityInfo$Application;

    return-void
.end method

.method static synthetic c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p0}, Lo/CameraManager;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 64
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 65
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/ConfigurationBoundResourceCache<",
            "TT;>;)",
            "Lo/CompatibilityInfo<",
            "TT;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lo/CameraManager;->c:Lo/CompatibilityInfo$Application;

    invoke-static {p1, p2, v0}, Lo/CompatibilityInfo;->c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;Lo/CompatibilityInfo$Application;)Lo/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/io/Closeable;)Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/io/Closeable;",
            ">(TU;)",
            "Lo/CompatibilityInfo<",
            "TU;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lo/CameraManager;->c:Lo/CompatibilityInfo$Application;

    invoke-static {p1, v0}, Lo/CompatibilityInfo;->e(Ljava/io/Closeable;Lo/CompatibilityInfo$Application;)Lo/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method
