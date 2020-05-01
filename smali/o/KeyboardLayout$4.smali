.class Lo/KeyboardLayout$4;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KeyboardLayout;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/KeyboardLayout;

.field final synthetic e:Lo/ActivityRecognitionEvent;


# direct methods
.method constructor <init>(Lo/KeyboardLayout;Lo/ActivityRecognitionEvent;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/KeyboardLayout$4;->d:Lo/KeyboardLayout;

    iput-object p2, p0, Lo/KeyboardLayout$4;->e:Lo/ActivityRecognitionEvent;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 53
    iget-object v0, p0, Lo/KeyboardLayout$4;->e:Lo/ActivityRecognitionEvent;

    invoke-virtual {v0}, Lo/ActivityRecognitionEvent;->c()V

    .line 54
    iget-object v0, p0, Lo/KeyboardLayout$4;->d:Lo/KeyboardLayout;

    invoke-static {v0}, Lo/KeyboardLayout;->a(Lo/KeyboardLayout;)Lo/ContextHubClient;

    move-result-object v0

    iget-object v1, p0, Lo/KeyboardLayout$4;->e:Lo/ActivityRecognitionEvent;

    invoke-virtual {v0, v1}, Lo/ContextHubClient;->a(Ljava/lang/Runnable;)V

    return-void
.end method
