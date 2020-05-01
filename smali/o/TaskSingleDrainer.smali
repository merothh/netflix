.class public abstract Lo/TaskSingleDrainer;
.super Lo/CloseableLock;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lo/CloseableLock<",
        "TI;>;"
    }
.end annotation


# instance fields
.field private final e:Lo/BrightnessChangeEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BrightnessChangeEvent<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/BrightnessChangeEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "TO;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lo/CloseableLock;-><init>()V

    .line 17
    iput-object p1, p0, Lo/TaskSingleDrainer;->e:Lo/BrightnessChangeEvent;

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lo/TaskSingleDrainer;->e:Lo/BrightnessChangeEvent;

    invoke-interface {v0, p1}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Lo/BrightnessChangeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BrightnessChangeEvent<",
            "TO;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lo/TaskSingleDrainer;->e:Lo/BrightnessChangeEvent;

    return-object v0
.end method

.method protected e()V
    .locals 1

    .line 31
    iget-object v0, p0, Lo/TaskSingleDrainer;->e:Lo/BrightnessChangeEvent;

    invoke-interface {v0}, Lo/BrightnessChangeEvent;->c()V

    return-void
.end method

.method protected e(F)V
    .locals 1

    .line 36
    iget-object v0, p0, Lo/TaskSingleDrainer;->e:Lo/BrightnessChangeEvent;

    invoke-interface {v0, p1}, Lo/BrightnessChangeEvent;->c(F)V

    return-void
.end method
