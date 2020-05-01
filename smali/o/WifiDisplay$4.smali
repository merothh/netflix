.class Lo/WifiDisplay$4;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WifiDisplay;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/WifiDisplay;

.field final synthetic c:Lo/ActivityRecognitionEvent;


# direct methods
.method constructor <init>(Lo/WifiDisplay;Lo/ActivityRecognitionEvent;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lo/WifiDisplay$4;->b:Lo/WifiDisplay;

    iput-object p2, p0, Lo/WifiDisplay$4;->c:Lo/ActivityRecognitionEvent;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 118
    iget-object v0, p0, Lo/WifiDisplay$4;->c:Lo/ActivityRecognitionEvent;

    invoke-virtual {v0}, Lo/ActivityRecognitionEvent;->c()V

    return-void
.end method
