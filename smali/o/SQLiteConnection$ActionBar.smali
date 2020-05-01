.class Lo/SQLiteConnection$ActionBar;
.super Lo/SQLiteConstraintException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Lo/SQLiteConstraintException<",
        "TINFO;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lo/SQLiteConstraintException;-><init>()V

    return-void
.end method

.method public static d(Lo/SQLiteBindOrColumnIndexOutOfRangeException;Lo/SQLiteBindOrColumnIndexOutOfRangeException;)Lo/SQLiteConnection$ActionBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "-TINFO;>;",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException<",
            "-TINFO;>;)",
            "Lo/SQLiteConnection$ActionBar<",
            "TINFO;>;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#createInternal"

    .line 57
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 59
    :cond_0
    new-instance v0, Lo/SQLiteConnection$ActionBar;

    invoke-direct {v0}, Lo/SQLiteConnection$ActionBar;-><init>()V

    .line 60
    invoke-virtual {v0, p0}, Lo/SQLiteConnection$ActionBar;->e(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V

    .line 61
    invoke-virtual {v0, p1}, Lo/SQLiteConnection$ActionBar;->e(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)V

    .line 62
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 63
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-object v0
.end method
