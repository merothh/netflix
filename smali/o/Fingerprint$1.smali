.class Lo/Fingerprint$1;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fingerprint;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Fingerprint;

.field final synthetic e:Lo/ActivityRecognitionEvent;


# direct methods
.method constructor <init>(Lo/Fingerprint;Lo/ActivityRecognitionEvent;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/Fingerprint$1;->d:Lo/Fingerprint;

    iput-object p2, p0, Lo/Fingerprint$1;->e:Lo/ActivityRecognitionEvent;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 70
    iget-object v0, p0, Lo/Fingerprint$1;->e:Lo/ActivityRecognitionEvent;

    invoke-virtual {v0}, Lo/ActivityRecognitionEvent;->c()V

    return-void
.end method
