.class public final Lcom/crittercism/internal/bd;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/crittercism/app/CrittercismConfig;->isLogcatReportingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/internal/bd;->a:Z

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, p1}, Lcom/crittercism/internal/bd;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/internal/bd;->c:Z

    const-string/jumbo v0, "android.permission.GET_TASKS"

    invoke-static {v0, p1}, Lcom/crittercism/internal/bd;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/internal/bd;->b:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
