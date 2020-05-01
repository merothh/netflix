.class final Lcom/bugsnag/android/NativeInterface$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RemoteInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/NativeInterface;->notify(Ljava/lang/String;Ljava/lang/String;Lcom/bugsnag/android/Severity;[Ljava/lang/StackTraceElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bugsnag/android/Severity;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Severity;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/bugsnag/android/NativeInterface$4;->d:Lcom/bugsnag/android/Severity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/DevicePolicyCache;)V
    .locals 1

    .line 439
    invoke-virtual {p1}, Lo/DevicePolicyCache;->d()Lo/UiAutomationConnection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 441
    iget-object v0, p0, Lcom/bugsnag/android/NativeInterface$4;->d:Lcom/bugsnag/android/Severity;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p1, v0}, Lo/UiAutomationConnection;->b(Lcom/bugsnag/android/Severity;)V

    .line 444
    :cond_0
    invoke-virtual {p1}, Lo/UiAutomationConnection;->g()Lo/UiModeManager;

    move-result-object p1

    const-string v0, "c"

    invoke-virtual {p1, v0}, Lo/UiModeManager;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
