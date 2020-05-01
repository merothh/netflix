.class Lo/KeyboardLayout$1;
.super Lo/ActivityRecognitionEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KeyboardLayout;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ActivityRecognitionEvent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/InputManagerInternal;

.field final synthetic b:Lo/BrightnessChangeEvent;

.field final synthetic c:Lo/HdmiTimerRecordSources;

.field final synthetic e:Ljava/lang/String;

.field final synthetic g:Lo/KeyboardLayout;


# direct methods
.method constructor <init>(Lo/KeyboardLayout;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;Lo/InputManagerInternal;Ljava/lang/String;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/KeyboardLayout$1;->g:Lo/KeyboardLayout;

    iput-object p6, p0, Lo/KeyboardLayout$1;->a:Lo/InputManagerInternal;

    iput-object p7, p0, Lo/KeyboardLayout$1;->e:Ljava/lang/String;

    iput-object p8, p0, Lo/KeyboardLayout$1;->b:Lo/BrightnessChangeEvent;

    iput-object p9, p0, Lo/KeyboardLayout$1;->c:Lo/HdmiTimerRecordSources;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/ActivityRecognitionEvent;-><init>(Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    iget-object p1, p0, Lo/KeyboardLayout$1;->a:Lo/InputManagerInternal;

    iget-object v0, p0, Lo/KeyboardLayout$1;->e:Ljava/lang/String;

    const-string v1, "BackgroundThreadHandoffProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    iget-object p1, p0, Lo/KeyboardLayout$1;->g:Lo/KeyboardLayout;

    invoke-static {p1}, Lo/KeyboardLayout;->e(Lo/KeyboardLayout;)Lo/InputDeviceIdentifier;

    move-result-object p1

    iget-object v0, p0, Lo/KeyboardLayout$1;->b:Lo/BrightnessChangeEvent;

    iget-object v1, p0, Lo/KeyboardLayout$1;->c:Lo/HdmiTimerRecordSources;

    invoke-interface {p1, v0, v1}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
