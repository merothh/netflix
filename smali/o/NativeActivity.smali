.class public Lo/NativeActivity;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;Lo/DownloadManager;Ljava/lang/String;)Lo/FragmentHostCallback;
    .locals 3

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "volley/0"

    :goto_0
    if-nez p1, :cond_1

    .line 56
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt p1, v1, :cond_0

    .line 57
    new-instance p0, Lo/KeyguardManager;

    invoke-direct {p0}, Lo/KeyguardManager;-><init>()V

    goto :goto_1

    .line 61
    :cond_0
    new-instance p1, Lo/IntentService;

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object p0

    invoke-direct {p1, p0}, Lo/IntentService;-><init>(Lorg/apache/http/client/HttpClient;)V

    move-object p0, p1

    .line 63
    :goto_1
    new-instance p1, Lo/Instrumentation;

    invoke-direct {p1, p0}, Lo/Instrumentation;-><init>(Lo/ListActivity;)V

    .line 66
    :cond_1
    new-instance p0, Lo/FragmentHostCallback;

    new-instance v1, Lo/FragmentTransaction;

    invoke-direct {v1, v0}, Lo/FragmentTransaction;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1, p1, p2}, Lo/FragmentHostCallback;-><init>(Lo/ContextImpl;Lo/DownloadManager;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lo/FragmentHostCallback;->a()V

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lo/FragmentHostCallback;
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, v0, p1}, Lo/NativeActivity;->d(Landroid/content/Context;Lo/DownloadManager;Ljava/lang/String;)Lo/FragmentHostCallback;

    move-result-object p0

    return-object p0
.end method
