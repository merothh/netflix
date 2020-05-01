.class final Lo/AuthenticationRequiredException$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AuthenticationRequiredException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final c:Lo/BroadcastOptions;

.field final synthetic d:Lo/AuthenticationRequiredException;


# direct methods
.method private constructor <init>(Lo/AuthenticationRequiredException;Lo/BroadcastOptions;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lo/AuthenticationRequiredException$StateListAnimator;->d:Lo/AuthenticationRequiredException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 215
    iput-object p2, p0, Lo/AuthenticationRequiredException$StateListAnimator;->c:Lo/BroadcastOptions;

    return-void

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please specify a listener to know when setup is done."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lo/AuthenticationRequiredException;Lo/BroadcastOptions;Lo/AuthenticationRequiredException$1;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1, p2}, Lo/AuthenticationRequiredException$StateListAnimator;-><init>(Lo/AuthenticationRequiredException;Lo/BroadcastOptions;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service connected."

    .line 220
    invoke-static {p1, v0}, Lo/DialogFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lo/AuthenticationRequiredException$StateListAnimator;->d:Lo/AuthenticationRequiredException;

    invoke-static {p2}, Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    move-result-object p2

    invoke-static {p1, p2}, Lo/AuthenticationRequiredException;->b(Lo/AuthenticationRequiredException;Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .line 222
    iget-object p1, p0, Lo/AuthenticationRequiredException$StateListAnimator;->d:Lo/AuthenticationRequiredException;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lo/AuthenticationRequiredException;->c(Lo/AuthenticationRequiredException;I)I

    .line 223
    iget-object p1, p0, Lo/AuthenticationRequiredException$StateListAnimator;->c:Lo/BroadcastOptions;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lo/BroadcastOptions;->b(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service disconnected."

    .line 228
    invoke-static {p1, v0}, Lo/DialogFragment;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lo/AuthenticationRequiredException$StateListAnimator;->d:Lo/AuthenticationRequiredException;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/AuthenticationRequiredException;->b(Lo/AuthenticationRequiredException;Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .line 230
    iget-object p1, p0, Lo/AuthenticationRequiredException$StateListAnimator;->d:Lo/AuthenticationRequiredException;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/AuthenticationRequiredException;->c(Lo/AuthenticationRequiredException;I)I

    .line 231
    iget-object p1, p0, Lo/AuthenticationRequiredException$StateListAnimator;->c:Lo/BroadcastOptions;

    invoke-interface {p1}, Lo/BroadcastOptions;->d()V

    return-void
.end method
