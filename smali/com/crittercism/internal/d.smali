.class public final Lcom/crittercism/internal/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo v0, "Given a null Context."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/crittercism/internal/d;->a:Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Add android.permission.ACCESS_NETWORK_STATE to AndroidManifest.xml to get more detailed OPTMZ data"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/crittercism/internal/b;
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/d;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/crittercism/internal/b;->c:Lcom/crittercism/internal/b;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/d;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lcom/crittercism/internal/b;->d:Lcom/crittercism/internal/b;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/crittercism/internal/b;->a(I)Lcom/crittercism/internal/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/d;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/d;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v0, "disconnected"

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    const-string/jumbo v0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "2G"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "3G"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "LTE"

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    const-string/jumbo v0, "wifi"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
