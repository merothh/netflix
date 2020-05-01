.class final Lo/Sensor$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Sensor;->c(Lo/SensorEventCallback;Lo/SerialPort;)Lo/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BiometricConstants<",
        "Lo/MacAuthenticatedInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/SerialPort;


# direct methods
.method constructor <init>(Lo/SerialPort;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/Sensor$4;->b:Lo/SerialPort;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 34
    iget-object v0, p0, Lo/Sensor$4;->b:Lo/SerialPort;

    invoke-interface {v0}, Lo/SerialPort;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Sensor$4;->b:Lo/SerialPort;

    invoke-interface {v0}, Lo/SerialPort;->e()V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lo/MacAuthenticatedInputStream;

    invoke-virtual {p0, p1}, Lo/Sensor$4;->c(Lo/MacAuthenticatedInputStream;)V

    return-void
.end method

.method public c(Lo/MacAuthenticatedInputStream;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lo/Sensor$4;->b:Lo/SerialPort;

    invoke-interface {v0, p1}, Lo/SerialPort;->d(Lo/MacAuthenticatedInputStream;)V

    return-void
.end method
