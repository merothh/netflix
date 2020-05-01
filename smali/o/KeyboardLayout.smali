.class public Lo/KeyboardLayout;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final d:Lo/ContextHubClient;

.field private final e:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/InputDeviceIdentifier;Lo/ContextHubClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "TT;>;",
            "Lo/ContextHubClient;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InputDeviceIdentifier;

    iput-object p1, p0, Lo/KeyboardLayout;->e:Lo/InputDeviceIdentifier;

    .line 26
    iput-object p2, p0, Lo/KeyboardLayout;->d:Lo/ContextHubClient;

    return-void
.end method

.method static synthetic a(Lo/KeyboardLayout;)Lo/ContextHubClient;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/KeyboardLayout;->d:Lo/ContextHubClient;

    return-object p0
.end method

.method static synthetic e(Lo/KeyboardLayout;)Lo/InputDeviceIdentifier;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/KeyboardLayout;->e:Lo/InputDeviceIdentifier;

    return-object p0
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "TT;>;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v6

    .line 32
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v7

    .line 33
    new-instance v10, Lo/KeyboardLayout$1;

    const-string v4, "BackgroundThreadHandoffProducer"

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v5, v7

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lo/KeyboardLayout$1;-><init>(Lo/KeyboardLayout;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;Lo/InputManagerInternal;Ljava/lang/String;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    .line 49
    new-instance p1, Lo/KeyboardLayout$4;

    invoke-direct {p1, p0, v10}, Lo/KeyboardLayout$4;-><init>(Lo/KeyboardLayout;Lo/ActivityRecognitionEvent;)V

    invoke-interface {p2, p1}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    .line 57
    iget-object p1, p0, Lo/KeyboardLayout;->d:Lo/ContextHubClient;

    invoke-virtual {p1, v10}, Lo/ContextHubClient;->b(Ljava/lang/Runnable;)V

    return-void
.end method
