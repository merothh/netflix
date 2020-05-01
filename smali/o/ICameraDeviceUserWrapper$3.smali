.class Lo/ICameraDeviceUserWrapper$3;
.super Lo/CloseableLock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ICameraDeviceUserWrapper;->n()Lo/BrightnessChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CloseableLock<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/ICameraDeviceUserWrapper;


# direct methods
.method constructor <init>(Lo/ICameraDeviceUserWrapper;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lo/ICameraDeviceUserWrapper$3;->e:Lo/ICameraDeviceUserWrapper;

    invoke-direct {p0}, Lo/CloseableLock;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lo/ICameraDeviceUserWrapper$3;->e:Lo/ICameraDeviceUserWrapper;

    invoke-static {v0, p1}, Lo/ICameraDeviceUserWrapper;->a(Lo/ICameraDeviceUserWrapper;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected c(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lo/ICameraDeviceUserWrapper$3;->e:Lo/ICameraDeviceUserWrapper;

    invoke-virtual {v0, p1, p2}, Lo/ICameraDeviceUserWrapper;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method protected e()V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/ICameraDeviceUserWrapper$3;->e:Lo/ICameraDeviceUserWrapper;

    invoke-static {v0}, Lo/ICameraDeviceUserWrapper;->d(Lo/ICameraDeviceUserWrapper;)V

    return-void
.end method

.method protected e(F)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/ICameraDeviceUserWrapper$3;->e:Lo/ICameraDeviceUserWrapper;

    invoke-static {v0, p1}, Lo/ICameraDeviceUserWrapper;->a(Lo/ICameraDeviceUserWrapper;F)Z

    return-void
.end method
