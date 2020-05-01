.class Lo/SensorEventCallback$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ConfigurationBoundResourceCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SensorEventCallback;->c(Lo/SensorEventCallback$ActionBar;)Lo/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ConfigurationBoundResourceCache<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/SensorEventCallback$ActionBar;

.field final synthetic c:Lo/SensorEventCallback;


# direct methods
.method constructor <init>(Lo/SensorEventCallback;Lo/SensorEventCallback$ActionBar;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lo/SensorEventCallback$5;->c:Lo/SensorEventCallback;

    iput-object p2, p0, Lo/SensorEventCallback$5;->b:Lo/SensorEventCallback$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 234
    iget-object p1, p0, Lo/SensorEventCallback$5;->c:Lo/SensorEventCallback;

    iget-object v0, p0, Lo/SensorEventCallback$5;->b:Lo/SensorEventCallback$ActionBar;

    invoke-static {p1, v0}, Lo/SensorEventCallback;->e(Lo/SensorEventCallback;Lo/SensorEventCallback$ActionBar;)V

    return-void
.end method
