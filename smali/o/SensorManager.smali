.class public Lo/SensorManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TriggerEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/TriggerEventListener<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final c:Lo/BiometricConstants;

.field private final e:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/TriggerEventListener;Lo/BiometricConstants;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TriggerEventListener<",
            "TK;TV;>;",
            "Lo/BiometricConstants;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/SensorManager;->e:Lo/TriggerEventListener;

    .line 20
    iput-object p2, p0, Lo/SensorManager;->c:Lo/BiometricConstants;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lo/CompatibilityInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/CompatibilityInfo<",
            "TV;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/SensorManager;->e:Lo/TriggerEventListener;

    invoke-interface {v0, p1}, Lo/TriggerEventListener;->a(Ljava/lang/Object;)Lo/CompatibilityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    iget-object p1, p0, Lo/SensorManager;->c:Lo/BiometricConstants;

    invoke-interface {p1}, Lo/BiometricConstants;->b()V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lo/SensorManager;->c:Lo/BiometricConstants;

    invoke-interface {v1, p1}, Lo/BiometricConstants;->c(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;Lo/CompatibilityInfo;)Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo/CompatibilityInfo<",
            "TV;>;)",
            "Lo/CompatibilityInfo<",
            "TV;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lo/SensorManager;->c:Lo/BiometricConstants;

    invoke-interface {v0}, Lo/BiometricConstants;->a()V

    .line 37
    iget-object v0, p0, Lo/SensorManager;->e:Lo/TriggerEventListener;

    invoke-interface {v0, p1, p2}, Lo/TriggerEventListener;->a(Ljava/lang/Object;Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method
