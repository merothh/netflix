.class Lo/AuthenticationRequiredException;
.super Lo/AutomaticZenRule;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AuthenticationRequiredException$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

.field private c:Landroid/content/ServiceConnection;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lo/AutomaticZenRule;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lo/AuthenticationRequiredException;->a:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/AuthenticationRequiredException;->d:Landroid/content/Context;

    return-void
.end method

.method private a()Z
    .locals 4

    .line 198
    iget-object v0, p0, Lo/AuthenticationRequiredException;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.android.vending"

    const/16 v3, 0x80

    .line 200
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 201
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x4d17ab4

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method static synthetic b(Lo/AuthenticationRequiredException;Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;
    .locals 0

    .line 39
    iput-object p1, p0, Lo/AuthenticationRequiredException;->b:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    return-object p1
.end method

.method static synthetic c(Lo/AuthenticationRequiredException;I)I
    .locals 0

    .line 39
    iput p1, p0, Lo/AuthenticationRequiredException;->a:I

    return p1
.end method


# virtual methods
.method public a(Lo/BroadcastOptions;)V
    .locals 8

    .line 95
    invoke-virtual {p0}, Lo/AuthenticationRequiredException;->d()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "InstallReferrerClient"

    if-eqz v0, :cond_0

    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 96
    invoke-static {v2, v0}, Lo/DialogFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {p1, v1}, Lo/BroadcastOptions;->b(I)V

    return-void

    .line 102
    :cond_0
    iget v0, p0, Lo/AuthenticationRequiredException;->a:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    const-string v0, "Client is already in the process of connecting to the service."

    .line 103
    invoke-static {v2, v0}, Lo/DialogFragment;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1, v3}, Lo/BroadcastOptions;->b(I)V

    return-void

    :cond_1
    if-ne v0, v3, :cond_2

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 110
    invoke-static {v2, v0}, Lo/DialogFragment;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-interface {p1, v3}, Lo/BroadcastOptions;->b(I)V

    return-void

    :cond_2
    const-string v0, "Starting install referrer service setup."

    .line 117
    invoke-static {v2, v0}, Lo/DialogFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.vending"

    const-string v6, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    iget-object v3, p0, Lo/AuthenticationRequiredException;->d:Landroid/content/Context;

    .line 122
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x2

    if-eqz v3, :cond_5

    .line 124
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 126
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 127
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_5

    .line 128
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 129
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 130
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 132
    invoke-direct {p0}, Lo/AuthenticationRequiredException;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 134
    new-instance v0, Lo/AuthenticationRequiredException$StateListAnimator;

    const/4 v5, 0x0

    invoke-direct {v0, p0, p1, v5}, Lo/AuthenticationRequiredException$StateListAnimator;-><init>(Lo/AuthenticationRequiredException;Lo/BroadcastOptions;Lo/AuthenticationRequiredException$1;)V

    iput-object v0, p0, Lo/AuthenticationRequiredException;->c:Landroid/content/ServiceConnection;

    .line 135
    iget-object v0, p0, Lo/AuthenticationRequiredException;->d:Landroid/content/Context;

    iget-object v5, p0, Lo/AuthenticationRequiredException;->c:Landroid/content/ServiceConnection;

    .line 136
    invoke-virtual {v0, v3, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Service was bonded successfully."

    .line 140
    invoke-static {v2, p1}, Lo/DialogFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "Connection to service is blocked."

    .line 145
    invoke-static {v2, v0}, Lo/DialogFragment;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput v1, p0, Lo/AuthenticationRequiredException;->a:I

    .line 147
    invoke-interface {p1, v4}, Lo/BroadcastOptions;->b(I)V

    return-void

    :cond_4
    const-string v0, "Play Store missing or incompatible. Version 8.3.73 or later required."

    .line 152
    invoke-static {v2, v0}, Lo/DialogFragment;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iput v1, p0, Lo/AuthenticationRequiredException;->a:I

    .line 155
    invoke-interface {p1, v6}, Lo/BroadcastOptions;->b(I)V

    return-void

    .line 161
    :cond_5
    iput v1, p0, Lo/AuthenticationRequiredException;->a:I

    const-string v0, "Install Referrer service unavailable on device."

    .line 162
    invoke-static {v2, v0}, Lo/DialogFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-interface {p1, v6}, Lo/BroadcastOptions;->b(I)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x3

    .line 168
    iput v0, p0, Lo/AuthenticationRequiredException;->a:I

    .line 169
    iget-object v0, p0, Lo/AuthenticationRequiredException;->c:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "InstallReferrerClient"

    const-string v2, "Unbinding from service."

    .line 170
    invoke-static {v0, v2}, Lo/DialogFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lo/AuthenticationRequiredException;->d:Landroid/content/Context;

    iget-object v2, p0, Lo/AuthenticationRequiredException;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    iput-object v1, p0, Lo/AuthenticationRequiredException;->c:Landroid/content/ServiceConnection;

    .line 174
    :cond_0
    iput-object v1, p0, Lo/AuthenticationRequiredException;->b:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    return-void
.end method

.method public d()Z
    .locals 2

    .line 90
    iget v0, p0, Lo/AuthenticationRequiredException;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/AuthenticationRequiredException;->b:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AuthenticationRequiredException;->c:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Lo/ClientTransactionHandler;
    .locals 3

    .line 179
    invoke-virtual {p0}, Lo/AuthenticationRequiredException;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    iget-object v1, p0, Lo/AuthenticationRequiredException;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :try_start_0
    new-instance v1, Lo/ClientTransactionHandler;

    iget-object v2, p0, Lo/AuthenticationRequiredException;->b:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .line 188
    invoke-interface {v2, v0}, Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;->getInstallReferrer(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lo/ClientTransactionHandler;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "InstallReferrerClient"

    const-string v2, "RemoteException getting install referrer information"

    .line 191
    invoke-static {v1, v2}, Lo/DialogFragment;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 192
    iput v1, p0, Lo/AuthenticationRequiredException;->a:I

    .line 193
    throw v0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not connected. Please start a connection before using the service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method