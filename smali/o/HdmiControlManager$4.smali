.class Lo/HdmiControlManager$4;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HdmiControlManager;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ActivityRecognitionEvent;

.field final synthetic e:Lo/HdmiControlManager;


# direct methods
.method constructor <init>(Lo/HdmiControlManager;Lo/ActivityRecognitionEvent;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lo/HdmiControlManager$4;->e:Lo/HdmiControlManager;

    iput-object p2, p0, Lo/HdmiControlManager$4;->b:Lo/ActivityRecognitionEvent;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 118
    iget-object v0, p0, Lo/HdmiControlManager$4;->b:Lo/ActivityRecognitionEvent;

    invoke-virtual {v0}, Lo/ActivityRecognitionEvent;->c()V

    return-void
.end method
