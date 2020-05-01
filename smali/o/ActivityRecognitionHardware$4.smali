.class Lo/ActivityRecognitionHardware$4;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ActivityRecognitionHardware;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/ActivityRecognitionHardware;


# direct methods
.method constructor <init>(Lo/ActivityRecognitionHardware;Lo/BrightnessChangeEvent;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lo/ActivityRecognitionHardware$4;->b:Lo/ActivityRecognitionHardware;

    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 27
    invoke-static {p2}, Lo/ActivityRecognitionHardware$4;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lo/ActivityRecognitionHardware$4;->d()Lo/BrightnessChangeEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
