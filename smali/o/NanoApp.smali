.class public Lo/NanoApp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NanoAppInstanceInfo;


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:I

.field private final d:Lo/NanoAppInstanceInfo;

.field private final e:Z


# direct methods
.method public constructor <init>(IZLo/NanoAppInstanceInfo;Ljava/lang/Integer;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lo/NanoApp;->b:I

    .line 32
    iput-boolean p2, p0, Lo/NanoApp;->e:Z

    .line 33
    iput-object p3, p0, Lo/NanoApp;->d:Lo/NanoAppInstanceInfo;

    .line 34
    iput-object p4, p0, Lo/NanoApp;->a:Ljava/lang/Integer;

    return-void
.end method

.method private b(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;
    .locals 2

    .line 82
    iget-object v0, p0, Lo/NanoApp;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 90
    invoke-direct {p0, p1, p2}, Lo/NanoApp;->e(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object p1

    return-object p1

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid ImageTranscoderType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_2
    invoke-direct {p0, p1, p2}, Lo/NanoApp;->d(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object p1

    return-object p1
.end method

.method private c(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/NanoApp;->d:Lo/NanoAppInstanceInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    invoke-interface {v0, p1, p2}, Lo/NanoAppInstanceInfo;->createImageTranscoder(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object p1

    return-object p1
.end method

.method private d(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;
    .locals 2

    .line 68
    iget v0, p0, Lo/NanoApp;->b:I

    iget-boolean v1, p0, Lo/NanoApp;->e:Z

    invoke-static {v0, v1}, Lo/MeteringRectangle;->e(IZ)Lo/NanoAppInstanceInfo;

    move-result-object v0

    .line 70
    invoke-interface {v0, p1, p2}, Lo/NanoAppInstanceInfo;->createImageTranscoder(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object p1

    return-object p1
.end method

.method private e(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;
    .locals 2

    .line 75
    new-instance v0, Lo/NanoAppMessage;

    iget v1, p0, Lo/NanoApp;->b:I

    invoke-direct {v0, v1}, Lo/NanoAppMessage;-><init>(I)V

    .line 76
    invoke-virtual {v0, p1, p2}, Lo/NanoAppMessage;->createImageTranscoder(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createImageTranscoder(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Lo/NanoApp;->c(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0, p1, p2}, Lo/NanoApp;->b(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 47
    invoke-direct {p0, p1, p2}, Lo/NanoApp;->d(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 52
    invoke-direct {p0, p1, p2}, Lo/NanoApp;->e(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object v0

    :cond_2
    return-object v0
.end method
