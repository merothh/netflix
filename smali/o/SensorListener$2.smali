.class final Lo/SensorListener$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SensorListener;->d(Lo/SensorEventCallback;Lo/SerialPort;)Lo/SensorManager;
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
    iput-object p1, p0, Lo/SensorListener$2;->b:Lo/SerialPort;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 34
    iget-object v0, p0, Lo/SensorListener$2;->b:Lo/SerialPort;

    invoke-interface {v0}, Lo/SerialPort;->d()V

    return-void
.end method

.method public a(Lo/MacAuthenticatedInputStream;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lo/SensorListener$2;->b:Lo/SerialPort;

    invoke-interface {v0, p1}, Lo/SerialPort;->e(Lo/MacAuthenticatedInputStream;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 29
    iget-object v0, p0, Lo/SensorListener$2;->b:Lo/SerialPort;

    invoke-interface {v0}, Lo/SerialPort;->c()V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lo/MacAuthenticatedInputStream;

    invoke-virtual {p0, p1}, Lo/SensorListener$2;->a(Lo/MacAuthenticatedInputStream;)V

    return-void
.end method
