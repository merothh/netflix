.class public Lo/CursorToBulkCursorAdaptor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile c:Z = false

.field private static final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static e:Lo/DataSetObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lo/CursorToBulkCursorAdaptor;

    sput-object v0, Lo/CursorToBulkCursorAdaptor;->d:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lo/CursorWindow;)V
    .locals 1

    .line 93
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fresco.initializeDrawee"

    .line 94
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 96
    :cond_0
    new-instance v0, Lo/DataSetObservable;

    invoke-direct {v0, p0, p1}, Lo/DataSetObservable;-><init>(Landroid/content/Context;Lo/CursorWindow;)V

    sput-object v0, Lo/CursorToBulkCursorAdaptor;->e:Lo/DataSetObservable;

    .line 98
    sget-object p0, Lo/CursorToBulkCursorAdaptor;->e:Lo/DataSetObservable;

    invoke-static {p0}, Lo/DdmHandleViewDebug;->b(Lo/UserInfo;)V

    .line 99
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 100
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 132
    sget-boolean v0, Lo/CursorToBulkCursorAdaptor;->c:Z

    return v0
.end method

.method public static c()Lo/CallbackProxies;
    .locals 1

    .line 115
    invoke-static {}, Lo/CallbackProxies;->b()Lo/CallbackProxies;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lo/CursorWindowAllocationException;
    .locals 1

    .line 111
    sget-object v0, Lo/CursorToBulkCursorAdaptor;->e:Lo/DataSetObservable;

    invoke-virtual {v0}, Lo/DataSetObservable;->b()Lo/CursorWindowAllocationException;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lo/DngCreator;
    .locals 1

    .line 120
    invoke-static {}, Lo/CursorToBulkCursorAdaptor;->c()Lo/CallbackProxies;

    move-result-object v0

    invoke-virtual {v0}, Lo/CallbackProxies;->f()Lo/DngCreator;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Lo/CameraDeviceImpl;Lo/CursorWindow;)V
    .locals 2

    .line 53
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fresco#initialize"

    .line 54
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 56
    :cond_0
    sget-boolean v0, Lo/CursorToBulkCursorAdaptor;->c:Z

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lo/CursorToBulkCursorAdaptor;->d:Ljava/lang/Class;

    const-string v1, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"

    invoke-static {v0, v1}, Lo/DexMetadataHelper;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Lo/CursorToBulkCursorAdaptor;->c:Z

    .line 65
    :goto_0
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Fresco.initialize->SoLoader.init"

    .line 66
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->a(Landroid/content/Context;I)V

    .line 69
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-static {}, Lo/GeofenceHardwareService;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p1, :cond_4

    .line 81
    invoke-static {p0}, Lo/CallbackProxies;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 83
    :cond_4
    invoke-static {p1}, Lo/CallbackProxies;->a(Lo/CameraDeviceImpl;)V

    .line 85
    :goto_1
    invoke-static {p0, p2}, Lo/CursorToBulkCursorAdaptor;->a(Landroid/content/Context;Lo/CursorWindow;)V

    .line 86
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 87
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-void

    :catch_0
    move-exception p0

    .line 73
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 74
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 76
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not initialize SoLoader"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
