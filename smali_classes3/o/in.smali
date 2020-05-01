.class public Lo/in;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bY$ActionBar;


# instance fields
.field private final c:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lo/in;->c:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 18
    iget-object v0, p0, Lo/in;->c:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .line 28
    iget-object v0, p0, Lo/in;->c:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/in;->c:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 23
    iget-object v0, p0, Lo/in;->c:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result v0

    return v0
.end method

.method public e()J
    .locals 2

    .line 33
    iget-object v0, p0, Lo/in;->c:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v0

    return-wide v0
.end method
