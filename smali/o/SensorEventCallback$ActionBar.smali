.class Lo/SensorEventCallback$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SensorEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lo/SensorEventCallback$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SensorEventCallback$Activity<",
            "TK;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "TV;>;"
        }
    .end annotation
.end field

.field public d:I

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lo/CompatibilityInfo;Lo/SensorEventCallback$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo/CompatibilityInfo<",
            "TV;>;",
            "Lo/SensorEventCallback$Activity<",
            "TK;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/SensorEventCallback$ActionBar;->e:Ljava/lang/Object;

    .line 79
    invoke-static {p2}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object p1

    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CompatibilityInfo;

    iput-object p1, p0, Lo/SensorEventCallback$ActionBar;->c:Lo/CompatibilityInfo;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lo/SensorEventCallback$ActionBar;->d:I

    .line 81
    iput-boolean p1, p0, Lo/SensorEventCallback$ActionBar;->b:Z

    .line 82
    iput-object p3, p0, Lo/SensorEventCallback$ActionBar;->a:Lo/SensorEventCallback$Activity;

    return-void
.end method

.method static b(Ljava/lang/Object;Lo/CompatibilityInfo;Lo/SensorEventCallback$Activity;)Lo/SensorEventCallback$ActionBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lo/CompatibilityInfo<",
            "TV;>;",
            "Lo/SensorEventCallback$Activity<",
            "TK;>;)",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lo/SensorEventCallback$ActionBar;

    invoke-direct {v0, p0, p1, p2}, Lo/SensorEventCallback$ActionBar;-><init>(Ljava/lang/Object;Lo/CompatibilityInfo;Lo/SensorEventCallback$Activity;)V

    return-object v0
.end method
