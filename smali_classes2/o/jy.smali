.class public final Lo/jy;
.super Lo/MessagePdu;
.source ""

# interfaces
.implements Lo/jE;


# static fields
.field public static final a:Lo/jy;

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z = false

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final h:Ljava/lang/String; = "bugsnag"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lo/jy;

    invoke-direct {v0}, Lo/jy;-><init>()V

    sput-object v0, Lo/jy;->a:Lo/jy;

    .line 27
    invoke-static {}, Lo/akI;->b()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/jy;->d:Ljava/util/Map;

    .line 28
    invoke-static {}, Lo/akI;->b()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/jy;->g:Ljava/util/Map;

    const-string v0, "bugsnag"

    .line 33
    sput-object v0, Lo/jy;->h:Ljava/lang/String;

    const-string v0, "google"

    const-string v1, "samsung"

    const-string v2, "lge"

    .line 38
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lo/akS;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lo/jy;->f:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "BugsnagCrashReporter"

    .line 20
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lo/jy;Landroid/content/Context;Lo/UiAutomationConnection;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lo/jy;->b(Landroid/content/Context;Lo/UiAutomationConnection;)V

    return-void
.end method

.method private final b(Landroid/content/Context;Lo/UiAutomationConnection;)V
    .locals 2

    .line 177
    new-instance v0, Lo/afK;

    invoke-direct {v0, p1}, Lo/afK;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/afK;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "netflix"

    const-string v1, "nfvdid"

    .line 178
    invoke-virtual {p2, v0, v1, p1}, Lo/UiAutomationConnection;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lo/jy;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "breadcrumb"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-boolean v0, Lo/jy;->e:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p1}, Lo/Presentation;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sput-object p1, Lo/jy;->g:Ljava/util/Map;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lo/jy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p0, p1}, Lo/jE$TaskDescription;->a(Lo/jE;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lo/jy;->d:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget-boolean v0, Lo/jy;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "netflix"

    .line 194
    invoke-static {v0, p1, p2}, Lo/Presentation;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lo/jy;->g:Ljava/util/Map;

    return-object v0
.end method

.method public d(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-boolean v0, Lo/jy;->e:Z

    if-eq v0, p2, :cond_6

    .line 52
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x0

    .line 54
    check-cast v0, Ljava/lang/Throwable;

    if-eqz p2, :cond_4

    .line 57
    new-instance v1, Lo/SearchDialog;

    const-string v2, "046c09611a886f10d1201353b77c886f"

    invoke-direct {v1, v2}, Lo/SearchDialog;-><init>(Ljava/lang/String;)V

    const-string v2, "7.54.2"

    .line 58
    invoke-virtual {v1, v2}, Lo/SearchDialog;->b(Ljava/lang/String;)V

    const/16 v2, 0x26

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/SearchDialog;->d(Ljava/lang/Integer;)V

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Lo/SearchDialog;->a(Z)V

    const/16 v3, 0x64

    .line 61
    invoke-virtual {v1, v3}, Lo/SearchDialog;->a(I)V

    const-string v3, "com.netflix"

    .line 63
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Lo/SearchDialog;->e([Ljava/lang/String;)V

    .line 67
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lo/jy;->f:Ljava/util/Set;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "Build.MANUFACTURER"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Locale.US"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lo/SearchDialog;->b(Z)V

    .line 69
    sget-object v3, Lo/ael;->a:Lo/ael;

    invoke-virtual {v3}, Lo/ael;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "dog fooding"

    .line 70
    invoke-virtual {v1, v3}, Lo/SearchDialog;->f(Ljava/lang/String;)V

    .line 74
    :cond_2
    :try_start_0
    invoke-static {p1, v1}, Lo/Presentation;->e(Landroid/content/Context;Lo/SearchDialog;)Lo/Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 79
    instance-of v1, v0, Ljava/lang/UnsatisfiedLinkError;

    if-eqz v1, :cond_3

    .line 86
    :goto_1
    invoke-static {v2}, Lo/Presentation;->c(Z)V

    .line 87
    new-instance v1, Lo/jy$Application;

    invoke-direct {v1, p2, p1}, Lo/jy$Application;-><init>(ZLandroid/content/Context;)V

    check-cast v1, Lo/QueuedWork;

    invoke-static {v1}, Lo/Presentation;->c(Lo/QueuedWork;)V

    goto :goto_2

    .line 82
    :cond_3
    throw v0

    .line 162
    :cond_4
    invoke-static {}, Lo/Presentation;->e()V

    .line 164
    :goto_2
    sput-boolean p2, Lo/jy;->e:Z

    if-nez v0, :cond_5

    goto :goto_3

    .line 168
    :cond_5
    throw v0

    .line 172
    :cond_6
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    :goto_3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 25
    sput-object p1, Lo/jy;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sput-object p1, Lo/jy;->d:Ljava/util/Map;

    return-void
.end method

.method public final e(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    sget-boolean v0, Lo/jy;->e:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-static {p1}, Lo/Presentation;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
